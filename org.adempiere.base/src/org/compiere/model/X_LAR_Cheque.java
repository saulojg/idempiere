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

/** Generated Model for LAR_Cheque
 *  @author Adempiere (generated) 
 *  @version Release 3.4.0s - $Id$ */
public class X_LAR_Cheque extends PO implements I_LAR_Cheque, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    /** Standard Constructor */
    public X_LAR_Cheque (Properties ctx, int LAR_Cheque_ID, String trxName)
    {
      super (ctx, LAR_Cheque_ID, trxName);
      /** if (LAR_Cheque_ID == 0)
        {
			setAmount (Env.ZERO);
			setC_Currency_ID (0);
			setChequeNo (null);
			setFechaCobro (new Timestamp(System.currentTimeMillis()));
			setFechaEmision (new Timestamp(System.currentTimeMillis()));
// @#Date@
			setFechaRecibido (new Timestamp(System.currentTimeMillis()));
// @#Date@
			setIsSelected (false);
			setLAR_Banco_ID (0);
			setLAR_ChequeEstado (null);
			setLAR_Cheque_ID (0);
			setProcessed (false);
			setTipoCheque (null);
// T
        } */
    }

    /** Load Constructor */
    public X_LAR_Cheque (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LAR_Cheque[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amount 
		Amount in a defined currency
	  */
	public void setAmount (BigDecimal Amount)
	{
		if (Amount == null)
			throw new IllegalArgumentException ("Amount is mandatory.");
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
			 throw new IllegalArgumentException ("C_Currency_ID is mandatory.");
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

	/** Set ChequeNo.
		@param ChequeNo ChequeNo	  */
	public void setChequeNo (String ChequeNo)
	{
		if (ChequeNo == null)
			throw new IllegalArgumentException ("ChequeNo is mandatory.");

		if (ChequeNo.length() > 30)
		{
			log.warning("Length > 30 - truncated");
			ChequeNo = ChequeNo.substring(0, 30);
		}
		set_Value (COLUMNNAME_ChequeNo, ChequeNo);
	}

	/** Get ChequeNo.
		@return ChequeNo	  */
	public String getChequeNo () 
	{
		return (String)get_Value(COLUMNNAME_ChequeNo);
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

	/** CuentaDeposito_ID AD_Reference_ID=2000013 */
	public static final int CUENTADEPOSITO_ID_AD_Reference_ID=2000013;
	/** Set CuentaDeposito_ID.
		@param CuentaDeposito_ID CuentaDeposito_ID	  */
	public void setCuentaDeposito_ID (int CuentaDeposito_ID)
	{
		if (CuentaDeposito_ID < 1) 
			set_Value (COLUMNNAME_CuentaDeposito_ID, null);
		else 
			set_Value (COLUMNNAME_CuentaDeposito_ID, Integer.valueOf(CuentaDeposito_ID));
	}

	/** Get CuentaDeposito_ID.
		@return CuentaDeposito_ID	  */
	public int getCuentaDeposito_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CuentaDeposito_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** CuentaEmision_ID AD_Reference_ID=2000013 */
	public static final int CUENTAEMISION_ID_AD_Reference_ID=2000013;
	/** Set CuentaEmision_ID.
		@param CuentaEmision_ID CuentaEmision_ID	  */
	public void setCuentaEmision_ID (int CuentaEmision_ID)
	{
		if (CuentaEmision_ID < 1) 
			set_Value (COLUMNNAME_CuentaEmision_ID, null);
		else 
			set_Value (COLUMNNAME_CuentaEmision_ID, Integer.valueOf(CuentaEmision_ID));
	}

	/** Get CuentaEmision_ID.
		@return CuentaEmision_ID	  */
	public int getCuentaEmision_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CuentaEmision_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CuentaNo.
		@param CuentaNo CuentaNo	  */
	public void setCuentaNo (String CuentaNo)
	{

		if (CuentaNo != null && CuentaNo.length() > 30)
		{
			log.warning("Length > 30 - truncated");
			CuentaNo = CuentaNo.substring(0, 30);
		}
		set_Value (COLUMNNAME_CuentaNo, CuentaNo);
	}

	/** Get CuentaNo.
		@return CuentaNo	  */
	public String getCuentaNo () 
	{
		return (String)get_Value(COLUMNNAME_CuentaNo);
	}

	/** Set DeQuien.
		@param DeQuien DeQuien	  */
	public void setDeQuien (String DeQuien)
	{

		if (DeQuien != null && DeQuien.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			DeQuien = DeQuien.substring(0, 60);
		}
		set_Value (COLUMNNAME_DeQuien, DeQuien);
	}

	/** Get DeQuien.
		@return DeQuien	  */
	public String getDeQuien () 
	{
		return (String)get_Value(COLUMNNAME_DeQuien);
	}

	/** Set Detalle.
		@param Detalle Detalle	  */
	public void setDetalle (String Detalle)
	{
		throw new IllegalArgumentException ("Detalle is virtual column");	}

	/** Get Detalle.
		@return Detalle	  */
	public String getDetalle () 
	{
		return (String)get_Value(COLUMNNAME_Detalle);
	}

	/** Set FechaAcreditado.
		@param FechaAcreditado FechaAcreditado	  */
	public void setFechaAcreditado (Timestamp FechaAcreditado)
	{
		set_Value (COLUMNNAME_FechaAcreditado, FechaAcreditado);
	}

	/** Get FechaAcreditado.
		@return FechaAcreditado	  */
	public Timestamp getFechaAcreditado () 
	{
		return (Timestamp)get_Value(COLUMNNAME_FechaAcreditado);
	}

	/** Set FechaCobro.
		@param FechaCobro FechaCobro	  */
	public void setFechaCobro (Timestamp FechaCobro)
	{
		if (FechaCobro == null)
			throw new IllegalArgumentException ("FechaCobro is mandatory.");
		set_Value (COLUMNNAME_FechaCobro, FechaCobro);
	}

	/** Get FechaCobro.
		@return FechaCobro	  */
	public Timestamp getFechaCobro () 
	{
		return (Timestamp)get_Value(COLUMNNAME_FechaCobro);
	}

	/** Set FechaEmision.
		@param FechaEmision FechaEmision	  */
	public void setFechaEmision (Timestamp FechaEmision)
	{
		if (FechaEmision == null)
			throw new IllegalArgumentException ("FechaEmision is mandatory.");
		set_Value (COLUMNNAME_FechaEmision, FechaEmision);
	}

	/** Get FechaEmision.
		@return FechaEmision	  */
	public Timestamp getFechaEmision () 
	{
		return (Timestamp)get_Value(COLUMNNAME_FechaEmision);
	}

	/** Set FechaRecibido.
		@param FechaRecibido FechaRecibido	  */
	public void setFechaRecibido (Timestamp FechaRecibido)
	{
		if (FechaRecibido == null)
			throw new IllegalArgumentException ("FechaRecibido is mandatory.");
		set_Value (COLUMNNAME_FechaRecibido, FechaRecibido);
	}

	/** Get FechaRecibido.
		@return FechaRecibido	  */
	public Timestamp getFechaRecibido () 
	{
		return (Timestamp)get_Value(COLUMNNAME_FechaRecibido);
	}

	/** Set fechasalida.
		@param fechasalida fechasalida	  */
	public void setfechasalida (Timestamp fechasalida)
	{
		set_Value (COLUMNNAME_fechasalida, fechasalida);
	}

	/** Get fechasalida.
		@return fechasalida	  */
	public Timestamp getfechasalida () 
	{
		return (Timestamp)get_Value(COLUMNNAME_fechasalida);
	}

	/** IN_BPartner_ID AD_Reference_ID=173 */
	public static final int IN_BPARTNER_ID_AD_Reference_ID=173;
	/** Set IN_BPartner_ID.
		@param IN_BPartner_ID IN_BPartner_ID	  */
	public void setIN_BPartner_ID (int IN_BPartner_ID)
	{
		if (IN_BPartner_ID < 1) 
			set_Value (COLUMNNAME_IN_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_IN_BPartner_ID, Integer.valueOf(IN_BPartner_ID));
	}

	/** Get IN_BPartner_ID.
		@return IN_BPartner_ID	  */
	public int getIN_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_IN_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set isAcreditado.
		@param isAcreditado isAcreditado	  */
	public void setisAcreditado (boolean isAcreditado)
	{
		set_Value (COLUMNNAME_isAcreditado, Boolean.valueOf(isAcreditado));
	}

	/** Get isAcreditado.
		@return isAcreditado	  */
	public boolean isAcreditado () 
	{
		Object oo = get_Value(COLUMNNAME_isAcreditado);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Selected.
		@param IsSelected Selected	  */
	public void setIsSelected (boolean IsSelected)
	{
		set_Value (COLUMNNAME_IsSelected, Boolean.valueOf(IsSelected));
	}

	/** Get Selected.
		@return Selected	  */
	public boolean isSelected () 
	{
		Object oo = get_Value(COLUMNNAME_IsSelected);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** LAR_Banco_ID AD_Reference_ID=2000009 */
	public static final int LAR_BANCO_ID_AD_Reference_ID=2000009;
	/** Set LAR_Banco_ID.
		@param LAR_Banco_ID LAR_Banco_ID	  */
	public void setLAR_Banco_ID (int LAR_Banco_ID)
	{
		if (LAR_Banco_ID < 1)
			 throw new IllegalArgumentException ("LAR_Banco_ID is mandatory.");
		set_Value (COLUMNNAME_LAR_Banco_ID, Integer.valueOf(LAR_Banco_ID));
	}

	/** Get LAR_Banco_ID.
		@return LAR_Banco_ID	  */
	public int getLAR_Banco_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LAR_Banco_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LAR_ChequeEstado AD_Reference_ID=2000010 */
	public static final int LAR_CHEQUEESTADO_AD_Reference_ID=2000010;
	/** Anulado = A */
	public static final String LAR_CHEQUEESTADO_Anulado = "A";
	/** En cartera = C */
	public static final String LAR_CHEQUEESTADO_EnCartera = "C";
	/** Depositado = D */
	public static final String LAR_CHEQUEESTADO_Depositado = "D";
	/** Cobrado = E */
	public static final String LAR_CHEQUEESTADO_Cobrado = "E";
	/** Emitido = F */
	public static final String LAR_CHEQUEESTADO_Emitido = "F";
	/** Rechazado = R */
	public static final String LAR_CHEQUEESTADO_Rechazado = "R";
	/** Seleccionado = S */
	public static final String LAR_CHEQUEESTADO_Seleccionado = "S";
	/** Transferido = T */
	public static final String LAR_CHEQUEESTADO_Transferido = "T";
	/** Set LAR_ChequeEstado.
		@param LAR_ChequeEstado LAR_ChequeEstado	  */
	public void setLAR_ChequeEstado (String LAR_ChequeEstado)
	{
		if (LAR_ChequeEstado == null) throw new IllegalArgumentException ("LAR_ChequeEstado is mandatory");
		if (LAR_ChequeEstado.equals("A") || LAR_ChequeEstado.equals("C") || LAR_ChequeEstado.equals("D") || LAR_ChequeEstado.equals("E") || LAR_ChequeEstado.equals("F") || LAR_ChequeEstado.equals("R") || LAR_ChequeEstado.equals("S") || LAR_ChequeEstado.equals("T")); else throw new IllegalArgumentException ("LAR_ChequeEstado Invalid value - " + LAR_ChequeEstado + " - Reference_ID=2000010 - A - C - D - E - F - R - S - T");
		if (LAR_ChequeEstado.length() > 1)
		{
			log.warning("Length > 1 - truncated");
			LAR_ChequeEstado = LAR_ChequeEstado.substring(0, 1);
		}
		set_Value (COLUMNNAME_LAR_ChequeEstado, LAR_ChequeEstado);
	}

	/** Get LAR_ChequeEstado.
		@return LAR_ChequeEstado	  */
	public String getLAR_ChequeEstado () 
	{
		return (String)get_Value(COLUMNNAME_LAR_ChequeEstado);
	}

	/** Set LAR_Cheque_ID.
		@param LAR_Cheque_ID LAR_Cheque_ID	  */
	public void setLAR_Cheque_ID (int LAR_Cheque_ID)
	{
		if (LAR_Cheque_ID < 1)
			 throw new IllegalArgumentException ("LAR_Cheque_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_LAR_Cheque_ID, Integer.valueOf(LAR_Cheque_ID));
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

	public I_LAR_Sucursal getLAR_Sucursal() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_LAR_Sucursal.Table_Name);
        I_LAR_Sucursal result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_LAR_Sucursal)constructor.newInstance(new Object[] {getCtx(), new Integer(getLAR_Sucursal_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set LAR_Sucursal.
		@param LAR_Sucursal_ID LAR_Sucursal	  */
	public void setLAR_Sucursal_ID (int LAR_Sucursal_ID)
	{
		if (LAR_Sucursal_ID < 1) 
			set_Value (COLUMNNAME_LAR_Sucursal_ID, null);
		else 
			set_Value (COLUMNNAME_LAR_Sucursal_ID, Integer.valueOf(LAR_Sucursal_ID));
	}

	/** Get LAR_Sucursal.
		@return LAR_Sucursal	  */
	public int getLAR_Sucursal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LAR_Sucursal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Observaciones.
		@param Observaciones Observaciones	  */
	public void setObservaciones (String Observaciones)
	{

		if (Observaciones != null && Observaciones.length() > 255)
		{
			log.warning("Length > 255 - truncated");
			Observaciones = Observaciones.substring(0, 255);
		}
		set_Value (COLUMNNAME_Observaciones, Observaciones);
	}

	/** Get Observaciones.
		@return Observaciones	  */
	public String getObservaciones () 
	{
		return (String)get_Value(COLUMNNAME_Observaciones);
	}

	/** OUT_BPartner_ID AD_Reference_ID=138 */
	public static final int OUT_BPARTNER_ID_AD_Reference_ID=138;
	/** Set OUT_BPartner_ID.
		@param OUT_BPartner_ID OUT_BPartner_ID	  */
	public void setOUT_BPartner_ID (int OUT_BPartner_ID)
	{
		if (OUT_BPartner_ID < 1) 
			set_Value (COLUMNNAME_OUT_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_OUT_BPartner_ID, Integer.valueOf(OUT_BPartner_ID));
	}

	/** Get OUT_BPartner_ID.
		@return OUT_BPartner_ID	  */
	public int getOUT_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_OUT_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Receptor.
		@param Receptor Receptor	  */
	public void setReceptor (String Receptor)
	{

		if (Receptor != null && Receptor.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			Receptor = Receptor.substring(0, 60);
		}
		set_Value (COLUMNNAME_Receptor, Receptor);
	}

	/** Get Receptor.
		@return Receptor	  */
	public String getReceptor () 
	{
		return (String)get_Value(COLUMNNAME_Receptor);
	}

	/** Set Sucursal.
		@param Sucursal Sucursal	  */
	public void setSucursal (String Sucursal)
	{

		if (Sucursal != null && Sucursal.length() > 30)
		{
			log.warning("Length > 30 - truncated");
			Sucursal = Sucursal.substring(0, 30);
		}
		set_Value (COLUMNNAME_Sucursal, Sucursal);
	}

	/** Get Sucursal.
		@return Sucursal	  */
	public String getSucursal () 
	{
		return (String)get_Value(COLUMNNAME_Sucursal);
	}

	/** TipoCheque AD_Reference_ID=2000011 */
	public static final int TIPOCHEQUE_AD_Reference_ID=2000011;
	/** Propio = P */
	public static final String TIPOCHEQUE_Propio = "P";
	/** Terceros = T */
	public static final String TIPOCHEQUE_Terceros = "T";
	/** Set TipoCheque.
		@param TipoCheque TipoCheque	  */
	public void setTipoCheque (String TipoCheque)
	{
		if (TipoCheque == null) throw new IllegalArgumentException ("TipoCheque is mandatory");
		if (TipoCheque.equals("P") || TipoCheque.equals("T")); else throw new IllegalArgumentException ("TipoCheque Invalid value - " + TipoCheque + " - Reference_ID=2000011 - P - T");
		if (TipoCheque.length() > 1)
		{
			log.warning("Length > 1 - truncated");
			TipoCheque = TipoCheque.substring(0, 1);
		}
		set_Value (COLUMNNAME_TipoCheque, TipoCheque);
	}

	/** Get TipoCheque.
		@return TipoCheque	  */
	public String getTipoCheque () 
	{
		return (String)get_Value(COLUMNNAME_TipoCheque);
	}

	/** Set Titular.
		@param Titular Titular	  */
	public void setTitular (String Titular)
	{

		if (Titular != null && Titular.length() > 30)
		{
			log.warning("Length > 30 - truncated");
			Titular = Titular.substring(0, 30);
		}
		set_Value (COLUMNNAME_Titular, Titular);
	}

	/** Get Titular.
		@return Titular	  */
	public String getTitular () 
	{
		return (String)get_Value(COLUMNNAME_Titular);
	}
}