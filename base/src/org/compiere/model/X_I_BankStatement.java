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
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;
import org.compiere.util.Env;

/** Generated Model for I_BankStatement
 *  @author Adempiere (generated) 
 *  @version Release 3.4.0s - $Id$ */
public class X_I_BankStatement extends PO implements I_I_BankStatement, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    /** Standard Constructor */
    public X_I_BankStatement (Properties ctx, int I_BankStatement_ID, String trxName)
    {
      super (ctx, I_BankStatement_ID, trxName);
      /** if (I_BankStatement_ID == 0)
        {
			setI_BankStatement_ID (0);
			setI_IsImported (false);
        } */
    }

    /** Load Constructor */
    public X_I_BankStatement (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 2 - Client 
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
      StringBuffer sb = new StringBuffer ("X_I_BankStatement[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Business Partner Key.
		@param BPartnerValue 
		Key of the Business Partner
	  */
	public void setBPartnerValue (String BPartnerValue)
	{

		if (BPartnerValue != null && BPartnerValue.length() > 40)
		{
			log.warning("Length > 40 - truncated");
			BPartnerValue = BPartnerValue.substring(0, 40);
		}
		set_Value (COLUMNNAME_BPartnerValue, BPartnerValue);
	}

	/** Get Business Partner Key.
		@return Key of the Business Partner
	  */
	public String getBPartnerValue () 
	{
		return (String)get_Value(COLUMNNAME_BPartnerValue);
	}

	/** Set Bank Account No.
		@param BankAccountNo 
		Bank Account Number
	  */
	public void setBankAccountNo (String BankAccountNo)
	{

		if (BankAccountNo != null && BankAccountNo.length() > 20)
		{
			log.warning("Length > 20 - truncated");
			BankAccountNo = BankAccountNo.substring(0, 20);
		}
		set_Value (COLUMNNAME_BankAccountNo, BankAccountNo);
	}

	/** Get Bank Account No.
		@return Bank Account Number
	  */
	public String getBankAccountNo () 
	{
		return (String)get_Value(COLUMNNAME_BankAccountNo);
	}

	public I_C_BPartner getC_BPartner() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_C_BPartner.Table_Name);
        I_C_BPartner result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_C_BPartner)constructor.newInstance(new Object[] {getCtx(), new Integer(getC_BPartner_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BankAccount getC_BankAccount() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_C_BankAccount.Table_Name);
        I_C_BankAccount result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_C_BankAccount)constructor.newInstance(new Object[] {getCtx(), new Integer(getC_BankAccount_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Bank Account.
		@param C_BankAccount_ID 
		Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID)
	{
		if (C_BankAccount_ID < 1) 
			set_Value (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_Value (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
	}

	/** Get Bank Account.
		@return Account at the Bank
	  */
	public int getC_BankAccount_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BankStatementLine getC_BankStatementLine() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_C_BankStatementLine.Table_Name);
        I_C_BankStatementLine result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_C_BankStatementLine)constructor.newInstance(new Object[] {getCtx(), new Integer(getC_BankStatementLine_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Bank statement line.
		@param C_BankStatementLine_ID 
		Line on a statement from this Bank
	  */
	public void setC_BankStatementLine_ID (int C_BankStatementLine_ID)
	{
		if (C_BankStatementLine_ID < 1) 
			set_Value (COLUMNNAME_C_BankStatementLine_ID, null);
		else 
			set_Value (COLUMNNAME_C_BankStatementLine_ID, Integer.valueOf(C_BankStatementLine_ID));
	}

	/** Get Bank statement line.
		@return Line on a statement from this Bank
	  */
	public int getC_BankStatementLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankStatementLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BankStatement getC_BankStatement() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_C_BankStatement.Table_Name);
        I_C_BankStatement result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_C_BankStatement)constructor.newInstance(new Object[] {getCtx(), new Integer(getC_BankStatement_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Bank Statement.
		@param C_BankStatement_ID 
		Bank Statement of account
	  */
	public void setC_BankStatement_ID (int C_BankStatement_ID)
	{
		if (C_BankStatement_ID < 1) 
			set_Value (COLUMNNAME_C_BankStatement_ID, null);
		else 
			set_Value (COLUMNNAME_C_BankStatement_ID, Integer.valueOf(C_BankStatement_ID));
	}

	/** Get Bank Statement.
		@return Bank Statement of account
	  */
	public int getC_BankStatement_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankStatement_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Charge getC_Charge() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_C_Charge.Table_Name);
        I_C_Charge result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_C_Charge)constructor.newInstance(new Object[] {getCtx(), new Integer(getC_Charge_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Charge.
		@param C_Charge_ID 
		Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID)
	{
		if (C_Charge_ID < 1) 
			set_Value (COLUMNNAME_C_Charge_ID, null);
		else 
			set_Value (COLUMNNAME_C_Charge_ID, Integer.valueOf(C_Charge_ID));
	}

	/** Get Charge.
		@return Additional document charges
	  */
	public int getC_Charge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Charge_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Currency getC_Currency() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_C_Currency.Table_Name);
        I_C_Currency result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_C_Currency)constructor.newInstance(new Object[] {getCtx(), new Integer(getC_Currency_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Currency.
		@param C_Currency_ID 
		The Currency for this record
	  */
	public void setC_Currency_ID (int C_Currency_ID)
	{
		if (C_Currency_ID < 1) 
			set_Value (COLUMNNAME_C_Currency_ID, null);
		else 
			set_Value (COLUMNNAME_C_Currency_ID, Integer.valueOf(C_Currency_ID));
	}

	/** Get Currency.
		@return The Currency for this record
	  */
	public int getC_Currency_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Currency_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Invoice getC_Invoice() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_C_Invoice.Table_Name);
        I_C_Invoice result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_C_Invoice)constructor.newInstance(new Object[] {getCtx(), new Integer(getC_Invoice_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_Value (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_Value (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
			set_Value (COLUMNNAME_C_Payment_ID, null);
		else 
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

	/** Set Charge amount.
		@param ChargeAmt 
		Charge Amount
	  */
	public void setChargeAmt (BigDecimal ChargeAmt)
	{
		set_Value (COLUMNNAME_ChargeAmt, ChargeAmt);
	}

	/** Get Charge amount.
		@return Charge Amount
	  */
	public BigDecimal getChargeAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ChargeAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Charge Name.
		@param ChargeName 
		Name of the Charge
	  */
	public void setChargeName (String ChargeName)
	{

		if (ChargeName != null && ChargeName.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			ChargeName = ChargeName.substring(0, 60);
		}
		set_Value (COLUMNNAME_ChargeName, ChargeName);
	}

	/** Get Charge Name.
		@return Name of the Charge
	  */
	public String getChargeName () 
	{
		return (String)get_Value(COLUMNNAME_ChargeName);
	}

	/** Set Create Payment.
		@param CreatePayment Create Payment	  */
	public void setCreatePayment (String CreatePayment)
	{

		if (CreatePayment != null && CreatePayment.length() > 1)
		{
			log.warning("Length > 1 - truncated");
			CreatePayment = CreatePayment.substring(0, 1);
		}
		set_Value (COLUMNNAME_CreatePayment, CreatePayment);
	}

	/** Get Create Payment.
		@return Create Payment	  */
	public String getCreatePayment () 
	{
		return (String)get_Value(COLUMNNAME_CreatePayment);
	}

	/** Set Account Date.
		@param DateAcct 
		Accounting Date
	  */
	public void setDateAcct (Timestamp DateAcct)
	{
		set_Value (COLUMNNAME_DateAcct, DateAcct);
	}

	/** Get Account Date.
		@return Accounting Date
	  */
	public Timestamp getDateAcct () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateAcct);
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

	/** Set EFT Amount.
		@param EftAmt 
		Electronic Funds Transfer Amount
	  */
	public void setEftAmt (BigDecimal EftAmt)
	{
		set_Value (COLUMNNAME_EftAmt, EftAmt);
	}

	/** Get EFT Amount.
		@return Electronic Funds Transfer Amount
	  */
	public BigDecimal getEftAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_EftAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set EFT Check No.
		@param EftCheckNo 
		Electronic Funds Transfer Check No
	  */
	public void setEftCheckNo (String EftCheckNo)
	{

		if (EftCheckNo != null && EftCheckNo.length() > 20)
		{
			log.warning("Length > 20 - truncated");
			EftCheckNo = EftCheckNo.substring(0, 20);
		}
		set_Value (COLUMNNAME_EftCheckNo, EftCheckNo);
	}

	/** Get EFT Check No.
		@return Electronic Funds Transfer Check No
	  */
	public String getEftCheckNo () 
	{
		return (String)get_Value(COLUMNNAME_EftCheckNo);
	}

	/** Set EFT Currency.
		@param EftCurrency 
		Electronic Funds Transfer Currency
	  */
	public void setEftCurrency (String EftCurrency)
	{

		if (EftCurrency != null && EftCurrency.length() > 20)
		{
			log.warning("Length > 20 - truncated");
			EftCurrency = EftCurrency.substring(0, 20);
		}
		set_Value (COLUMNNAME_EftCurrency, EftCurrency);
	}

	/** Get EFT Currency.
		@return Electronic Funds Transfer Currency
	  */
	public String getEftCurrency () 
	{
		return (String)get_Value(COLUMNNAME_EftCurrency);
	}

	/** Set EFT Memo.
		@param EftMemo 
		Electronic Funds Transfer Memo
	  */
	public void setEftMemo (String EftMemo)
	{

		if (EftMemo != null && EftMemo.length() > 2000)
		{
			log.warning("Length > 2000 - truncated");
			EftMemo = EftMemo.substring(0, 2000);
		}
		set_Value (COLUMNNAME_EftMemo, EftMemo);
	}

	/** Get EFT Memo.
		@return Electronic Funds Transfer Memo
	  */
	public String getEftMemo () 
	{
		return (String)get_Value(COLUMNNAME_EftMemo);
	}

	/** Set EFT Payee.
		@param EftPayee 
		Electronic Funds Transfer Payee information
	  */
	public void setEftPayee (String EftPayee)
	{

		if (EftPayee != null && EftPayee.length() > 255)
		{
			log.warning("Length > 255 - truncated");
			EftPayee = EftPayee.substring(0, 255);
		}
		set_Value (COLUMNNAME_EftPayee, EftPayee);
	}

	/** Get EFT Payee.
		@return Electronic Funds Transfer Payee information
	  */
	public String getEftPayee () 
	{
		return (String)get_Value(COLUMNNAME_EftPayee);
	}

	/** Set EFT Payee Account.
		@param EftPayeeAccount 
		Electronic Funds Transfer Payyee Account Information
	  */
	public void setEftPayeeAccount (String EftPayeeAccount)
	{

		if (EftPayeeAccount != null && EftPayeeAccount.length() > 40)
		{
			log.warning("Length > 40 - truncated");
			EftPayeeAccount = EftPayeeAccount.substring(0, 40);
		}
		set_Value (COLUMNNAME_EftPayeeAccount, EftPayeeAccount);
	}

	/** Get EFT Payee Account.
		@return Electronic Funds Transfer Payyee Account Information
	  */
	public String getEftPayeeAccount () 
	{
		return (String)get_Value(COLUMNNAME_EftPayeeAccount);
	}

	/** Set EFT Reference.
		@param EftReference 
		Electronic Funds Transfer Reference
	  */
	public void setEftReference (String EftReference)
	{

		if (EftReference != null && EftReference.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			EftReference = EftReference.substring(0, 60);
		}
		set_Value (COLUMNNAME_EftReference, EftReference);
	}

	/** Get EFT Reference.
		@return Electronic Funds Transfer Reference
	  */
	public String getEftReference () 
	{
		return (String)get_Value(COLUMNNAME_EftReference);
	}

	/** Set EFT Statement Date.
		@param EftStatementDate 
		Electronic Funds Transfer Statement Date
	  */
	public void setEftStatementDate (Timestamp EftStatementDate)
	{
		set_Value (COLUMNNAME_EftStatementDate, EftStatementDate);
	}

	/** Get EFT Statement Date.
		@return Electronic Funds Transfer Statement Date
	  */
	public Timestamp getEftStatementDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_EftStatementDate);
	}

	/** Set EFT Statement Line Date.
		@param EftStatementLineDate 
		Electronic Funds Transfer Statement Line Date
	  */
	public void setEftStatementLineDate (Timestamp EftStatementLineDate)
	{
		set_Value (COLUMNNAME_EftStatementLineDate, EftStatementLineDate);
	}

	/** Get EFT Statement Line Date.
		@return Electronic Funds Transfer Statement Line Date
	  */
	public Timestamp getEftStatementLineDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_EftStatementLineDate);
	}

	/** Set EFT Statement Reference.
		@param EftStatementReference 
		Electronic Funds Transfer Statement Reference
	  */
	public void setEftStatementReference (String EftStatementReference)
	{

		if (EftStatementReference != null && EftStatementReference.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			EftStatementReference = EftStatementReference.substring(0, 60);
		}
		set_Value (COLUMNNAME_EftStatementReference, EftStatementReference);
	}

	/** Get EFT Statement Reference.
		@return Electronic Funds Transfer Statement Reference
	  */
	public String getEftStatementReference () 
	{
		return (String)get_Value(COLUMNNAME_EftStatementReference);
	}

	/** Set EFT Trx ID.
		@param EftTrxID 
		Electronic Funds Transfer Transaction ID
	  */
	public void setEftTrxID (String EftTrxID)
	{

		if (EftTrxID != null && EftTrxID.length() > 40)
		{
			log.warning("Length > 40 - truncated");
			EftTrxID = EftTrxID.substring(0, 40);
		}
		set_Value (COLUMNNAME_EftTrxID, EftTrxID);
	}

	/** Get EFT Trx ID.
		@return Electronic Funds Transfer Transaction ID
	  */
	public String getEftTrxID () 
	{
		return (String)get_Value(COLUMNNAME_EftTrxID);
	}

	/** Set EFT Trx Type.
		@param EftTrxType 
		Electronic Funds Transfer Transaction Type
	  */
	public void setEftTrxType (String EftTrxType)
	{

		if (EftTrxType != null && EftTrxType.length() > 20)
		{
			log.warning("Length > 20 - truncated");
			EftTrxType = EftTrxType.substring(0, 20);
		}
		set_Value (COLUMNNAME_EftTrxType, EftTrxType);
	}

	/** Get EFT Trx Type.
		@return Electronic Funds Transfer Transaction Type
	  */
	public String getEftTrxType () 
	{
		return (String)get_Value(COLUMNNAME_EftTrxType);
	}

	/** Set EFT Effective Date.
		@param EftValutaDate 
		Electronic Funds Transfer Valuta (effective) Date
	  */
	public void setEftValutaDate (Timestamp EftValutaDate)
	{
		set_Value (COLUMNNAME_EftValutaDate, EftValutaDate);
	}

	/** Get EFT Effective Date.
		@return Electronic Funds Transfer Valuta (effective) Date
	  */
	public Timestamp getEftValutaDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_EftValutaDate);
	}

	/** Set ISO Currency Code.
		@param ISO_Code 
		Three letter ISO 4217 Code of the Currency
	  */
	public void setISO_Code (String ISO_Code)
	{

		if (ISO_Code != null && ISO_Code.length() > 3)
		{
			log.warning("Length > 3 - truncated");
			ISO_Code = ISO_Code.substring(0, 3);
		}
		set_Value (COLUMNNAME_ISO_Code, ISO_Code);
	}

	/** Get ISO Currency Code.
		@return Three letter ISO 4217 Code of the Currency
	  */
	public String getISO_Code () 
	{
		return (String)get_Value(COLUMNNAME_ISO_Code);
	}

	/** Set Import Bank Statement.
		@param I_BankStatement_ID 
		Import of the Bank Statement
	  */
	public void setI_BankStatement_ID (int I_BankStatement_ID)
	{
		if (I_BankStatement_ID < 1)
			 throw new IllegalArgumentException ("I_BankStatement_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_I_BankStatement_ID, Integer.valueOf(I_BankStatement_ID));
	}

	/** Get Import Bank Statement.
		@return Import of the Bank Statement
	  */
	public int getI_BankStatement_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_I_BankStatement_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Import Error Message.
		@param I_ErrorMsg 
		Messages generated from import process
	  */
	public void setI_ErrorMsg (String I_ErrorMsg)
	{

		if (I_ErrorMsg != null && I_ErrorMsg.length() > 2000)
		{
			log.warning("Length > 2000 - truncated");
			I_ErrorMsg = I_ErrorMsg.substring(0, 2000);
		}
		set_Value (COLUMNNAME_I_ErrorMsg, I_ErrorMsg);
	}

	/** Get Import Error Message.
		@return Messages generated from import process
	  */
	public String getI_ErrorMsg () 
	{
		return (String)get_Value(COLUMNNAME_I_ErrorMsg);
	}

	/** Set Imported.
		@param I_IsImported 
		Has this import been processed
	  */
	public void setI_IsImported (boolean I_IsImported)
	{
		set_Value (COLUMNNAME_I_IsImported, Boolean.valueOf(I_IsImported));
	}

	/** Get Imported.
		@return Has this import been processed
	  */
	public boolean isI_IsImported () 
	{
		Object oo = get_Value(COLUMNNAME_I_IsImported);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Interest Amount.
		@param InterestAmt 
		Interest Amount
	  */
	public void setInterestAmt (BigDecimal InterestAmt)
	{
		set_Value (COLUMNNAME_InterestAmt, InterestAmt);
	}

	/** Get Interest Amount.
		@return Interest Amount
	  */
	public BigDecimal getInterestAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_InterestAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Invoice Document No.
		@param InvoiceDocumentNo 
		Document Number of the Invoice
	  */
	public void setInvoiceDocumentNo (String InvoiceDocumentNo)
	{

		if (InvoiceDocumentNo != null && InvoiceDocumentNo.length() > 30)
		{
			log.warning("Length > 30 - truncated");
			InvoiceDocumentNo = InvoiceDocumentNo.substring(0, 30);
		}
		set_Value (COLUMNNAME_InvoiceDocumentNo, InvoiceDocumentNo);
	}

	/** Get Invoice Document No.
		@return Document Number of the Invoice
	  */
	public String getInvoiceDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_InvoiceDocumentNo);
	}

	/** Set Reversal.
		@param IsReversal 
		This is a reversing transaction
	  */
	public void setIsReversal (boolean IsReversal)
	{
		set_Value (COLUMNNAME_IsReversal, Boolean.valueOf(IsReversal));
	}

	/** Get Reversal.
		@return This is a reversing transaction
	  */
	public boolean isReversal () 
	{
		Object oo = get_Value(COLUMNNAME_IsReversal);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Line No.
		@param Line 
		Unique line for this document
	  */
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Line No.
		@return Unique line for this document
	  */
	public int getLine () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Line Description.
		@param LineDescription 
		Description of the Line
	  */
	public void setLineDescription (String LineDescription)
	{

		if (LineDescription != null && LineDescription.length() > 255)
		{
			log.warning("Length > 255 - truncated");
			LineDescription = LineDescription.substring(0, 255);
		}
		set_Value (COLUMNNAME_LineDescription, LineDescription);
	}

	/** Get Line Description.
		@return Description of the Line
	  */
	public String getLineDescription () 
	{
		return (String)get_Value(COLUMNNAME_LineDescription);
	}

	/** Set Match Statement.
		@param MatchStatement Match Statement	  */
	public void setMatchStatement (String MatchStatement)
	{

		if (MatchStatement != null && MatchStatement.length() > 1)
		{
			log.warning("Length > 1 - truncated");
			MatchStatement = MatchStatement.substring(0, 1);
		}
		set_Value (COLUMNNAME_MatchStatement, MatchStatement);
	}

	/** Get Match Statement.
		@return Match Statement	  */
	public String getMatchStatement () 
	{
		return (String)get_Value(COLUMNNAME_MatchStatement);
	}

	/** Set Memo.
		@param Memo 
		Memo Text
	  */
	public void setMemo (String Memo)
	{

		if (Memo != null && Memo.length() > 255)
		{
			log.warning("Length > 255 - truncated");
			Memo = Memo.substring(0, 255);
		}
		set_Value (COLUMNNAME_Memo, Memo);
	}

	/** Get Memo.
		@return Memo Text
	  */
	public String getMemo () 
	{
		return (String)get_Value(COLUMNNAME_Memo);
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{

		if (Name != null && Name.length() > 60)
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

	/** Set Payment Document No.
		@param PaymentDocumentNo 
		Document number of the Payment
	  */
	public void setPaymentDocumentNo (String PaymentDocumentNo)
	{

		if (PaymentDocumentNo != null && PaymentDocumentNo.length() > 30)
		{
			log.warning("Length > 30 - truncated");
			PaymentDocumentNo = PaymentDocumentNo.substring(0, 30);
		}
		set_Value (COLUMNNAME_PaymentDocumentNo, PaymentDocumentNo);
	}

	/** Get Payment Document No.
		@return Document number of the Payment
	  */
	public String getPaymentDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_PaymentDocumentNo);
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Reference No.
		@param ReferenceNo 
		Your customer or vendor number at the Business Partner's site
	  */
	public void setReferenceNo (String ReferenceNo)
	{

		if (ReferenceNo != null && ReferenceNo.length() > 40)
		{
			log.warning("Length > 40 - truncated");
			ReferenceNo = ReferenceNo.substring(0, 40);
		}
		set_Value (COLUMNNAME_ReferenceNo, ReferenceNo);
	}

	/** Get Reference No.
		@return Your customer or vendor number at the Business Partner's site
	  */
	public String getReferenceNo () 
	{
		return (String)get_Value(COLUMNNAME_ReferenceNo);
	}

	/** Set Routing No.
		@param RoutingNo 
		Bank Routing Number
	  */
	public void setRoutingNo (String RoutingNo)
	{

		if (RoutingNo != null && RoutingNo.length() > 20)
		{
			log.warning("Length > 20 - truncated");
			RoutingNo = RoutingNo.substring(0, 20);
		}
		set_Value (COLUMNNAME_RoutingNo, RoutingNo);
	}

	/** Get Routing No.
		@return Bank Routing Number
	  */
	public String getRoutingNo () 
	{
		return (String)get_Value(COLUMNNAME_RoutingNo);
	}

	/** Set Statement date.
		@param StatementDate 
		Date of the statement
	  */
	public void setStatementDate (Timestamp StatementDate)
	{
		set_Value (COLUMNNAME_StatementDate, StatementDate);
	}

	/** Get Statement date.
		@return Date of the statement
	  */
	public Timestamp getStatementDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_StatementDate);
	}

	/** Set Statement Line Date.
		@param StatementLineDate 
		Date of the Statement Line
	  */
	public void setStatementLineDate (Timestamp StatementLineDate)
	{
		set_Value (COLUMNNAME_StatementLineDate, StatementLineDate);
	}

	/** Get Statement Line Date.
		@return Date of the Statement Line
	  */
	public Timestamp getStatementLineDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_StatementLineDate);
	}

	/** Set Statement amount.
		@param StmtAmt 
		Statement Amount
	  */
	public void setStmtAmt (BigDecimal StmtAmt)
	{
		set_Value (COLUMNNAME_StmtAmt, StmtAmt);
	}

	/** Get Statement amount.
		@return Statement Amount
	  */
	public BigDecimal getStmtAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_StmtAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Transaction Amount.
		@param TrxAmt 
		Amount of a transaction
	  */
	public void setTrxAmt (BigDecimal TrxAmt)
	{
		set_Value (COLUMNNAME_TrxAmt, TrxAmt);
	}

	/** Get Transaction Amount.
		@return Amount of a transaction
	  */
	public BigDecimal getTrxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TrxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** TrxType AD_Reference_ID=215 */
	public static final int TRXTYPE_AD_Reference_ID=215;
	/** Sales = S */
	public static final String TRXTYPE_Sales = "S";
	/** Delayed Capture = D */
	public static final String TRXTYPE_DelayedCapture = "D";
	/** Credit (Payment) = C */
	public static final String TRXTYPE_CreditPayment = "C";
	/** Voice Authorization = F */
	public static final String TRXTYPE_VoiceAuthorization = "F";
	/** Authorization = A */
	public static final String TRXTYPE_Authorization = "A";
	/** Void = V */
	public static final String TRXTYPE_Void = "V";
	/** Set Transaction Type.
		@param TrxType 
		Type of credit card transaction
	  */
	public void setTrxType (String TrxType)
	{

		if (TrxType == null || TrxType.equals("S") || TrxType.equals("D") || TrxType.equals("C") || TrxType.equals("F") || TrxType.equals("A") || TrxType.equals("V")); else throw new IllegalArgumentException ("TrxType Invalid value - " + TrxType + " - Reference_ID=215 - S - D - C - F - A - V");
		if (TrxType != null && TrxType.length() > 20)
		{
			log.warning("Length > 20 - truncated");
			TrxType = TrxType.substring(0, 20);
		}
		set_Value (COLUMNNAME_TrxType, TrxType);
	}

	/** Get Transaction Type.
		@return Type of credit card transaction
	  */
	public String getTrxType () 
	{
		return (String)get_Value(COLUMNNAME_TrxType);
	}

	/** Set Effective date.
		@param ValutaDate 
		Date when money is available
	  */
	public void setValutaDate (Timestamp ValutaDate)
	{
		set_Value (COLUMNNAME_ValutaDate, ValutaDate);
	}

	/** Get Effective date.
		@return Date when money is available
	  */
	public Timestamp getValutaDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValutaDate);
	}
}