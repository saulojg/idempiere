package org.compiere.model;

import java.sql.ResultSet;
import java.util.Properties;

@org.adempiere.base.Model(table = X_M_ShippingTransactionLine.Table_Name)
public class MShippingTransactionLine extends X_M_ShippingTransactionLine 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8148869412130244360L;

	public MShippingTransactionLine(Properties ctx, int M_ShippingTransactionLine_ID, String trxName) 
	{
		super(ctx, M_ShippingTransactionLine_ID, trxName);
	}
	
	public MShippingTransactionLine(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
}
