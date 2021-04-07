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

/** Generated Interface for LAR_PaymentRule
 *  @author Trifon Trifonov (generated) 
 *  @version Release 3.4.0s
 */
public interface I_LAR_PaymentRule 
{

    /** TableName=LAR_PaymentRule */
    public static final String Table_Name = "LAR_PaymentRule";

    /** AD_Table_ID=2000058 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name CreditCardType */
    public static final String COLUMNNAME_CreditCardType = "CreditCardType";

	/** Set Credit Card.
	  * Credit Card (Visa, MC, AmEx)
	  */
	public void setCreditCardType (boolean CreditCardType);

	/** Get Credit Card.
	  * Credit Card (Visa, MC, AmEx)
	  */
	public boolean isCreditCardType();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name Help */
    public static final String COLUMNNAME_Help = "Help";

	/** Set Comment/Help.
	  * Comment or Hint
	  */
	public void setHelp (String Help);

	/** Get Comment/Help.
	  * Comment or Hint
	  */
	public String getHelp();

    /** Column name isPayable */
    public static final String COLUMNNAME_isPayable = "isPayable";

	/** Set isPayable	  */
	public void setisPayable (boolean isPayable);

	/** Get isPayable	  */
	public boolean isPayable();

    /** Column name isReceivable */
    public static final String COLUMNNAME_isReceivable = "isReceivable";

	/** Set isReceivable	  */
	public void setisReceivable (boolean isReceivable);

	/** Get isReceivable	  */
	public boolean isReceivable();

    /** Column name IsSelectable */
    public static final String COLUMNNAME_IsSelectable = "IsSelectable";

	/** Set IsSelectable	  */
	public void setIsSelectable (boolean IsSelectable);

	/** Get IsSelectable	  */
	public boolean isSelectable();

    /** Column name LAR_PaymentRuleGroup_ID */
    public static final String COLUMNNAME_LAR_PaymentRuleGroup_ID = "LAR_PaymentRuleGroup_ID";

	/** Set LAR_PaymentRuleGroup_ID	  */
	public void setLAR_PaymentRuleGroup_ID (int LAR_PaymentRuleGroup_ID);

	/** Get LAR_PaymentRuleGroup_ID	  */
	public int getLAR_PaymentRuleGroup_ID();

	public I_LAR_PaymentRuleGroup getLAR_PaymentRuleGroup() throws Exception;

    /** Column name LAR_PaymentRule_ID */
    public static final String COLUMNNAME_LAR_PaymentRule_ID = "LAR_PaymentRule_ID";

	/** Set LAR_PaymentRule_ID	  */
	public void setLAR_PaymentRule_ID (int LAR_PaymentRule_ID);

	/** Get LAR_PaymentRule_ID	  */
	public int getLAR_PaymentRule_ID();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name TenderType */
    public static final String COLUMNNAME_TenderType = "TenderType";

	/** Set Tender type.
	  * Method of Payment
	  */
	public void setTenderType (String TenderType);

	/** Get Tender type.
	  * Method of Payment
	  */
	public String getTenderType();

    /** Column name Value */
    public static final String COLUMNNAME_Value = "Value";

	/** Set Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value);

	/** Get Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public String getValue();
}
