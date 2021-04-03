/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.process;

import java.sql.*;
import java.util.logging.*;

import org.adempiere.utils.Miscfunc;
import org.compiere.model.*;
import org.compiere.util.*;

/**
 * 	Create PO from Requisition 
 *	
 *	
 *  @author Jorg Janke
 *  @version $Id: RequisitionPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class RequisitionPOCreate extends SvrProcess
{
	/** Org					*/
	private int			p_AD_Org_ID = 0;
	/** Warehouse			*/
	private int			p_M_Warehouse_ID = 0;
	/**	Doc Date From		*/
	private Timestamp	p_DateDoc_From;
	/**	Doc Date To			*/
	private Timestamp	p_DateDoc_To;
	/**	Doc Date From		*/
	private Timestamp	p_DateRequired_From;
	/**	Doc Date To			*/
	private Timestamp	p_DateRequired_To;
	/** Priority			*/
	private String		p_PriorityRule = null;
	/** User				*/
	private int			p_AD_User_ID = 0;
	/** Product				*/
	private int			p_M_Product_ID = 0;
	/** Requisition			*/
	private int 		p_M_Requisition_ID = 0;

	/** Consolidate			*/
	private boolean		p_ConsolidateDocument = false;

	/** Order				*/
	private MOrder		m_order = null;
	/** Order Line			*/
	private MOrderLine	m_orderLine = null;

	// region Roca

	private boolean isComplete = false;

	// dREHER, agregue como parametro el BP para los casos en q se hagan los OC
	// consolidadas, todos las lineas al mismo BP
	private int p_BPartner_ID = 0;
	
	private int p_LAR_Sucursal_ID = 0;
	
	private int AD_User_ID = 0; // es el usuario de la requisicion, avisar cuando se creo orden de compra (SE CONFIRMO LA REQUISICION)

	private MRequisition reqM = null;

	// endregion Roca

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para[i].getParameterAsInt();
			else if (name.equals("DateDoc"))
			{
				p_DateDoc_From = (Timestamp)para[i].getParameter();
				p_DateDoc_To = (Timestamp)para[i].getParameter_To();
			}
			else if (name.equals("DateRequired"))
			{
				p_DateRequired_From = (Timestamp)para[i].getParameter();
				p_DateRequired_To = (Timestamp)para[i].getParameter_To();
			}
			else if (name.equals("PriorityRule"))
				p_PriorityRule = (String)para[i].getParameter();
			else if (name.equals("AD_User_ID"))
				p_AD_User_ID = para[i].getParameterAsInt();
			else if (name.equals("M_Product_ID"))
				p_M_Product_ID = para[i].getParameterAsInt();
			else if (name.equals("M_Requisition_ID"))
				p_M_Requisition_ID = para[i].getParameterAsInt();
			else if (name.equals("ConsolidateDocument"))
				p_ConsolidateDocument = "Y".equals(para[i].getParameter());
			else if (name.equals("C_BPartner"))
				p_BPartner_ID = para[i].getParameterAsInt();
			else if (name.equals("LAR_Sucursal_ID"))
				p_LAR_Sucursal_ID = para[i].getParameterAsInt();
			else if (name.equals("IsComplete"))
				isComplete = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare
	
	/**
	 * 	Process
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		// dREHER, asegurar la organizacion
		if(p_AD_Org_ID==0 && Env.getAD_Org_ID(getCtx())!=0)
			p_AD_Org_ID = Env.getAD_Org_ID(getCtx());
		else if(p_AD_Org_ID==0 && Env.getAD_Org_ID(getCtx())==0)	
				return "Debe ingresar la Organización o loguearse en una!";

		//	Specific
		if (p_M_Requisition_ID != 0)
		{
			log.info("M_Requisition_ID=" + p_M_Requisition_ID);
			MRequisition req = new MRequisition(getCtx(), p_M_Requisition_ID, get_TrxName());
			if (!MRequisition.DOCSTATUS_Completed.equals(req.getDocStatus()))
				throw new AdempiereUserError("@DocStatus@ = " + req.getDocStatus());
			// region Roca
			log.info("Verifica si ya fue aprobada anteriormente, proceso RequisitionPOCreate...");
			
			// dREHER, la aprobacion la hago desde esta ventana, cuando se creo la OC para que se notifique
			// al usuario que creo la Requisicion, no antes...
			if(req.isApproved())
				throw new AdempiereUserError("@IsApproved@ = "
						+ req.isApproved());
			
			log.info("Carga usuario y req, proceso RequisitionPOCreate...");
			
			// dREHER, guardo el usuario para la notificacion de la aceptacion de la requisicion y la requisicion en si...
			AD_User_ID = req.getAD_User_ID();
			p_AD_User_ID = req.getAD_User_ID();
			reqM = req;
			
			log.info("Procesa las lineas, proceso RequisitionPOCreate...");
			// endregion Roca
			MRequisitionLine[] lines = req.getLines();
			for (int i = 0; i < lines.length; i++)
			{
				if (lines[i].getC_OrderLine_ID() == 0)
					process (lines[i]);
			}
			closeOrder();
			return "";
		}	//	single Requisition
		
		//	
		log.info("AD_Org_ID=" + p_AD_Org_ID
			+ ", M_Warehouse_ID=" + p_M_Warehouse_ID
			+ ", DateDoc=" + p_DateDoc_From + "/" + p_DateDoc_To
			+ ", DateRequired=" + p_DateRequired_From + "/" + p_DateRequired_To
			+ ", PriorityRule=" + p_PriorityRule
			+ ", AD_User_ID=" + p_AD_User_ID
			+ ", M_Product_ID=" + p_M_Product_ID
			+ ", ConsolidateDocument" + p_ConsolidateDocument);
		
		StringBuffer sql = new StringBuffer("SELECT * FROM M_RequisitionLine rl ")
			.append("WHERE rl.C_OrderLine_ID IS NULL");
		if (p_AD_Org_ID != 0)
			sql.append(" AND AD_Org_ID=?");
		if (p_M_Product_ID != 0)
			sql.append(" AND M_Product_ID=?");
		//	Requisition Header
		sql.append(" AND EXISTS (SELECT * FROM M_Requisition r WHERE rl.M_Requisition_ID=r.M_Requisition_ID")
			.append(" AND r.DocStatus='CO'");
		if (p_M_Warehouse_ID != 0)
			sql.append(" AND r.M_Warehouse_ID=?");
		//
		if (p_DateDoc_From != null && p_DateDoc_To != null)
			sql.append(" AND r.DateDoc BETWEEN ? AND ?");
		else if (p_DateDoc_From != null)
			sql.append(" AND r.DateDoc => ?");
		else if (p_DateDoc_To != null)
			sql.append(" AND r.DateDoc <= ?");
		//
		if (p_DateRequired_From != null && p_DateRequired_To != null)
			sql.append(" AND r.DateRequired BETWEEN ? AND ?");
		else if (p_DateRequired_From != null)
			sql.append(" AND r.DateRequired => ?");
		else if (p_DateRequired_To != null)
			sql.append(" AND r.DateRequired <= ?");
		//
		if (p_PriorityRule != null)
			sql.append(" AND r.PriorityRule => ?");
		if (p_AD_User_ID != 0)
			sql.append(" AND r.AD_User_ID=?");
		//
		sql.append(") ORDER BY ");
		if (!p_ConsolidateDocument)
			sql.append("M_Requisition_ID, ");
		sql.append("M_Product_ID, C_Charge_ID, M_AttributeSetInstance_ID");
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			int index = 1;
			if (p_AD_Org_ID != 0)
				pstmt.setInt (index++, p_AD_Org_ID);
			if (p_M_Product_ID != 0)
				pstmt.setInt (index++, p_M_Product_ID);
			if (p_M_Warehouse_ID != 0)
				pstmt.setInt (index++, p_M_Warehouse_ID);
			if (p_DateDoc_From != null && p_DateDoc_To != null)
			{
				pstmt.setTimestamp(index++, p_DateDoc_From);
				pstmt.setTimestamp(index++, p_DateDoc_To);
			}
			else if (p_DateDoc_From != null)
				pstmt.setTimestamp(index++, p_DateDoc_From);
			else if (p_DateDoc_To != null)
				pstmt.setTimestamp(index++, p_DateDoc_To);
			if (p_DateRequired_From != null && p_DateRequired_To != null)
			{
				pstmt.setTimestamp(index++, p_DateRequired_From);
				pstmt.setTimestamp(index++, p_DateRequired_To);
			}
			else if (p_DateRequired_From != null)
				pstmt.setTimestamp(index++, p_DateRequired_From);
			else if (p_DateRequired_To != null)
				pstmt.setTimestamp(index++, p_DateRequired_To);
			if (p_PriorityRule != null)
				pstmt.setString(index++, p_PriorityRule);
			if (p_AD_User_ID != 0)
				pstmt.setInt (index++, p_AD_User_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				process (new MRequisitionLine (getCtx(), rs, get_TrxName()));
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql.toString(), e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		closeOrder();
		return "";
	}	//	doit
	
	private int 		m_M_Requisition_ID = 0;
	private int 		m_M_Product_ID = 0;
	private int			m_M_AttributeSetInstance_ID = 0;
	/** BPartner				*/
	private MBPartner	m_bpartner = null;
	
	/**
	 * 	Process Line
	 *	@param rLine request line
	 * 	@throws Exception
	 */
	private void process (MRequisitionLine rLine) throws Exception
	{
		if (rLine.getM_Product_ID() == 0 && rLine.getC_Charge_ID() == 0)
		{
			log.warning("Ignored Line" + rLine.getLine() 
				+ " " + rLine.getDescription()
				+ " - " + rLine.getLineNetAmt());
			return;
		}
		
		if (!p_ConsolidateDocument
			&& rLine.getM_Requisition_ID() != m_M_Requisition_ID)
			closeOrder();
		
		// en caso de que la requisicion no tenga AD_Org_ID, le asigno la del
		// parametro
		if(rLine.getAD_Org_ID()==0)
			rLine.setAD_Org_ID(p_AD_Org_ID);

		if (m_orderLine == null
			|| rLine.getM_Product_ID() != m_M_Product_ID
			|| rLine.getM_AttributeSetInstance_ID() != m_M_AttributeSetInstance_ID
			|| rLine.getC_Charge_ID() != 0)		//	single line per charge
			newLine(rLine);

		//	Update Order Line

		// region Roca
		// dREHER, trae la descripcion desde la requisicion
		m_orderLine.setDescription(rLine.getDescription());
		m_orderLine.setAD_Org_ID(p_AD_Org_ID);
		
		Double tasaIva = Double.parseDouble(Miscfunc.ValueFromSystem("TasaIVADefault", "21.00", true));
		
		int C_Tax_ID = DB.getSQLValue(get_TrxName(), "SELECT C_Tax_ID FROM C_Tax WHERE IsActive='Y' AND AD_Client_ID=" + Env.getAD_Client_ID(getCtx()) +
				" AND rate=" + tasaIva);
		if(C_Tax_ID > -1)
			m_orderLine.setC_Tax_ID(C_Tax_ID);
		
		m_orderLine.setPriceActual(rLine.getPriceActual());
		// endregion Roca

		m_orderLine.setQty(m_orderLine.getQtyOrdered().add(rLine.getQty()));
		//	Update Requisition Line
		rLine.setC_OrderLine_ID(m_orderLine.getC_OrderLine_ID());
		if (!rLine.save())
			throw new AdempiereSystemError("Cannot update Request Line");
	}	//	process
	
	/**
	 * 	Create new Order
	 *	@param rLine request line
	 *	@param C_BPartner_ID b.partner
	 * 	@throws Exception
	 */
	private void newOrder(MRequisitionLine rLine, int C_BPartner_ID) throws Exception
	{
		if (m_order != null)
			closeOrder();
		//	BPartner
		if (m_bpartner == null || C_BPartner_ID != m_bpartner.getC_BPartner_ID())
			m_bpartner = new MBPartner (getCtx(), C_BPartner_ID, null);

		//	Order
		m_order = new MOrder(getCtx(), 0, get_TrxName());
		m_order.setIsSOTrx(false);
		m_order.setC_DocTypeTarget_ID();
		m_order.setBPartner(m_bpartner);
		m_order.setM_PriceList_ID(rLine.getParent().getM_PriceList_ID());
		//	default po document type
		if (!p_ConsolidateDocument)
			m_order.setDescription(Msg.getElement(getCtx(), "M_Requisition_ID") 
				+ ": " + rLine.getParent().getDocumentNo());
		// region Roca

		//Added by WG
		m_order.set_ValueOfColumn("LAR_Sucursal_ID", p_LAR_Sucursal_ID);
		// default po document type

		// dREHER, siempre guardar este numero
		// original -->> if (!p_ConsolidateDocument)

		m_order.setDescription(Msg.getElement(getCtx(), "M_Requisition_ID")
				+ ": " + rLine.getParent().getDocumentNo());

		// endregion Roca

		//	Prepare Save
		m_M_Requisition_ID = rLine.getM_Requisition_ID();

		// region Roca
		m_order.setM_Warehouse_ID(rLine.getParent().getM_Warehouse_ID());
		
		// Si eligio una Organizacion, setear la correspondiente
		if (p_AD_Org_ID != 0)
			m_order.setAD_Org_ID(p_AD_Org_ID);
		
		// setear comprador desde la requisicion
		// si no le llega como parametro del proceso
		int AD_User_ID = rLine.getParent().getAD_User_ID();
		if(p_AD_User_ID > 0)
				AD_User_ID = p_AD_User_ID;
		m_order.setSalesRep_ID(AD_User_ID);
		
		// si eligio sucursal, setear la correspondiente, sino tomarla desde la req
		if (p_LAR_Sucursal_ID != 0)
			m_order.setLAR_Sucursal_ID(p_LAR_Sucursal_ID);
		else
			m_order.setLAR_Sucursal_ID(Integer.parseInt(rLine.getParent().get_ValueAsString("LAR_Sucursal_ID")));
		
		log.info("Va a guardar la Orden generada!");
		// endregion Roca

		if (!m_order.save())
			throw new AdempiereSystemError("Cannot save Order");
	}	//	newOrder

	/**
	 * 	Close Order
	 * 	@throws Exception
	 */
	private void closeOrder() throws Exception
	{
		if (m_orderLine != null)
		{
			if (!m_orderLine.save())
				throw new AdempiereSystemError("Cannot update Order Line");
		}
		if (m_order != null)
		{
			m_order.load(get_TrxName());
			addLog(0, null, m_order.getGrandTotal(), m_order.getDocumentNo());

			// region Roca
			reqM.setIsApproved(true);
			reqM.save(get_TrxName());
			
			log.info("Creo O.C. apruebo la requisicion ID=" + reqM.getM_Requisition_ID());
			
			// commit();
			
			// Notificar al usuario que la creo
			if(AD_User_ID > 0){
				MUser user = new MUser(Env.getCtx(), AD_User_ID, get_TrxName());
				int C_BPartner_ID = user.getC_BPartner_ID();
				
				Miscfunc.SendGenericNote("Req # " + reqM.getDocumentNo() + " ha sido aprobada!", 
						"Se creo la O.C. # " + m_order.getDocumentNo() + "\nFecha=" + Miscfunc.FechaDMALocale(m_order.getDateOrdered()), 
						C_BPartner_ID , 
						-1, 
						AD_User_ID, 
						user.getName());
				
				log.info("Creo nota para el usuario " + user.getName());
				
			}
			
			String message = "Se creo la Orden de Compra # <b>" + m_order.getDocumentNo() + "</b><br>";
			String result = "??";
			if(!isComplete){

				if(Miscfunc.confirm("Completa Orden de Compra? - Documento # " + m_order.getDocumentNo() + " - Total " + m_order.getGrandTotal())){
					result = m_order.completeIt();
					m_order.save(get_TrxName());
				}
				
			}else{
				log.info("Mando a completar la Orden sin preguntar!");
				
				result = m_order.completeIt();
				m_order.save(get_TrxName());
			}

			if(result.equals(DocAction.ACTION_Invalidate))
				message += " Quedo en estado NO VALIDO!";
			else if(result.equals(DocAction.ACTION_Prepare))
				message += " Quedo en estado Preparada!";
			else if(result.equals(DocAction.ACTION_Complete))
				message += " Quedo en estado Completa!";
			else
				message += " Quedo en estado <b>" + result;
			
			Miscfunc.ShowMessage(message);

			// endregion Roca
		}
		m_order = null;
		m_orderLine = null;
	}	//	closeOrder

	
	/**
	 * 	New Order Line (different Product)
	 *	@param rLine request line
	 * 	@throws Exception
	 */
	private void newLine(MRequisitionLine rLine) throws Exception
	{
		if (m_orderLine != null)
			if (!m_orderLine.save())
				throw new AdempiereSystemError("Cannot update Order Line");
		m_orderLine = null;
		MProduct product = null;

		//	Get Business Partner
		int C_BPartner_ID = rLine.getC_BPartner_ID();

		
		 // dREHER, igualar BP, asi todos salen con la misma, se envio como parametro el ID del BP 
		 if(p_ConsolidateDocument && p_BPartner_ID != 0) 
			 C_BPartner_ID = p_BPartner_ID; 
		
		if (C_BPartner_ID != 0)
			;
		else if (rLine.getC_Charge_ID() != 0)
		{
			MCharge charge = MCharge.get(getCtx(), rLine.getC_Charge_ID());
			C_BPartner_ID = charge.getC_BPartner_ID();
			if (C_BPartner_ID == 0)
				throw new AdempiereUserError("No Vendor for Charge " + charge.getName());
		}
		else
		{
			//	Find Vendor from Produt
			product = MProduct.get(getCtx(), rLine.getM_Product_ID());
			MProductPO[] ppos = MProductPO.getOfProduct(getCtx(), product.getM_Product_ID(), null);
			for (int i = 0; i < ppos.length; i++)
			{
				if (ppos[i].isCurrentVendor() && ppos[i].getC_BPartner_ID() != 0)
				{
					C_BPartner_ID = ppos[i].getC_BPartner_ID();
					break;
				}
			}
			if (C_BPartner_ID == 0 && ppos.length > 0)
				C_BPartner_ID = ppos[0].getC_BPartner_ID();
			if (C_BPartner_ID == 0)
				throw new AdempiereUserError("No Vendor for " + product.getName());
		}
		// dREHER, si es consolidado fuerzo a vuelva a leer el producto
		if(p_ConsolidateDocument) 
			product = MProduct.get(getCtx(),
			rLine.getM_Product_ID());
		//	New Order - Different Vendor
		if (m_order == null 
			|| m_order.getC_BPartner_ID() != C_BPartner_ID)
			newOrder(rLine, C_BPartner_ID);
		
		
		//	No Order Line
		m_orderLine = new MOrderLine(m_order);
		if (product != null)
		{
			m_orderLine.setProduct(product);
			m_orderLine.setM_AttributeSetInstance_ID(rLine.getM_AttributeSetInstance_ID());
		}
		else
		{
			m_orderLine.setC_Charge_ID(rLine.getC_Charge_ID());
			m_orderLine.setPriceActual(rLine.getPriceActual());
		}
		m_orderLine.setAD_Org_ID(rLine.getAD_Org_ID());
				
		
		//	Prepare Save
		m_M_Product_ID = rLine.getM_Product_ID();
		m_M_AttributeSetInstance_ID = rLine.getM_AttributeSetInstance_ID();

		// dREHER, por las dudas, debe tener una unidad de medida de compra
		if (m_orderLine.getC_UOM_ID() == 0) {
			product = MProduct.get(getCtx(), m_M_Product_ID);
			int C_UOM_ID = product.getC_UOM_ID();
			m_orderLine.setC_UOM_ID(C_UOM_ID);
		}

		log.info("Guardo la linea de la orden!");
		if (!m_orderLine.save())
			throw new AdempiereSystemError("Cannot save Order Line");
	}	//	newLine
	
}	//	RequisitionPOCreate
