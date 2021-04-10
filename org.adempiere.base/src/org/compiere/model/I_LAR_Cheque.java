/**********************************************************************
 * This file is part of Adempiere ERP Bazaar                          *
 * http://www.adempiere.org                                           *
 *                                                                    *
 * Copyright (C) Trifon Trifonov.                                     *
 * Copyright (C) Contributors                                         *
 *                                                                    *
 * This program is free software;
 you can redistribute it and/or      *
 * modify it under the terms of the GNU General Public License        *
 * as published by the Free Software Foundation;
 either version 2     *
 * of the License, or (at your option) any later version.             *
 *                                                                    *
 * This program is distributed in the hope that it will be useful,    *
 * but WITHOUT ANY WARRANTY;
 without even the implied warranty of     *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the       *
 * GNU General Public License for more details.                       *
 *                                                                    *
 * You should have received a copy of the GNU General Public License  *
 * along with this program;
 if not, write to the Free Software        *
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,         *
 * MA 02110-1301, USA.                                                *
 *                                                                    *
 * Contributors:                                                      *
 * - Trifon Trifonov (trifonnt@users.sourceforge.net)                 *
 *                                                                    *
 * Sponsors:                                                          *
 * - Company (http://www.site.com)                                    *
 **********************************************************************/
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LAR_Cheque
 *  @author Trifon Trifonov (generated) 
 *  @version Release 3.4.0s
 */
public interface I_LAR_Cheque 
{

    /** TableName=LAR_Cheque */
    public static final String Table_Name = "LAR_Cheque";

    /** AD_Table_ID=2000067 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name Amount */
    public static final String COLUMNNAME_Amount = "Amount";

	/** Set Amount.
	  * Amount in a defined currency
	  */
	public void setAmount (BigDecimal Amount);

	/** Get Amount.
	  * Amount in a defined currency
	  */
	public BigDecimal getAmount();

    /** Column name C_BankAccount_ID */
    public static final String COLUMNNAME_C_BankAccount_ID = "C_BankAccount_ID";

	/** Set Bank Account.
	  * Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID);

	/** Get Bank Account.
	  * Account at the Bank
	  */
	public int getC_BankAccount_ID();

	public I_C_BankAccount getC_BankAccount() throws Exception;

    /** Column name C_BankStatementLine_ID */
    public static final String COLUMNNAME_C_BankStatementLine_ID = "C_BankStatementLine_ID";

	/** Set Bank statement line.
	  * Line on a statement from this Bank
	  */
	public void setC_BankStatementLine_ID (int C_BankStatementLine_ID);

	/** Get Bank statement line.
	  * Line on a statement from this Bank
	  */
	public int getC_BankStatementLine_ID();

	public I_C_BankStatementLine getC_BankStatementLine() throws Exception;

    /** Column name C_Currency_ID */
    public static final String COLUMNNAME_C_Currency_ID = "C_Currency_ID";

	/** Set Currency.
	  * The Currency for this record
	  */
	public void setC_Currency_ID (int C_Currency_ID);

	/** Get Currency.
	  * The Currency for this record
	  */
	public int getC_Currency_ID();

	public I_C_Currency getC_Currency() throws Exception;

    /** Column name ChequeNo */
    public static final String COLUMNNAME_ChequeNo = "ChequeNo";

	/** Set ChequeNo	  */
	public void setChequeNo (String ChequeNo);

	/** Get ChequeNo	  */
	public String getChequeNo();

    /** Column name C_Payment_ID */
    public static final String COLUMNNAME_C_Payment_ID = "C_Payment_ID";

	/** Set Payment.
	  * Payment identifier
	  */
	public void setC_Payment_ID (int C_Payment_ID);

	/** Get Payment.
	  * Payment identifier
	  */
	public int getC_Payment_ID();

	public I_C_Payment getC_Payment() throws Exception;

    /** Column name CuentaDeposito_ID */
    public static final String COLUMNNAME_CuentaDeposito_ID = "CuentaDeposito_ID";

	/** Set CuentaDeposito_ID	  */
	public void setCuentaDeposito_ID (int CuentaDeposito_ID);

	/** Get CuentaDeposito_ID	  */
	public int getCuentaDeposito_ID();

    /** Column name CuentaEmision_ID */
    public static final String COLUMNNAME_CuentaEmision_ID = "CuentaEmision_ID";

	/** Set CuentaEmision_ID	  */
	public void setCuentaEmision_ID (int CuentaEmision_ID);

	/** Get CuentaEmision_ID	  */
	public int getCuentaEmision_ID();

    /** Column name CuentaNo */
    public static final String COLUMNNAME_CuentaNo = "CuentaNo";

	/** Set CuentaNo	  */
	public void setCuentaNo (String CuentaNo);

	/** Get CuentaNo	  */
	public String getCuentaNo();

    /** Column name DeQuien */
    public static final String COLUMNNAME_DeQuien = "DeQuien";

	/** Set DeQuien	  */
	public void setDeQuien (String DeQuien);

	/** Get DeQuien	  */
	public String getDeQuien();

    /** Column name Detalle */
    public static final String COLUMNNAME_Detalle = "Detalle";

	/** Set Detalle	  */
	public void setDetalle (String Detalle);

	/** Get Detalle	  */
	public String getDetalle();

    /** Column name FechaAcreditado */
    public static final String COLUMNNAME_FechaAcreditado = "FechaAcreditado";

	/** Set FechaAcreditado	  */
	public void setFechaAcreditado (Timestamp FechaAcreditado);

	/** Get FechaAcreditado	  */
	public Timestamp getFechaAcreditado();

    /** Column name FechaCobro */
    public static final String COLUMNNAME_FechaCobro = "FechaCobro";

	/** Set FechaCobro	  */
	public void setFechaCobro (Timestamp FechaCobro);

	/** Get FechaCobro	  */
	public Timestamp getFechaCobro();

    /** Column name FechaEmision */
    public static final String COLUMNNAME_FechaEmision = "FechaEmision";

	/** Set FechaEmision	  */
	public void setFechaEmision (Timestamp FechaEmision);

	/** Get FechaEmision	  */
	public Timestamp getFechaEmision();

    /** Column name FechaRecibido */
    public static final String COLUMNNAME_FechaRecibido = "FechaRecibido";

	/** Set FechaRecibido	  */
	public void setFechaRecibido (Timestamp FechaRecibido);

	/** Get FechaRecibido	  */
	public Timestamp getFechaRecibido();

    /** Column name fechasalida */
    public static final String COLUMNNAME_fechasalida = "fechasalida";

	/** Set fechasalida	  */
	public void setfechasalida (Timestamp fechasalida);

	/** Get fechasalida	  */
	public Timestamp getfechasalida();

    /** Column name IN_BPartner_ID */
    public static final String COLUMNNAME_IN_BPartner_ID = "IN_BPartner_ID";

	/** Set IN_BPartner_ID	  */
	public void setIN_BPartner_ID (int IN_BPartner_ID);

	/** Get IN_BPartner_ID	  */
	public int getIN_BPartner_ID();

    /** Column name isAcreditado */
    public static final String COLUMNNAME_isAcreditado = "isAcreditado";

	/** Set isAcreditado	  */
	public void setisAcreditado (boolean isAcreditado);

	/** Get isAcreditado	  */
	public boolean isAcreditado();

    /** Column name IsSelected */
    public static final String COLUMNNAME_IsSelected = "IsSelected";

	/** Set Selected	  */
	public void setIsSelected (boolean IsSelected);

	/** Get Selected	  */
	public boolean isSelected();

    /** Column name LAR_Banco_ID */
    public static final String COLUMNNAME_LAR_Banco_ID = "LAR_Banco_ID";

	/** Set LAR_Banco_ID	  */
	public void setLAR_Banco_ID (int LAR_Banco_ID);

	/** Get LAR_Banco_ID	  */
	public int getLAR_Banco_ID();

    /** Column name LAR_ChequeEstado */
    public static final String COLUMNNAME_LAR_ChequeEstado = "LAR_ChequeEstado";

	/** Set LAR_ChequeEstado	  */
	public void setLAR_ChequeEstado (String LAR_ChequeEstado);

	/** Get LAR_ChequeEstado	  */
	public String getLAR_ChequeEstado();

    /** Column name LAR_Cheque_ID */
    public static final String COLUMNNAME_LAR_Cheque_ID = "LAR_Cheque_ID";

	/** Set LAR_Cheque_ID	  */
	public void setLAR_Cheque_ID (int LAR_Cheque_ID);

	/** Get LAR_Cheque_ID	  */
	public int getLAR_Cheque_ID();

    /** Column name LAR_Sucursal_ID */
    public static final String COLUMNNAME_LAR_Sucursal_ID = "LAR_Sucursal_ID";

	/** Set LAR_Sucursal	  */
	public void setLAR_Sucursal_ID (int LAR_Sucursal_ID);

	/** Get LAR_Sucursal	  */
	public int getLAR_Sucursal_ID();

	public I_LAR_Sucursal getLAR_Sucursal() throws Exception;

    /** Column name Observaciones */
    public static final String COLUMNNAME_Observaciones = "Observaciones";

	/** Set Observaciones	  */
	public void setObservaciones (String Observaciones);

	/** Get Observaciones	  */
	public String getObservaciones();

    /** Column name OUT_BPartner_ID */
    public static final String COLUMNNAME_OUT_BPartner_ID = "OUT_BPartner_ID";

	/** Set OUT_BPartner_ID	  */
	public void setOUT_BPartner_ID (int OUT_BPartner_ID);

	/** Get OUT_BPartner_ID	  */
	public int getOUT_BPartner_ID();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

    /** Column name Receptor */
    public static final String COLUMNNAME_Receptor = "Receptor";

	/** Set Receptor	  */
	public void setReceptor (String Receptor);

	/** Get Receptor	  */
	public String getReceptor();

    /** Column name Sucursal */
    public static final String COLUMNNAME_Sucursal = "Sucursal";

	/** Set Sucursal	  */
	public void setSucursal (String Sucursal);

	/** Get Sucursal	  */
	public String getSucursal();

    /** Column name TipoCheque */
    public static final String COLUMNNAME_TipoCheque = "TipoCheque";

	/** Set TipoCheque	  */
	public void setTipoCheque (String TipoCheque);

	/** Get TipoCheque	  */
	public String getTipoCheque();

    /** Column name Titular */
    public static final String COLUMNNAME_Titular = "Titular";

	/** Set Titular	  */
	public void setTitular (String Titular);

	/** Get Titular	  */
	public String getTitular();
}
