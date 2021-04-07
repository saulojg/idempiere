package org.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 * 	LAR Cheques Payment User Model
 *	
 *  @author Alejandro Falcone
 *  @version $Id: MLARCheque.java,v 1.1 2008/03/10 afalcone Exp $
 */
public class MLARChequePayment extends X_LAR_ChequePayment
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2301937548595801327L;

	/**
	 * 	Get Payments Of Cheque (Obtiene todos los pagos a los que esta asignado un Cheque)
	 *	@param ctx context
	 *	@param C_Payment_ID id
	 *	@param trxName transaction
	 *	@return array
	 */
	public static MLARChequePayment[] getOfCheque (Properties ctx, int LAR_Cheque_ID, String trxName)
	{
		ArrayList<MLARChequePayment> list = new ArrayList<MLARChequePayment>();
		String sql = "SELECT * FROM LAR_ChequePayment WHERE LAR_Cheque_ID= ? ";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trxName);
			pstmt.setInt(1, LAR_Cheque_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MLARChequePayment(ctx,rs, trxName));
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
		MLARChequePayment[] retValue = new MLARChequePayment[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getOfCheque
	
	
	/**
	 * 	Standard Constructor
	 *	@param ctx context
	 *	@param LAR_ChequePayment_ID
	 *	@param trxName transaction
	 */
	//private static final long serialVersionUID = 8;
	public MLARChequePayment(Properties ctx, int LAR_ChequePayment_ID, String trxName) 
	{
		super(ctx, LAR_ChequePayment_ID, trxName);
		
	}	//	MLARChequePayment

	/**
	 * 	Load Constructor
	 *	@param ctx context
	 *	@param rs result set
	 *	@param trxName transaction
	 */
	public MLARChequePayment(Properties ctx, ResultSet rs, String trxName) 
	{
		super(ctx, rs, trxName);
	}	//	MLARChequePayment
	
		
	/**	Logger	*/
	private static CLogger s_log = CLogger.getCLogger (MLARChequePayment.class);

	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MLARChequePayment[")
			.append(get_ID()).append(",")
			.append(",Cheq.=").append(getLAR_Cheque_ID())
			.append(",Payment=").append(getC_Payment_ID())
			.append ("]");
		return sb.toString ();
	}	//	toString
}	//	MLARChequePayment
