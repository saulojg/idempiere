package org.compiere.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.utils.ConstantesAD;
import org.adempiere.util.Miscfunc;
import org.compiere.util.*;
import org.compiere.process.*;
import org.jfree.util.Log;

/**
 * 	LAR Cheques User Model
 *	
 *  @author Alejandro Falcone
 *  @version $Id: MLARCheque.java,v 1.1 2008/03/10 afalcone Exp $
 */
public class MLARCheque extends X_LAR_Cheque
{
	
	/**
	 * 	Get Cheques Of Payment (Obtiene todos los cheques de 3eros. de un Payment)
	 *	@param ctx context
	 *	@param C_Payment_ID id
	 *	@param trxName transaction
	 *	@return array
	 */
	public static MLARCheque[] getOfPayment (Properties ctx, int C_Payment_ID, String trxName)
	{
		ArrayList<MLARCheque> list = new ArrayList<MLARCheque>();
		String sql = "SELECT * FROM LAR_Cheque WHERE LAR_Cheque_ID IN " +
				" (SELECT LAR_Cheque_ID FROM LAR_ChequePayment WHERE C_Payment_ID = ?)";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trxName);
			pstmt.setInt(1, C_Payment_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MLARCheque(ctx,rs, trxName));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}

		//
		MLARCheque[] retValue = new MLARCheque[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getOfPayment
	
	public ArrayList<MLARChequePayment> getLarChequePayments() throws SQLException
	{
		ArrayList<MLARChequePayment> result=new ArrayList<MLARChequePayment>();
		String sql = "SELECT * FROM LAR_ChequePayment WHERE LAR_Cheque_ID = "+ getLAR_Cheque_ID();
		PreparedStatement pstmt = null;
		
		pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
			result.add(new MLARChequePayment(getCtx(),rs, get_TrxName()));
		rs.close();
		pstmt.close();
		pstmt = null;
		
		return result;
	}
	
	/**
	 * 	Standard Constructor
	 *	@param ctx context
	 *	@param LAR_Cheque_ID
	 *	@param trxName transaction
	 */
	//private static final long serialVersionUID = 8;
	public MLARCheque(Properties ctx, int LAR_Cheque_ID, String trxName) 
	{
		super(ctx, LAR_Cheque_ID, trxName);
		
		// New
		if (LAR_Cheque_ID == 0)
		{
			setLAR_ChequeEstado(LAR_CHEQUEESTADO_Emitido); //Emitido
			setTipoCheque(TIPOCHEQUE_Propio);
			setAmount(Env.ZERO);
		}
	}	//	MLARCheque

	/**
	 * 	Load Constructor
	 *	@param ctx context
	 *	@param rs result set
	 *	@param trxName transaction
	 */
	public MLARCheque(Properties ctx, ResultSet rs, String trxName) 
	{
		super(ctx, rs, trxName);
	}	//	MLARCheque
	
	
	
	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return success
	 */
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (!success)
			return success;
		
		boolean isCobrado = false;
		boolean isPagado = false;
		

// Se cambia la fecha acct del cheque
		boolean isAcreditado = this.isAcreditado();
		if(isAcreditado){
			String sql = "SELECT C_Payment_ID FROM LAR_ChequePayment WHERE LAR_Cheque_ID=? AND IsActive='Y'";
			int C_Payment_ID = DB.getSQLValue(get_TrxName(), sql, this.getLAR_Cheque_ID());
			if(C_Payment_ID > 0){
				Date fecha = this.getFechaAcreditado();
				sql = "UPDATE C_Payment SET dateacct='" + Miscfunc.FechaAMD(fecha) + "' WHERE C_Payment_ID=?";
				int upd = DB.executeUpdate(sql,C_Payment_ID, get_TrxName());
				if(upd > -1)
					log.finest("Se actualizo la fecha contable del paymentId=" + C_Payment_ID + " Fecha=" + fecha);
				else
					log.warning("Error al actualizar la fecha contable del paymentId=" + C_Payment_ID + " Fecha=" + fecha);
			}
		}

		
		//begin msuarez -> si un cheque es rechazado, se debe generar una nueva orden de venta con el monto del cheque
		if (this.getLAR_ChequeEstado().compareTo(X_LAR_Cheque.LAR_CHEQUEESTADO_Rechazado)==0){
			
			int paymentIDC=0; //msuarez -> c_Payment de un cobro
			int paymentIDP=0; //msuarez -> c_Payment de un pago
			String sql="";
			
			if(this.getIN_BPartner_ID() > 0)
				isCobrado = true;
			else{ //msuarez -> si esta vacio el IN_BPartner_ID, buscamos el c_bpartner en el payment
				paymentIDC=obtenerPayment(this.getLAR_Cheque_ID(),true,this.get_TrxName());
				if (paymentIDC>0){
					isCobrado = true;
				}
			}
			
			if(this.getOUT_BPartner_ID() > 0)
				isPagado = true;
			else{ //msuarez -> si esta vacio el OUT_BPartner_ID, buscamos el c_bpartner en el payment
				paymentIDP=obtenerPayment(this.getLAR_Cheque_ID(),false,this.get_TrxName());
				if (paymentIDP>0){
					isPagado = true;
				}
			}
			
			try{
				
				if(isCobrado){		// dREHER
					
					int M_Warehouse_ID = 0;
					
					BigDecimal monto=this.getAmount();
					MOrder mo = new MOrder(this.getCtx(), 0, this.get_TrxName());
					if (mo != null) {
						mo.setDateAcct(this.getUpdated());
						mo.setDateOrdered(this.getUpdated());
						mo.setDescription("Orden de Venta generada por cheque rechazado numero: " + this.getChequeNo() + " dia: " + this.getUpdated());

						
						MPayment payment=new MPayment(this.getCtx(),paymentIDC,this.get_TrxName());

						sql="SELECT C_Order_ID FROM C_AllocationLine a WHERE a.C_Payment_ID=?";
						PreparedStatement pstmt=null;
						ResultSet rs=null;
						int orderID=0;

						try{
							pstmt=DB.prepareStatement(sql, this.get_TrxName());
							pstmt.setInt(1, payment.getC_Payment_ID());
							rs=pstmt.executeQuery();
							if(rs.next()){
								orderID=rs.getInt(1);
							}
						}
						catch (SQLException e){
							e.printStackTrace();
						}
						finally{
							DB.close(rs, pstmt);
							pstmt=null; rs=null;
						}
						if(orderID>0){
							MOrder orderOld=new MOrder(this.getCtx(),orderID,this.get_TrxName());
							if (orderOld!=null){
								mo.set_ValueOfColumn("FIN_BPartnerCredit_ID", 
										orderOld.get_Value("FIN_BPartnerCredit_ID"));
								M_Warehouse_ID = orderOld.getM_Warehouse_ID();
							}
						}else {
							M_Warehouse_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(M_Warehouse_ID) FROM LAR_SucursalWarehouse WHERE LAR_Sucursal_ID=? AND IsActive='Y'", payment.getLAR_Sucursal_ID());
						}

						mo.setM_Warehouse_ID(M_Warehouse_ID);
						
						MBPartner bp = new MBPartner(Env.getCtx(), payment.getC_BPartner_ID(),
								this.get_TrxName());

						if (bp.get_ID() == 0)
							throw new IllegalArgumentException("MLARCheque, createMOrder! no pudo leer socio de negocios!");

						mo.setBPartner(bp);
						mo.setAD_Org_ID(this.getAD_Org_ID());

						mo.setGrandTotal(monto);					

						mo.setAD_User_ID(payment.getAD_User_ID());

						mo.setOrderType(MOrder.DocSubTypeSO_Prepay);
						mo.setC_DocType_ID(1000028);//AprobarVenta.findPrePayOrderDocType(this.get_TrxName()));
						mo.setC_DocTypeTarget_ID(1000028);//findPrePayOrderDocType(trxName));
						// asigno la sucursal de la venta (FINBPartnerCredit) a la órden de
						// venta
						mo.set_ValueOfColumn("LAR_Sucursal_ID", payment.getLAR_Sucursal_ID());
						mo.save(this.get_TrxName());

						createLine(mo, this.get_TrxName());

						if (completeOrder(mo, this.get_TrxName()))
							UpdateProcessed("Y", this.getLAR_Cheque_ID());
						else
							throw new AdempiereSystemError(
							"No se pudo crear la OV Cheque Rechazado");
					}

				} // isCobrado, agrego orden de venta por la diferencia en el cliente q pago con este cheque
				
				
				if(isPagado){ 		// dREHER
					
					// Buscar el documento para cheques rechazados de proveedor
					int LAR_Sucursal_ID = this.getLAR_Sucursal_ID();
					sql = "SELECT ndchequerechazadoprov_id FROM LAR_SucursalParams WHERE LAR_Sucursal_ID=?";
					int ND_ID = DB.getSQLValue(get_TrxName(), sql, LAR_Sucursal_ID);
					
					
					BigDecimal monto = this.getAmount();
					int C_BPartner_ID = this.getOUT_BPartner_ID();
					//msuarez 17/10/2011 -> Puede que el OUT_BPartner_ID este vacio, por lo tanto tomamos el C_BPartner del payment
					if (C_BPartner_ID<=0){
						MPayment payment=new MPayment(this.getCtx(),paymentIDP,this.get_TrxName());
						C_BPartner_ID=payment.getC_BPartner_ID();
					}
					MBPartner bp = new MBPartner(Env.getCtx(), C_BPartner_ID, get_TrxName());
					MInvoice i = new MInvoice(Env.getCtx(), 0, get_TrxName());
					if(i != null && bp != null){
						
						i.setBPartner(bp);
						i.setAD_Org_ID(this.getAD_Org_ID());
						i.setLAR_Sucursal_ID(getLAR_Sucursal_ID());
						i.setAD_User_ID(Env.getAD_User_ID(getCtx()));
						i.setC_Currency_ID(getC_Currency_ID());
						i.setIsSOTrx(false);
						i.setC_DocType_ID(ND_ID);
						i.setC_DocTypeTarget_ID(ND_ID);
						i.setSalesRep_ID(Env.getAD_User_ID(getCtx()));
						i.addDescription("Nota de debito x cheque rechazado # " + this.getChequeNo());
						i.setGrandTotal(monto);
						i.setDateInvoiced(getfechasalida());
						i.setDateAcct(getfechasalida());
						
						if(i.save(get_TrxName())){
							
							MInvoiceLine il = new MInvoiceLine(i);
							if(il != null){
								
								il.setC_UOM_ID(ConstantesAD.getUOMUnidad());
								il.setLineNetAmt(monto);
								il.setLineTotalAmt(monto);
								il.setQty(Env.ONE);
							    il.setPrice(i.getGrandTotal());
							    if(il.save(get_TrxName()))
							    	completeInvoice(i, this.get_TrxName());
								
							}
							
						}else
							throw new AdempiereSystemError(
							"Error al crear nota de debito en el proveedor correspondiente!");
						
					}else
						throw new AdempiereSystemError(
						"Error al crear nota de debito en el proveedor correspondiente!");
					
					
					
				} // isPagado, agrego nota de debito en el proveedor, le debemos la misma cantidad que el cheque rechazado TODO: ver si generamos recargos mas adelante
				
				
				if(!isPagado && !isCobrado){ // es un cheque que fue pasado a mano, no es ni cobrado ni pagado
					
					throw new IllegalArgumentException("MLARCheque, El cheque no tiene pagos ni socio de negocios asignados!");
										
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}	
		//end msuarez 
		
		if (getC_Payment_ID() == 0)
			   return true;
		
		String sql = "SELECT Count(*) FROM LAR_ChequePayment "+
        "WHERE LAR_Cheque_ID="+getLAR_Cheque_ID()+" AND C_Payment_ID="+ getC_Payment_ID();
		
		boolean bExist = false;
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
				bExist= true;
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
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
		
		if (!bExist)
		{
			// Inserta en LAR_ChequePayment
			log.fine("Insert into LAR_ChequePayment - C_Payment_ID="+getC_Payment_ID()+" / LAR_Cheque_ID="+getLAR_Cheque_ID());
			MLARChequePayment chp = new MLARChequePayment(Env.getCtx(), 0, null);
			chp.setC_Payment_ID(getC_Payment_ID());
			chp.setLAR_Cheque_ID(getLAR_Cheque_ID());
			if (!chp.save())
			{
				log.log(Level.SEVERE, "LAR_ChequePayment fail Save: " + getLAR_Cheque_ID());
				return false;
			}	
		}
		
		
		log.fine("END");
		return true;
	}
	
	
	/**
	 * @author msuarez
	 * @date 17/10/2011
	 * @description: Busca el payment asociado para un determinado cheque, teniendo en cuenta
	 * si el cheque fue cobrado o pagado.  
	 * @param chequeID
	 * @param venta
	 * @param trxName
	 * @return ID del Payment
	 */
	
	public int obtenerPayment(int chequeID,boolean venta, String trxName){
		
		int paymentID=0;
		String sql="";
		
		if (venta)
			sql="SELECT cp.C_Payment_ID FROM LAR_ChequePayment cp INNER JOIN LAR_Cheque Chq ON Chq.LAR_Cheque_ID=cp.LAR_Cheque_ID " +
					"INNER JOIN C_Payment pay ON pay.C_Payment_ID=cp.C_Payment_ID " +
					"WHERE Chq.LAR_Cheque_ID=? AND pay.isReceipt='Y'";
		else
			sql="SELECT cp.C_Payment_ID FROM LAR_ChequePayment cp INNER JOIN LAR_Cheque Chq ON Chq.LAR_Cheque_ID=cp.LAR_Cheque_ID " +
					"INNER JOIN C_Payment pay ON pay.C_Payment_ID=cp.C_Payment_ID " +
					"WHERE Chq.LAR_Cheque_ID=? AND pay.isReceipt='N'";

		PreparedStatement pstmt2=null;
		ResultSet rs2=null;
		

		try{
			pstmt2=DB.prepareStatement(sql, trxName);
			pstmt2.setInt(1, chequeID);
			rs2=pstmt2.executeQuery();
			if(rs2.next()){
				paymentID=rs2.getInt(1);
			}
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		finally{
			DB.close(rs2, pstmt2);
			pstmt2=null; rs2=null;
		}
		
		return paymentID;
		
	}//end obtenerPayment
	
	// region Roca
		
		public static void createLine(MOrder mo, String trxName) throws SQLException {
		    MOrderLine mol = new MOrderLine(mo);
		    mol.setC_UOM_ID(ConstantesAD.getUOMUnidad());
		    mol.setQty(Env.ONE);
		    mol.setPrice(mo.getGrandTotal());
		    // mol.setM_Product_ID(casa.findProductID());
		    // mol.setPrice(totalCasa);
		    mol.save(trxName);
		}

		
		/**
		 * Completa una C_Order (compra o ventas)
		 * 
		 * @param mo
		 * @throws AdempiereSystemError
		 */
		public static boolean completeOrder(MOrder mo, String trxName)
				throws AdempiereSystemError {

			boolean ok = false;
			// Dreher, VERIFICO Q SEA ORDER VALIDA
			if (mo != null) {
				// Utilizo metodo MSequence
				String docNo = MSequence.getDocumentNo(mo.getC_DocType_ID(),
						trxName, true);
				if (docNo != null)
					mo.setDocumentNo(docNo);
				mo.setDocAction("CO");
				String complete = mo.completeIt();
				mo.setDocStatus(complete); // completar documento
				ok = mo.save(trxName);
				if (!ok)
					throw new AdempiereSystemError("- No se pudo guardar la orden");

				// dREHER
				// forzar bajada a disco, sino no genera ordenes de venta prepagas
				// commit();

			} else
				throw new AdempiereSystemError("- No se orden valida");

			return ok;
		}
		
		/**
		 * Completa una C_Invoice (nota de debito)
		 * 
		 * @param i
		 * @throws AdempiereSystemError
		 */
		public static boolean completeInvoice(MInvoice i, String trxName)
			throws AdempiereSystemError {

		boolean ok = false;
		// Dreher, VERIFICO Q SEA ORDER VALIDA
		if (i != null) {
			// Utilizo metodo MSequence
			String docNo = MSequence.getDocumentNo(i.getC_DocType_ID(),
					trxName, true);
			if (docNo != null)
				i.setDocumentNo(docNo);
			i.setDocAction("CO");
			String complete = i.completeIt();
			i.setDocStatus(complete); // completar documento
			ok = i.save(trxName);
			if (!ok)
				throw new AdempiereSystemError("- No se pudo guardar la notade debito");

		} else
			throw new AdempiereSystemError("- No se orden valida");

		return ok;
	}
	
	private void UpdateProcessed(String data, int LAR_Cheque_ID) {

		PreparedStatement pstmt=null;
		String sql = "UPDATE LAR_Cheque SET processed='" + data
		+ "' WHERE LAR_Cheque_ID="
		+ LAR_Cheque_ID;

		try {
			pstmt = DB.prepareStatement(sql, this
					.get_TrxName());
			int z = pstmt.executeUpdate();
			
		} // try
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			DB.close(pstmt);
			pstmt = null;
		}

	}//UpdateProcessed

	/**
	 * 	Before Save
	 *	@param newRecord new
	 *	@return save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		boolean ok = true;
		
		try
		{
		
			String ac = String.valueOf(this.get_Value("isacreditado"));
			if(ac.trim().compareTo("true")==0)
			{
				String xx =  String.valueOf(this.get_Value("fechaacreditado"));
				if(xx.trim().compareTo("null")==0 || xx.trim().isEmpty())
					throw new AdempiereSystemError("Debe registras fecha de acreditacion!");
			}

			
			String LAR_ChequeEstado = getLAR_ChequeEstado();
			String TipoCheque = getTipoCheque();

			if ((TipoCheque.equals("P") && (!LAR_ChequeEstado.equals("F") && !LAR_ChequeEstado.equals("A"))) ||
					(TipoCheque.equals("T") && LAR_ChequeEstado.equals("F")))
			{
				log.log(Level.SEVERE, "Estado Cheque ("+LAR_ChequeEstado+") incompatible con Tipo Cheque:"+TipoCheque);
				ok = false;
			}
			
			
			// dREHER 28/09/2018
			// SI es un cobro de cheque de terceros que tiene vencimiento mayor a 90 dias de hoy y no tiene Financiacion Con Cheques, romper aca y devolver mensaje de excepcion
			// dREHER 28/03/2019 Si pasa por aca para rechazar un cheque o para usarlo en un pago que no controle lo de los dias...
			if(!LAR_ChequeEstado.equals("R") && !LAR_ChequeEstado.equals("T")){
				int C_Payment_ID = obtenerPayment(this.getLAR_Cheque_ID(), true, null);
				String sql = "SELECT IsOkChequeTercero(?::numeric, ?::timestamp)";
				String okCheque = DB.getSQLValueString(get_TrxName(), sql , new Object[]{C_Payment_ID, this.getFechaCobro()});
				log.info("sql IsOkChequeTercero. sql= " + sql + " C_Payment_ID=" + C_Payment_ID + " FechaCobro=" + this.getFechaCobro());
				if(okCheque==null || !okCheque.equalsIgnoreCase("Y")){
					Log.info("Error: " + okCheque);
					throw new Exception ("Error al registrar cheque. " + okCheque);
				}
			}
		
		}
		catch(Exception ex){
	
			ok = false;
		}
	
		return ok;
	}

	// endregion Roca

	/**	Logger	*/
	private static CLogger s_log = CLogger.getCLogger (MLARCheque.class);

	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MLARCheque[")
			.append(get_ID()).append(",")
			.append(",Banco=").append(getLAR_Banco_ID())
			.append(",Cheq.Nro=").append(getChequeNo())
			.append(",Titular=").append(getTitular())
			.append(",Importe=").append(getAmount())
			.append ("]");
		return sb.toString ();
	}	//	toString
}	//	MLARCheque
