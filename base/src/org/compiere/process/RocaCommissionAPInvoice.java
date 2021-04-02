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

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.model.MLARSucursal;
import org.adempiere.process.Comision;
import org.adempiere.utils.Misc;
import org.adempiere.utils.Miscfunc;
import org.compiere.model.MBPartner;
import org.compiere.model.MFINBPartnerCredit;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MSequence;
import org.compiere.model.MVIVCasa;
import org.compiere.model.X_LAR_EmpleadoDeSucursal;
import org.compiere.util.AdempiereSystemError;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * Create AP Invoices for Commission
 * 
 * @author Jorg Janke
 * @version $Id: CommissionAPInvoice.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 * 
 *          Modificado para funcionar con la logica de Roca, para cada venta
 *          llamar el proceso que invocara a la clase Comision, la cual generara
 *          la factura el BP segun la logica establecida en la tabla
 *          "c_bp_salesrep_comisiones".
 * 
 *          dREHER jorge.dreher@gmail.com
 */
public class RocaCommissionAPInvoice extends SvrProcess {

	private int p_C_BPartner_ID = 0; // obligatorio
	private BigDecimal p_montoVenta = new BigDecimal(0); // obligatorio
	private BigDecimal p_metros = new BigDecimal(0); // obligatorio
	private int p_C_Invoice_ID = 0; // no obligatorio
	private int p_C_Order_ID = 0; // obligatorio
	private boolean p_isContado = true; // obligatorio
	private Boolean p_complete = false; // obligatorio

	/**
	 * Prepare - e.g., get Parameters.
	 */
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();
			// System.out.println("Param:" + i + ", " + name);

			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = ((BigDecimal) para[i].getParameter())
						.intValue();
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = ((BigDecimal) para[i].getParameter())
						.intValue();
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = ((BigDecimal) para[i].getParameter()).intValue();
			else if (name.equals("isContado"))
				p_isContado = ((String) para[i].getParameter())
						.equalsIgnoreCase("Y") ? true : false;
			else if (name.equals("montoVenta"))
				p_montoVenta = ((BigDecimal) para[i].getParameter());
			else if (name.equals("metros"))
				p_metros = ((BigDecimal) para[i].getParameter());
			else if (name.equals("metros"))
				p_complete = new Boolean(para[i].getParameter().toString());
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		// System.out.println("Proceso parametros!");
	} // prepare

	/**
	 * Perform process.
	 * 
	 * @return Message (variables are parsed)
	 * @throws Exception
	 *             if not successful
	 */
	protected String doIt() throws Exception {
		log.info("doIt - C_CommissionRun_ID=" + getRecord_ID());

//		MOrder mo = new MOrder(getCtx(), p_C_Order_ID, get_TrxName());
//		ArrayList<MOrder> morders = new ArrayList<MOrder>();
//		mo.load(get_TrxName());
//		morders.add(mo);
//		ArrayList<MInvoice> comisiones = generateCommisionAPInvoices(getCtx(),
//				morders, p_C_BPartner_ID, p_montoVenta, p_metros, p_isContado,
//				p_complete, get_TrxName(),null, new Timestamp(new Date().getTime()));

//		return "@C_Invoice_Created@ = " + comisiones.size();
		return "";
	} // doIt

	public static ArrayList<MInvoice> generateCommisionAPInvoices(
			Properties ctx,
			MFINBPartnerCredit bpc, 
			ArrayList<MOrder> orders, 
			int vendedor_ID,
			boolean complete, String trxName, Timestamp fechaComision) throws Exception {
		
		if (orders.size() <= 0)
			throw new AdempiereSystemError("No hay ordenes de venta para generar comisiones");

		int C_Order_ID = orders.get(0).getC_Order_ID();
		int sucursalID = orders.get(0).getLAR_Sucursal_ID();
		for (int i = 0; i < orders.size(); i++)
			System.out.println("*** " + orders.get(i).getC_Order_ID());

		boolean isReoperacionSoloVendedor = ( Miscfunc.ValueFromSystem("SoloCobraComisionElQueReopera", "SI", true, "Solo cobra comisiones el que reopera, y no todos los asociados").equals("SI") );
		
		boolean isReoperacion = false;
		
		//if(bpc.getBPCTipo(trxName).equalsIgnoreCase("REOPERACION") )
		//	isReoperacion = true;
		
		if ( bpc.getFIN_BPCTipo_ID() == 1000002)
				isReoperacion = true;
		
		if (C_Order_ID == 0)
			throw new IllegalArgumentException("CommissionAPInvoice - No C_Order");

		ArrayList<MInvoice> comisiones = new ArrayList<MInvoice>();

		// System.out.println("doIt - C_CommissionRun_ID=" + getRecord_ID());

		// Load Data
		/*
		 * Codigo original
		 * 
		 * MCommissionRun comRun = new MCommissionRun (getCtx(), getRecord_ID(),
		 * get_TrxName()); if (comRun.get_ID() == 0) throw new
		 * IllegalArgumentException("CommissionAPInvoice - No Commission Run");
		 * if (Env.ZERO.compareTo(comRun.getGrandTotal()) == 0) throw new
		 * IllegalArgumentException("@GrandTotal@ = 0"); MCommission com = new
		 * MCommission (getCtx(), comRun.getC_Commission_ID(), get_TrxName());
		 * if (com.get_ID() == 0) throw new
		 * IllegalArgumentException("CommissionAPInvoice - No Commission"); if
		 * (com.getC_Charge_ID() == 0) throw new
		 * IllegalArgumentException("CommissionAPInvoice - No Charge on
		 * Commission");
		 */
		
		Comision com = new Comision();
		ArrayList<String[]> comis = null;

		// dREHER, en el caso de que sea reoperacion y tengamos configurado que solo cobre comision el que reopera, le avisamos al metodo getComisiones y el mismo filtra las reglas
		// para solo el vendedor, y no para el resto de los comisionados.
		if(isReoperacion && isReoperacionSoloVendedor)
			comis = com.getComisiones(bpc, vendedor_ID, sucursalID); // tiene que actualizar siempre todas las comisiones 23-11-2016 comis = com.getComisiones(bpc, vendedor_ID, sucursalID,true);
		else
			comis = com.getComisiones(bpc, vendedor_ID, sucursalID);
		
		if (comis == null || comis.equals(null))
			throw new AdempiereSystemError("ERROR: No hay reglas definidas para este vendedor @C_BPartner_ID@="	+ vendedor_ID);
		

		// TODO: eliminar println
		System.out.println("Trajo " + comis.size() + " comisiones.");
		for (int i = 0; i < comis.size(); i++) {

			int C_BPartner_ID_Com = Integer.valueOf(comis.get(i)[0]).intValue();
			String Name_Com = String.valueOf(comis.get(i)[1]);
			String montox = comis.get(i)[2].toString();
			BigDecimal monto_Com = new BigDecimal(montox);
			int AD_User_ID = 0;
			BigDecimal porcalaventa = new BigDecimal(comis.get(i)[5].toString());
			
						
			boolean esPremio = false;
			if(comis.get(i).length > 3){
				String xx = String.valueOf(comis.get(i)[3]);
				//esPremio = Boolean.getBoolean(xx);
				if (xx.compareTo("true")==0)
					esPremio=true;
				else
					esPremio=false;
			}
			
			boolean isCobraContraConforme = false; // dREHER, 26/11/2011 en realidad cambio y se completan contra entrega, con eso es suficiente
			if(comis.get(i).length > 4){
				String xx = String.valueOf(comis.get(i)[4]);
				//esPremio = Boolean.getBoolean(xx);
				if (xx.compareTo("true")==0)
					isCobraContraConforme=true;
				else
					isCobraContraConforme=false;
			}
			
			String sql = "SELECT AD_User_ID FROM AD_User WHERE C_BPartner_ID=" 	+ C_BPartner_ID_Com;
			AD_User_ID = DB.getSQLValue(trxName, sql);

			System.out.println("Leyo primer linea de comision:" + Name_Com);
			
			if (AD_User_ID > 0) {
				MBPartner bp = new MBPartner(ctx, C_BPartner_ID_Com, trxName);
				if (bp.get_ID() == 0)
					throw new IllegalArgumentException(
							"CommissionAPInvoice - No BPartner");

				// dREHER, esta funcionalidad estaba dada porque siempre se
				// tomaba la ultima comision
				// Ahora cada venta o reoperacion crea un nuevo documento de
				// comision, asi que no
				// verificar.

				/*
				 * // Verifica la existencia de esta fc por comision de esta
				 * venta de este comisionista, si existe, la pisa, sino la
				 * agrega sql =
				 * "SELECT C_Invoice_ID FROM C_Invoice WHERE C_Order_ID=" +
				 * C_Order_ID + " AND C_BPartner_ID=" + C_BPartner_ID_Com; int
				 * C_Invoice_IDx = 0; try { PreparedStatement pstmt =
				 * DB.prepareStatement(sql, null); ResultSet rs =
				 * pstmt.executeQuery(); if (rs.next()) C_Invoice_IDx =
				 * rs.getInt(1); rs.close(); pstmt.close(); } // try catch
				 * (SQLException e) {
				 * System.out.println(e.getLocalizedMessage()); }
				 */

				System.out.println("Va a facturar linea de comision:" + Name_Com);
				
				MOrder or = new MOrder(ctx, C_Order_ID, trxName);
				
				// Create new Invoice
				if(or != null)
				{
					System.out.println("Antes de crearCommissionInvoice()");
					
					MInvoice invoice=crearCommissionInvoice(ctx,bpc,AD_User_ID,or,bp,monto_Com,trxName, fechaComision, esPremio, isCobraContraConforme,porcalaventa);

					System.out.println("Creo Invoice de comision.:" + Name_Com);

					comisiones.add(invoice);
				}
				else
					throw new AdempiereSystemError("Metodo: generateCommisionAPInvoices() - err: MOrder:null --- CommissionAPInvoice.java");
				
				System.out.println("Agrego fc de comision:" + Name_Com);
				
			}else
				System.out.println("No va a facturar linea de comision. No encontro user o bp:" + Name_Com);
			
		}

		if (!complete){
			System.out.println("NO COMPLETA, retorno invoices de comisiones!");
			return comisiones;
		}	

		System.out.println("Verifica comisiones generadas!");
		if(comisiones != null && !comisiones.isEmpty()){
			System.out.println("Recorre y completa comisiones generadas!");
			for (int i = 0; i < comisiones.size(); i++) {
				MInvoice invoice = comisiones.get(i);
				String docno = MSequence.getDocumentNo(invoice.getC_DocType_ID(),
						trxName, true);
				if (docno != null)
					invoice.setDocumentNo(docno);

				boolean esPremio = (invoice.getDescription().indexOf("Premio") > -1);
				
				if(!esPremio && (invoice.getDescription().indexOf("C/C") > -1))
					esPremio = true;
				

				if(!esPremio)
					invoice.setDocStatus(invoice.completeIt());
				else{

					boolean conforme = false;

					MVIVCasa vcs[] = bpc.getCasas(trxName);
					if(vcs!=null && vcs.length > 0){
						MVIVCasa vc = vcs[0];
						conforme = Boolean.getBoolean(vc.isCasaRecibidoConforme(trxName));
					}

					if(conforme){
						invoice.setDocStatus(invoice.completeIt());
					}
				}


				if (!invoice.save(trxName))
					throw new AdempiereSystemError("Could not complete Invoice");

				System.out.println("Completo invoices de comisiones!");

			}
		}else
			System.out.println("No hay comisiones generadas!");
		//
		return comisiones;
	}

	
	private static MInvoice crearCommissionInvoice(Properties ctx, MFINBPartnerCredit bpc, Integer AD_User_ID, MOrder or, MBPartner bp, BigDecimal montoCom, String trxName, Timestamp fechaComision) throws SQLException
	{
		return 	crearCommissionInvoice(ctx, bpc, AD_User_ID, or, bp, montoCom, trxName, fechaComision, false, false,Env.ZERO); 
	}
	
	private static MInvoice crearCommissionInvoice(Properties ctx, MFINBPartnerCredit bpc, Integer AD_User_ID, MOrder or, MBPartner bp, BigDecimal montoCom, String trxName, Timestamp fechaComision, boolean esPremio, boolean isCobraContraConforme,BigDecimal porcalaventa) throws SQLException
	{

		int AD_Org_ID = or.getAD_Org_ID();
		if (AD_Org_ID == 0)
			AD_Org_ID = bp.getAD_Org_ID();

		// dREHER, Valido si el vendedor tiene permisos en esa sucursal, sino lo agrego automaticamente
		Misc.ValidoUserSucursal(or.getAD_Org_ID(), or.getLAR_Sucursal_ID(), AD_User_ID);
		
	    MInvoice invoice = new MInvoice(ctx, 0, trxName);
		invoice.setClientOrg(bp.getAD_Client_ID(), bp.getAD_Org_ID());
		invoice.setPaymentRule(MInvoice.PAYMENTRULE_OnCredit);
		invoice.setBPartner(bp);
		invoice.setDateAcct(fechaComision);
		invoice.setDateInvoiced(fechaComision);
		
		
		// 01-10-14
		// Sergio
		// Setea a las comisiones la moneda correspondiente al contrato
		
		invoice.setC_Currency_ID(bpc.getC_Currency_ID());
		
		if(montoCom.compareTo(Env.ZERO)>0)
		{
		    invoice.setC_DocTypeTarget_ID(findInvoiceComissionDocType(or.getLAR_Sucursal_ID())); // API
		    invoice.setC_DocType_ID(findInvoiceComissionDocType(or.getLAR_Sucursal_ID())); // API
		}
		else if (montoCom.compareTo(Env.ZERO)<0)
		{
		    montoCom = montoCom.multiply(new BigDecimal(-1));
		    invoice.setC_DocTypeTarget_ID(findNCDocType(bpc.getLAR_Sucursal_ID())); // NC
		    invoice.setC_DocType_ID(findNCDocType(bpc.getLAR_Sucursal_ID())); // NC
		}
		// msuarez Es transaccion de compra
		invoice.setIsSOTrx(false);
		// msuarez
		invoice.setC_Project_ID(or.getC_Project_ID());
		invoice.setDateOrdered(or.getDateOrdered());

		// dREHER, agrego ref de FIN_BPartnerCredit
		invoice.set_ValueOfColumn("FIN_BPartnerCredit_ID",
				bpc.getFIN_BPartnerCredit_ID());

		invoice.setAD_Org_ID(AD_Org_ID);
		
		String NameCliente = "";
		MBPartner bpCliente = null;
		try {
			bpCliente = (MBPartner)or.getC_BPartner();
			if(bpCliente!=null)
				NameCliente = String.valueOf(bpCliente.getName()).toUpperCase().trim();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// dREHER, si es reoperacion cambiar la leyenda correspondiente para poder diferenciar entre los diferentes tipos de contratos
		boolean isReoperacion = false;
		
		try {
			if(bpc.getBPCTipo(trxName).equalsIgnoreCase("REOPERACION") )
				isReoperacion = true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String tipoComision = "Contrato";
		if(isReoperacion)
			tipoComision = "Reoperacion";
		
		if(isCobraContraConforme)
			tipoComision += " C/C";
		
		//TODO ver si queda asi o cambia
		/*
		if(!esPremio  && isCobraContraConforme)
			esPremio = true;
		*/
		
		if(!esPremio)
			invoice.addDescription("Comision. " + tipoComision + ":"+ bpc.getNroContrato() + ", Cliente:" + NameCliente + ", Fecha:" + or.getDateOrdered() + ", Monto venta:"+ bpc.getTotalCasa().setScale(2,
					BigDecimal.ROUND_HALF_UP) + ", m2:" + bpc.getTotalMetrosCubiertos(trxName).setScale(2,
					BigDecimal.ROUND_HALF_UP));
		else
			invoice.addDescription("Comision Premio. " + tipoComision + ":"+ bpc.getNroContrato() + ", Cliente:" + NameCliente + ", Fecha:" + or.getDateOrdered() + ", Monto venta:"+ bpc.getTotalCasa().setScale(2,
					BigDecimal.ROUND_HALF_UP) + ", m2:" + bpc.getTotalMetrosCubiertos(trxName).setScale(2,
					BigDecimal.ROUND_HALF_UP));
		
		invoice.setSalesRep_ID(AD_User_ID); // caller

		int LAR_Sucursal_ID = or.getLAR_Sucursal_ID();
		invoice.setLAR_Sucursal_ID(LAR_Sucursal_ID);

		// forzar doc de proveedores - compras
		invoice.setIsSOTrx(false);

		if (!invoice.save(trxName))
			throw new IllegalStateException("CommissionAPInvoice - cannot save Invoice");
		
		// Create Invoice Line
		MInvoiceLine iLine = new MInvoiceLine(invoice);
		iLine.setC_Charge_ID(or.getC_Charge_ID()); // por defecto el q tiene la orden de venta
		
		if(!esPremio)
			iLine.setDescription("Comision. " + tipoComision + ":" + bpc.getNroContrato()+ ", Cliente:" + NameCliente + ", Fecha:"+ or.getDateOrdered() + ", Monto venta:" + bpc.getTotalCasa().setScale(2,
					BigDecimal.ROUND_HALF_UP)+ ", m2:" + bpc.getTotalMetrosCubiertos(trxName).setScale(2,
					BigDecimal.ROUND_HALF_UP) + " Porc. a la venta: " + porcalaventa.multiply(Env.ONEHUNDRED));
		else
			iLine.setDescription("Comision Premio. " + tipoComision + ":" + bpc.getNroContrato()+ ", Cliente:" + NameCliente + ", Fecha:"+ or.getDateOrdered() + ", Monto venta:" + bpc.getTotalCasa().setScale(2,
					BigDecimal.ROUND_HALF_UP)+ ", m2:" + bpc.getTotalMetrosCubiertos(trxName).setScale(2,
					BigDecimal.ROUND_HALF_UP) + " Porc. a la venta: " + porcalaventa.multiply(Env.ONEHUNDRED));
		
		iLine.setQty(1);
		iLine.setPrice(montoCom);
		iLine.setTax();
		iLine.setC_Charge_ID(getCargoComisiones(trxName));
		if (!iLine.save(trxName))
			throw new IllegalStateException(
					"CommissionAPInvoice - cannot save Invoice Line");
		return invoice;
	}

	// dREHER, TODO: agregar en la suc los documentos q corresponden para cada
	// caso y leerlos desde alli
	private static int findInvoiceComissionDocType(int sucursal) {
		String sql = "SELECT c_doctype_id FROM c_doctype WHERE AD_Client_ID="
				+ Env.getAD_Client_ID(Env.getCtx()) + " AND AD_Org_ID IN (0, "
				+ Env.getAD_Org_ID(Env.getCtx()) + ") "
				+ " AND isActive='Y' AND name='Factura C (Comisiones)' "; // msuarez
																		// Si se
																		// cambia
																		// el
																		// documento,
																		// hay
																		// que
																		// cambiar
																		// aca

		int id = DB.getSQLValue(null, sql);
		if (id <= 0)
			id = 1000255; // msuarez ID de AP Invoice de Comisiones

		return id; // 1000005;
	}

	// dREHER, TODO: agregar en la suc los documentos q corresponden para cada
	// caso y leerlos desde alli
	private static int findNCDocType(int sucursal) {
		String sql = "SELECT c_doctype_id FROM c_doctype WHERE AD_Client_ID="
				+ Env.getAD_Client_ID(Env.getCtx()) + " AND AD_Org_ID IN (0, "
				+ Env.getAD_Org_ID(Env.getCtx()) + ") "
				// + " AND isActive='Y' AND name='AP CreditMemo' ";
				+ " AND isActive='Y' AND name='N.Credito A' ";

		int id = DB.getSQLValue(null, sql);
		if (id <= 0)
			id = 1000006; // AP Credit Memo

		return id; // 1000006;
	}

	public static ArrayList<MInvoice> generateCommisionAPInvoices(Properties ctx,MFINBPartnerCredit nc, int vendedor_ID, boolean complete,	String trxName, Timestamp fechaComision) throws AdempiereSystemError, SQLException 
	{
		if (nc == null)
			throw new AdempiereSystemError("No hay venta para generar comisiones");

		ArrayList<MInvoice> comisiones = new ArrayList<MInvoice>();
		int sucursalID = nc.getLAR_Sucursal_ID();
		Comision com = new Comision();
		ArrayList<String[]> comis = com.getComisiones(nc, vendedor_ID, sucursalID);

		if (comis == null || comis.equals(null)) 
		{
			throw new AdempiereSystemError("ERROR: No hay reglas definidas para este vendedor @C_BPartner_ID@="+ vendedor_ID);
		}
		
		System.out.println("Retorno " + comis.size() + " comisiones!");
		
		for (int i = 0; i < comis.size(); i++) {

			int C_BPartner_ID_Com = Integer.valueOf(comis.get(i)[0]).intValue();
			String Name_Com = String.valueOf(comis.get(i)[1]);
			String montox = comis.get(i)[2].toString();
			BigDecimal monto_Com = new BigDecimal(montox);
			int AD_User_ID = 0;

			System.out.println("Lei comision! " + Name_Com);
			
			String sql = "SELECT AD_User_ID FROM AD_User WHERE C_BPartner_ID="
					+ C_BPartner_ID_Com;
			//msuarez begin
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			//msuarez end
			
			try {

				pstmt = DB.prepareStatement(sql, null);
				rs = pstmt.executeQuery();
				if (rs.next())
					AD_User_ID = rs.getInt(1);

				//rs.close();
				//pstmt.close();
			} // try
			catch (SQLException e) {
				System.out.println(e.getLocalizedMessage());
			}
			//msuarez=> cerrar conexiones
			finally{
				DB.close(rs, pstmt);
				rs=null;pstmt=null;
			}

			if (AD_User_ID > 0) {
				MBPartner bp = new MBPartner(ctx, C_BPartner_ID_Com, trxName);
				if (bp.get_ID() == 0)
					throw new IllegalArgumentException(
							"CommissionAPInvoice - No BPartner");

				
				// dREHER, Valido si el vendedor tiene permisos en esa sucursal, sino lo agrego automaticamente
				Misc.ValidoUserSucursal(bp.getAD_Org_ID(), nc.getLAR_Sucursal_ID(), AD_User_ID);

				// Create new Invoice
				MInvoice invoice = new MInvoice(ctx, 0, trxName);
				invoice.setPaymentRule(MInvoice.PAYMENTRULE_OnCredit);
				invoice.setClientOrg(bp.getAD_Client_ID(), bp.getAD_Org_ID());
				invoice.setDateAcct(fechaComision);
				invoice.setDateInvoiced(fechaComision);
				invoice.setBPartner(bp);
				invoice.setC_DocTypeTarget_ID(findNCDocType(nc.getLAR_Sucursal_ID())); // API
				invoice.setC_DocType_ID(findNCDocType(nc.getLAR_Sucursal_ID())); // API
				// invoice.setC_Project_ID(or.getC_Project_ID());
				// invoice.setDateOrdered(nc.getDateOrdered());

				// dREHER, agrego ref de FIN_BPartnerCredit
				invoice.set_ValueOfColumn("FIN_BPartnerCredit_ID",
						nc.getFIN_BPartnerCredit_ID());

				int AD_Org_ID = nc.getAD_Org_ID();
				if (AD_Org_ID == 0)
					AD_Org_ID = bp.getAD_Org_ID();

				// forzar doc de proveedores - compras
				invoice.setIsSOTrx(false);
				invoice.setAD_Org_ID(AD_Org_ID);
				invoice.addDescription("Comision. NC-Contrato:"
						+ nc.getNroContrato() + ", Cliente:"
						+ String.valueOf(nc.getName()).trim() + ", Monto venta:" + nc.getTotalCasa()
						+ ", m2:" + nc.getTotalMetrosCubiertos(trxName));
				// invoice.setC_Order_ID(C_Order_ID);

				invoice.setSalesRep_ID(AD_User_ID); // caller

				// dREHER, Guardar la sucursal de la Orden

				int LAR_Sucursal_ID = nc.getLAR_Sucursal_ID();
				invoice.setLAR_Sucursal_ID(LAR_Sucursal_ID);

				//
				// if (com.getC_Currency_ID() != invoice.getC_Currency_ID())
				// throw new IllegalArgumentException("CommissionAPInvoice -
				// Currency of PO Price List not Commission Currency");
				//		

				if (!invoice.save())
					throw new IllegalStateException(
							"CommissionAPInvoice - cannot save Invoice");

				// Create Invoice Line
				MInvoiceLine iLine = new MInvoiceLine(invoice);
				// iLine.setC_Charge_ID(nc.getC_Charge_ID()); // por defecto el
				// q
				// tiene la orden de
				// venta
				iLine.setDescription("Comision. NC-Contrato:"
						+ nc.getNroContrato() + ", Cliente:"
						+ String.valueOf(nc.getName()).trim() + ", Monto venta:" + nc.getTotalCasa()
						+ ", m2:" + nc.getTotalMetrosCubiertos(trxName));
				iLine.setQty(1);
				iLine.setPrice(monto_Com);
				iLine.setTax();
				iLine.setC_Charge_ID(getCargoComisiones(trxName));
				// if(nc != null){
				// MInvoiceLine[] mol = nc.getLines();
				// if(mol.length > 0)
				// iLine.setC_OrderLine_ID(mol[0].getC_OrderLine_ID());
				// }

				if (!iLine.save())
					throw new IllegalStateException(
							"CommissionAPInvoice - cannot save Invoice Line");

				System.out.println("Agrego invoice de comisiones! " + bp.getName());
				
				comisiones.add(invoice);
			}else
				System.out.println("No se crean invoices de comisiones, no hay ad_user_id!");
		}

		if (!complete){
			System.out.println("Retorno invoices de comisiones sin completar!");
			return comisiones;
		}

		for (int i = 0; i < comisiones.size(); i++) {
			MInvoice invoice = comisiones.get(i);
			String docno = MSequence.getDocumentNo(invoice.getC_DocType_ID(),
					trxName, true);
			if (docno != null)
				invoice.setDocumentNo(docno);
			invoice.setDocStatus(invoice.completeIt());
			if (!invoice.save(trxName))
				throw new AdempiereSystemError("Could not complete Invoice");
			
			System.out.println("Completo invoices de comisiones!");
		}
		
		return comisiones;

	}


	public static MInvoice crearCommissionInvoice(Properties ctx, MFINBPartnerCredit bpc, BigDecimal montoComision, MOrder order, int vendedor_ID, String trxName, Timestamp fechaComision) throws AdempiereSystemError, SQLException 
	{

	    int C_Order_ID = order.getC_Order_ID();
	    int sucursalID = order.getLAR_Sucursal_ID();

	    if (C_Order_ID == 0)
	    	throw new IllegalArgumentException("CommissionAPInvoice - No C_Order");
	    
	    Comision com = new Comision();
	    ArrayList<String[]> comis = com.getComisiones(bpc,vendedor_ID, sucursalID);

	    if (comis == null || comis.equals(null)) 
	    {
	    	throw new AdempiereSystemError("ERROR: No hay reglas definidas para este vendedor @C_BPartner_ID@="+ vendedor_ID);
	    }

	    for (int i = 0; i < comis.size(); i++) 
	    {

	    	int C_BPartner_ID_Com = Integer.valueOf(comis.get(i)[0]).intValue();
	    	int AD_User_ID = 0;

	    	AD_User_ID = getADUserID(C_BPartner_ID_Com);

	    	if (AD_User_ID > 0) {
	    		MBPartner bp = new MBPartner(ctx, C_BPartner_ID_Com, trxName);
	    		if (bp.get_ID() == 0)
	    			throw new IllegalArgumentException(
	    			"CommissionAPInvoice - No BPartner");

	    		MOrder or = new MOrder(ctx, C_Order_ID, trxName);

	    		// Create new Invoice
	    		MInvoice invoice=crearCommissionInvoice(ctx,bpc,AD_User_ID,or,bp,montoComision,trxName, fechaComision);

	    		String docno = MSequence.getDocumentNo(invoice.getC_DocType_ID(), trxName, true);
	    		if (docno != null)
	    			invoice.setDocumentNo(docno);
	    		invoice.setDocStatus(invoice.completeIt());
	    		if (!invoice.save(trxName))
	    			throw new AdempiereSystemError("Could not complete Invoice");

	    		return invoice;
	    	}

	    }
	    return null;
	}
	    //

	private static int getADUserID(int partner_ID_Com) throws SQLException
	{
	    int AD_User_ID=0; 
	    String sql = "SELECT AD_User_ID FROM AD_User WHERE C_BPartner_ID=" + partner_ID_Com;
	    PreparedStatement pstmt=null;
	    ResultSet rs=null;
	    try 
	    {
	    	pstmt = DB.prepareStatement(sql, null);
	    	rs = pstmt.executeQuery();
	    	if (rs.next())
	    		AD_User_ID = rs.getInt(1);
	    	//DB.close(rs, pstmt);
	    } 
	    catch (SQLException e) 
	    {
	    	//DB.close(rs, pstmt);
	    	throw e;
	    }
	    //msuarez=> cerrar conexiones
	    finally{
	    	DB.close(rs, pstmt);
	    	rs=null;pstmt=null;
	    }
	    
	    return AD_User_ID;
	}

	
	public static MInvoice crearCommissionInvoice(Properties ctx, MFINBPartnerCredit bpc, BigDecimal montoComision, int vendedor_ID, String trxName, Timestamp fechaComision) throws AdempiereSystemError, SQLException 
	{

	    int sucursalID = bpc.getLAR_Sucursal_ID();

	    if (bpc == null)
	    	throw new IllegalArgumentException("CommissionAPInvoice - No bpc");
	    
	    Comision com = new Comision();
	    ArrayList<String[]> comis = com.getComisiones(bpc, vendedor_ID, sucursalID);

	    if (comis == null || comis.equals(null)) 
	    {
	    	throw new AdempiereSystemError("ERROR: No hay reglas definidas para este vendedor @C_BPartner_ID@="+ vendedor_ID);
	    }

	    for (int i = 0; i < comis.size(); i++) 
	    {

	    	int C_BPartner_ID_Com = Integer.valueOf(comis.get(i)[0]).intValue();
	    	int AD_User_ID = 0;

	    	AD_User_ID = getADUserID(C_BPartner_ID_Com);

	    	if (AD_User_ID > 0) {
	    		MBPartner bp = new MBPartner(ctx, C_BPartner_ID_Com, trxName);
	    		if (bp.get_ID() == 0)
	    			throw new IllegalArgumentException(
	    			"CommissionAPInvoice - No BPartner");

	    		// Create new Invoice
	    		MInvoice invoice=crearCommissionInvoice(ctx,bpc,AD_User_ID,bp,montoComision,trxName, fechaComision);

	    		String docno = MSequence.getDocumentNo(invoice.getC_DocType_ID(),
	    				trxName, true);
	    		if (docno != null)
	    			invoice.setDocumentNo(docno);
	    		invoice.setDocStatus(invoice.completeIt());
	    		if (!invoice.save(trxName))
	    			throw new AdempiereSystemError("Could not complete Invoice");

	    		return invoice;
	    	}

	    }
	    return null;
	}

	private static MInvoice crearCommissionInvoice(Properties ctx, MFINBPartnerCredit bpc, Integer AD_User_ID, MBPartner bp, BigDecimal montoCom, String trxName, Timestamp fechaComision) throws SQLException
	{
	    MInvoice invoice = new MInvoice(ctx, 0, trxName);
	    invoice.setPaymentRule(MInvoice.PAYMENTRULE_OnCredit);
		invoice.setClientOrg(bp.getAD_Client_ID(), bp.getAD_Org_ID());
		invoice.setBPartner(bp);
		invoice.setC_DocTypeTarget_ID(findNCDocType(bpc.getLAR_Sucursal_ID())); // API
		invoice.setC_DocType_ID(findNCDocType(bpc.getLAR_Sucursal_ID())); // API
		
		invoice.setDateAcct(fechaComision);
		invoice.setDateInvoiced(fechaComision);
		
		// msuarez Es transaccion de compra
		invoice.setIsSOTrx(false);

		// dREHER, agrego ref de FIN_BPartnerCredit
		invoice.set_ValueOfColumn("FIN_BPartnerCredit_ID",bpc.getFIN_BPartnerCredit_ID());

		int AD_Org_ID = bpc.getAD_Org_ID();
		if (AD_Org_ID == 0)
			AD_Org_ID = bp.getAD_Org_ID();

		invoice.setAD_Org_ID(AD_Org_ID);
		invoice.addDescription("NC de Comision por venta. Contrato:"+ bpc.getNroContrato() + ", Cliente:" + String.valueOf(bpc.getName()).trim()+ ", Monto venta:"+ bpc.getTotalCasa() + ", m2:" + bpc.getTotalMetrosCubiertos(trxName));

		invoice.setSalesRep_ID(AD_User_ID); // caller

		int LAR_Sucursal_ID = bpc.getLAR_Sucursal_ID();
		invoice.setLAR_Sucursal_ID(LAR_Sucursal_ID);

		// forzar doc de proveedores - compras
		invoice.setIsSOTrx(false);

		if (!invoice.save())
			throw new IllegalStateException("CommissionAPInvoice - cannot save Invoice");
		
		// Create Invoice Line
		MInvoiceLine iLine = new MInvoiceLine(invoice);
		iLine.setDescription("NC de Comision por venta. Contrato:" + bpc.getNroContrato()+ ", Cliente:" + String.valueOf(bpc.getName()).trim() + ", Monto venta:" + bpc.getTotalCasa()+ ", m2:" + bpc.getTotalMetrosCubiertos(trxName));
		iLine.setQty(1);
		iLine.setPrice(montoCom);
		iLine.setTax();
		iLine.setC_Charge_ID(getCargoComisiones(trxName));
		if (!iLine.save())
			throw new IllegalStateException(
					"CommissionAPInvoice - cannot save Invoice Line");
		return invoice;
	}

	private static int getCargoComisiones(String trxName) throws SQLException
	{
	    String sql="SELECT C_Charge_ID FROM C_Charge WHERE name ='Comisiones Vendedores'";
	    return DB.getSQLValue(trxName, sql);
	}

} // CommissionAPInvoice
