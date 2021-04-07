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
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;
import org.compiere.util.KeyNamePair;
import org.compiere.model.I_LAR_PaymentRuleGroup;

/** Generated Model for LAR_PaymentRule
 *  @author Adempiere (generated) 
 *  @version Release 3.4.0s - $Id$ */
public class X_LAR_PaymentRule extends PO implements I_LAR_PaymentRule, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    /** Standard Constructor */
    public X_LAR_PaymentRule (Properties ctx, int LAR_PaymentRule_ID, String trxName)
    {
      super (ctx, LAR_PaymentRule_ID, trxName);
      /** if (LAR_PaymentRule_ID == 0)
        {
			setisPayable (false);
			setisReceivable (false);
			setIsSelectable (false);
			setLAR_PaymentRuleGroup_ID (0);
			setLAR_PaymentRule_ID (0);
			setName (null);
			setTenderType (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LAR_PaymentRule (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LAR_PaymentRule[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Credit Card.
		@param CreditCardType 
		Credit Card (Visa, MC, AmEx)
	  */
	public void setCreditCardType (boolean CreditCardType)
	{
		set_Value (COLUMNNAME_CreditCardType, Boolean.valueOf(CreditCardType));
	}

	/** Get Credit Card.
		@return Credit Card (Visa, MC, AmEx)
	  */
	public boolean isCreditCardType () 
	{
		Object oo = get_Value(COLUMNNAME_CreditCardType);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{

		if (Description != null && Description.length() > 255)
		{
			log.warning("Length > 255 - truncated");
			Description = Description.substring(0, 255);
		}
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Comment/Help.
		@param Help 
		Comment or Hint
	  */
	public void setHelp (String Help)
	{

		if (Help != null && Help.length() > 2000)
		{
			log.warning("Length > 2000 - truncated");
			Help = Help.substring(0, 2000);
		}
		set_Value (COLUMNNAME_Help, Help);
	}

	/** Get Comment/Help.
		@return Comment or Hint
	  */
	public String getHelp () 
	{
		return (String)get_Value(COLUMNNAME_Help);
	}

	/** Set isPayable.
		@param isPayable isPayable	  */
	public void setisPayable (boolean isPayable)
	{
		set_Value (COLUMNNAME_isPayable, Boolean.valueOf(isPayable));
	}

	/** Get isPayable.
		@return isPayable	  */
	public boolean isPayable () 
	{
		Object oo = get_Value(COLUMNNAME_isPayable);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set isReceivable.
		@param isReceivable isReceivable	  */
	public void setisReceivable (boolean isReceivable)
	{
		set_Value (COLUMNNAME_isReceivable, Boolean.valueOf(isReceivable));
	}

	/** Get isReceivable.
		@return isReceivable	  */
	public boolean isReceivable () 
	{
		Object oo = get_Value(COLUMNNAME_isReceivable);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set IsSelectable.
		@param IsSelectable IsSelectable	  */
	public void setIsSelectable (boolean IsSelectable)
	{
		set_Value (COLUMNNAME_IsSelectable, Boolean.valueOf(IsSelectable));
	}

	/** Get IsSelectable.
		@return IsSelectable	  */
	public boolean isSelectable () 
	{
		Object oo = get_Value(COLUMNNAME_IsSelectable);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public I_LAR_PaymentRuleGroup getLAR_PaymentRuleGroup() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_LAR_PaymentRuleGroup.Table_Name);
        I_LAR_PaymentRuleGroup result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_LAR_PaymentRuleGroup)constructor.newInstance(new Object[] {getCtx(), getLAR_PaymentRuleGroup_ID(), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set LAR_PaymentRuleGroup_ID.
		@param LAR_PaymentRuleGroup_ID LAR_PaymentRuleGroup_ID	  */
	public void setLAR_PaymentRuleGroup_ID (int LAR_PaymentRuleGroup_ID)
	{
		if (LAR_PaymentRuleGroup_ID < 1)
			 throw new IllegalArgumentException ("LAR_PaymentRuleGroup_ID is mandatory.");
		set_Value (COLUMNNAME_LAR_PaymentRuleGroup_ID, Integer.valueOf(LAR_PaymentRuleGroup_ID));
	}

	/** Get LAR_PaymentRuleGroup_ID.
		@return LAR_PaymentRuleGroup_ID	  */
	public int getLAR_PaymentRuleGroup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LAR_PaymentRuleGroup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LAR_PaymentRule_ID.
		@param LAR_PaymentRule_ID LAR_PaymentRule_ID	  */
	public void setLAR_PaymentRule_ID (int LAR_PaymentRule_ID)
	{
		if (LAR_PaymentRule_ID < 1)
			 throw new IllegalArgumentException ("LAR_PaymentRule_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_LAR_PaymentRule_ID, Integer.valueOf(LAR_PaymentRule_ID));
	}

	/** Get LAR_PaymentRule_ID.
		@return LAR_PaymentRule_ID	  */
	public int getLAR_PaymentRule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LAR_PaymentRule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		if (Name == null)
			throw new IllegalArgumentException ("Name is mandatory.");

		if (Name.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			Name = Name.substring(0, 60);
		}
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }

	/** TenderType AD_Reference_ID=214 */
	public static final int TENDERTYPE_AD_Reference_ID=214;
	/** Credit Card = C */
	public static final String TENDERTYPE_CreditCard = "C";
	/** Check = K */
	public static final String TENDERTYPE_Check = "K";
	/** Direct Deposit = A */
	public static final String TENDERTYPE_DirectDeposit = "A";
	/** Direct Debit = D */
	public static final String TENDERTYPE_DirectDebit = "D";
	/** Cash = E */
	public static final String TENDERTYPE_Cash = "E";
	/** Set Tender type.
		@param TenderType 
		Method of Payment
	  */
	public void setTenderType (String TenderType)
	{
		if (TenderType == null) throw new IllegalArgumentException ("TenderType is mandatory");
		if (TenderType.equals("C") || TenderType.equals("K") || TenderType.equals("A") || TenderType.equals("D") || TenderType.equals("E")); else throw new IllegalArgumentException ("TenderType Invalid value - " + TenderType + " - Reference_ID=214 - C - K - A - D - E");
		if (TenderType.length() > 1)
		{
			log.warning("Length > 1 - truncated");
			TenderType = TenderType.substring(0, 1);
		}
		set_Value (COLUMNNAME_TenderType, TenderType);
	}

	/** Get Tender type.
		@return Method of Payment
	  */
	public String getTenderType () 
	{
		return (String)get_Value(COLUMNNAME_TenderType);
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		if (Value == null)
			throw new IllegalArgumentException ("Value is mandatory.");

		if (Value.length() > 40)
		{
			log.warning("Length > 40 - truncated");
			Value = Value.substring(0, 40);
		}
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}