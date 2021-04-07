/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
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
/** Generated Model - DO NOT CHANGE */
package org.compiere.model;

import java.lang.reflect.Constructor;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;
import org.compiere.util.Env;

/** Generated Model for LAR_ChequePayment
 *  @author Adempiere (generated) 
 *  @version Release 3.4.0s - $Id$ */
public class X_LAR_ChequePayment extends PO implements I_LAR_ChequePayment, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    /** Standard Constructor */
    public X_LAR_ChequePayment (Properties ctx, int LAR_ChequePayment_ID, String trxName)
    {
      super (ctx, LAR_ChequePayment_ID, trxName);
      /** if (LAR_ChequePayment_ID == 0)
        {
			setC_Payment_ID (0);
			setLAR_Cheque_ID (0);
			setLAR_ChequePayment_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LAR_ChequePayment (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LAR_ChequePayment[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amount 
		Amount in a defined currency
	  */
	public void setAmount (BigDecimal Amount)
	{
		set_Value (COLUMNNAME_Amount, Amount);
	}

	/** Get Amount.
		@return Amount in a defined currency
	  */
	public BigDecimal getAmount () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amount);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_Payment getC_Payment() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_C_Payment.Table_Name);
        I_C_Payment result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_C_Payment)constructor.newInstance(new Object[] {getCtx(), new Integer(getC_Payment_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Payment.
		@param C_Payment_ID 
		Payment identifier
	  */
	public void setC_Payment_ID (int C_Payment_ID)
	{
		if (C_Payment_ID < 1)
			 throw new IllegalArgumentException ("C_Payment_ID is mandatory.");
		set_Value (COLUMNNAME_C_Payment_ID, Integer.valueOf(C_Payment_ID));
	}

	/** Get Payment.
		@return Payment identifier
	  */
	public int getC_Payment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Payment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LAR_Cheque getLAR_Cheque() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_LAR_Cheque.Table_Name);
        I_LAR_Cheque result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_LAR_Cheque)constructor.newInstance(new Object[] {getCtx(), new Integer(getLAR_Cheque_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set LAR_Cheque_ID.
		@param LAR_Cheque_ID LAR_Cheque_ID	  */
	public void setLAR_Cheque_ID (int LAR_Cheque_ID)
	{
		if (LAR_Cheque_ID < 1)
			 throw new IllegalArgumentException ("LAR_Cheque_ID is mandatory.");
		set_Value (COLUMNNAME_LAR_Cheque_ID, Integer.valueOf(LAR_Cheque_ID));
	}

	/** Get LAR_Cheque_ID.
		@return LAR_Cheque_ID	  */
	public int getLAR_Cheque_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LAR_Cheque_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LAR_ChequePayment_ID.
		@param LAR_ChequePayment_ID LAR_ChequePayment_ID	  */
	public void setLAR_ChequePayment_ID (int LAR_ChequePayment_ID)
	{
		if (LAR_ChequePayment_ID < 1)
			 throw new IllegalArgumentException ("LAR_ChequePayment_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_LAR_ChequePayment_ID, Integer.valueOf(LAR_ChequePayment_ID));
	}

	/** Get LAR_ChequePayment_ID.
		@return LAR_ChequePayment_ID	  */
	public int getLAR_ChequePayment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LAR_ChequePayment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}