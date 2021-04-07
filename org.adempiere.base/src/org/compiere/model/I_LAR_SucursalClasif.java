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

/** Generated Interface for LAR_SucursalClasif
 *  @author Trifon Trifonov (generated) 
 *  @version Release 3.4.0s
 */
public interface I_LAR_SucursalClasif 
{

    /** TableName=LAR_SucursalClasif */
    public static final String Table_Name = "LAR_SucursalClasif";

    /** AD_Table_ID=2000252 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name descrip */
    public static final String COLUMNNAME_descrip = "descrip";

	/** Set descrip	  */
	public void setdescrip (String descrip);

	/** Get descrip	  */
	public String getdescrip();

    /** Column name LAR_SucursalClasif_ID */
    public static final String COLUMNNAME_LAR_SucursalClasif_ID = "LAR_SucursalClasif_ID";

	/** Set LAR_SucursalClasif	  */
	public void setLAR_SucursalClasif_ID (int LAR_SucursalClasif_ID);

	/** Get LAR_SucursalClasif	  */
	public int getLAR_SucursalClasif_ID();

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
}
