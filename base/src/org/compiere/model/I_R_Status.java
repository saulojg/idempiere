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

/** Generated Interface for R_Status
 *  @author Trifon Trifonov (generated) 
 *  @version Release 3.4.0s
 */
public interface I_R_Status 
{

    /** TableName=R_Status */
    public static final String Table_Name = "R_Status";

    /** AD_Table_ID=776 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

    /** Load Meta Data */

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

    /** Column name IsClosed */
    public static final String COLUMNNAME_IsClosed = "IsClosed";

	/** Set Closed Status.
	  * The status is closed
	  */
	public void setIsClosed (boolean IsClosed);

	/** Get Closed Status.
	  * The status is closed
	  */
	public boolean isClosed();

    /** Column name IsDefault */
    public static final String COLUMNNAME_IsDefault = "IsDefault";

	/** Set Default.
	  * Default value
	  */
	public void setIsDefault (boolean IsDefault);

	/** Get Default.
	  * Default value
	  */
	public boolean isDefault();

    /** Column name IsFinalClose */
    public static final String COLUMNNAME_IsFinalClose = "IsFinalClose";

	/** Set Final Close.
	  * Entries with Final Close cannot be re-opened
	  */
	public void setIsFinalClose (boolean IsFinalClose);

	/** Get Final Close.
	  * Entries with Final Close cannot be re-opened
	  */
	public boolean isFinalClose();

    /** Column name IsOpen */
    public static final String COLUMNNAME_IsOpen = "IsOpen";

	/** Set Open Status.
	  * The status is closed
	  */
	public void setIsOpen (boolean IsOpen);

	/** Get Open Status.
	  * The status is closed
	  */
	public boolean isOpen();

    /** Column name IsWebCanUpdate */
    public static final String COLUMNNAME_IsWebCanUpdate = "IsWebCanUpdate";

	/** Set Web Can Update.
	  * Entry can be updated from the Web
	  */
	public void setIsWebCanUpdate (boolean IsWebCanUpdate);

	/** Get Web Can Update.
	  * Entry can be updated from the Web
	  */
	public boolean isWebCanUpdate();

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

    /** Column name Next_Status_ID */
    public static final String COLUMNNAME_Next_Status_ID = "Next_Status_ID";

	/** Set Next Status.
	  * Move to next status automatically after timeout
	  */
	public void setNext_Status_ID (int Next_Status_ID);

	/** Get Next Status.
	  * Move to next status automatically after timeout
	  */
	public int getNext_Status_ID();

    /** Column name R_StatusCategory_ID */
    public static final String COLUMNNAME_R_StatusCategory_ID = "R_StatusCategory_ID";

	/** Set Status Category.
	  * Request Status Category
	  */
	public void setR_StatusCategory_ID (int R_StatusCategory_ID);

	/** Get Status Category.
	  * Request Status Category
	  */
	public int getR_StatusCategory_ID();

	public I_R_StatusCategory getR_StatusCategory() throws Exception;

    /** Column name R_Status_ID */
    public static final String COLUMNNAME_R_Status_ID = "R_Status_ID";

	/** Set Status.
	  * Request Status
	  */
	public void setR_Status_ID (int R_Status_ID);

	/** Get Status.
	  * Request Status
	  */
	public int getR_Status_ID();

    /** Column name SeqNo */
    public static final String COLUMNNAME_SeqNo = "SeqNo";

	/** Set Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public void setSeqNo (int SeqNo);

	/** Get Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public int getSeqNo();

    /** Column name TimeoutDays */
    public static final String COLUMNNAME_TimeoutDays = "TimeoutDays";

	/** Set Timeout in Days.
	  * Timeout in Days to change Status automatically
	  */
	public void setTimeoutDays (int TimeoutDays);

	/** Get Timeout in Days.
	  * Timeout in Days to change Status automatically
	  */
	public int getTimeoutDays();

    /** Column name Update_Status_ID */
    public static final String COLUMNNAME_Update_Status_ID = "Update_Status_ID";

	/** Set Update Status.
	  * Automatically change the status after entry from web
	  */
	public void setUpdate_Status_ID (int Update_Status_ID);

	/** Get Update Status.
	  * Automatically change the status after entry from web
	  */
	public int getUpdate_Status_ID();

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