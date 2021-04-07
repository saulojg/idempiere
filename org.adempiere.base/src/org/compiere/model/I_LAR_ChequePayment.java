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
import org.compiere.util.KeyNamePair;

/** Generated Interface for LAR_ChequePayment
 *  @author Trifon Trifonov (generated) 
 *  @version Release 3.4.0s
 */
public interface I_LAR_ChequePayment 
{

    /** TableName=LAR_ChequePayment */
    public static final String Table_Name = "LAR_ChequePayment";

    /** AD_Table_ID=2000069 */
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

    /** Column name LAR_Cheque_ID */
    public static final String COLUMNNAME_LAR_Cheque_ID = "LAR_Cheque_ID";

	/** Set LAR_Cheque_ID	  */
	public void setLAR_Cheque_ID (int LAR_Cheque_ID);

	/** Get LAR_Cheque_ID	  */
	public int getLAR_Cheque_ID();

	public I_LAR_Cheque getLAR_Cheque() throws Exception;

    /** Column name LAR_ChequePayment_ID */
    public static final String COLUMNNAME_LAR_ChequePayment_ID = "LAR_ChequePayment_ID";

	/** Set LAR_ChequePayment_ID	  */
	public void setLAR_ChequePayment_ID (int LAR_ChequePayment_ID);

	/** Get LAR_ChequePayment_ID	  */
	public int getLAR_ChequePayment_ID();
}
