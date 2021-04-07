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

/** Generated Interface for LAR_Sucursal
 *  @author Trifon Trifonov (generated) 
 *  @version Release 3.4.0s
 */
public interface I_LAR_Sucursal 
{

    /** TableName=LAR_Sucursal */
    public static final String Table_Name = "LAR_Sucursal";

    /** AD_Table_ID=2000107 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_User_Responsable_ID */
    public static final String COLUMNNAME_AD_User_Responsable_ID = "AD_User_Responsable_ID";

	/** Set AD_User_Responsable_ID	  */
	public void setAD_User_Responsable_ID (int AD_User_Responsable_ID);

	/** Get AD_User_Responsable_ID	  */
	public int getAD_User_Responsable_ID();

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

    /** Column name C_SalesRegion_ID */
    public static final String COLUMNNAME_C_SalesRegion_ID = "C_SalesRegion_ID";

	/** Set Sales Region.
	  * Sales coverage region
	  */
	public void setC_SalesRegion_ID (int C_SalesRegion_ID);

	/** Get Sales Region.
	  * Sales coverage region
	  */
	public int getC_SalesRegion_ID();

	public I_C_SalesRegion getC_SalesRegion() throws Exception;

    /** Column name DefaultAPPayment_ID */
    public static final String COLUMNNAME_DefaultAPPayment_ID = "DefaultAPPayment_ID";

	/** Set DefaultAPPayment_ID	  */
	public void setDefaultAPPayment_ID (int DefaultAPPayment_ID);

	/** Get DefaultAPPayment_ID	  */
	public int getDefaultAPPayment_ID();

    /** Column name DefaultARReceipt_ID */
    public static final String COLUMNNAME_DefaultARReceipt_ID = "DefaultARReceipt_ID";

	/** Set DefaultARReceipt_ID	  */
	public void setDefaultARReceipt_ID (int DefaultARReceipt_ID);

	/** Get DefaultARReceipt_ID	  */
	public int getDefaultARReceipt_ID();

    /** Column name IsActualmentePuntoVenta */
    public static final String COLUMNNAME_IsActualmentePuntoVenta = "IsActualmentePuntoVenta";

	/** Set IsActualmentePuntoVenta	  */
	public void setIsActualmentePuntoVenta (boolean IsActualmentePuntoVenta);

	/** Get IsActualmentePuntoVenta	  */
	public boolean isActualmentePuntoVenta();

    /** Column name IsPuntoVenta */
    public static final String COLUMNNAME_IsPuntoVenta = "IsPuntoVenta";

	/** Set IsPuntoVenta	  */
	public void setIsPuntoVenta (boolean IsPuntoVenta);

	/** Get IsPuntoVenta	  */
	public boolean isPuntoVenta();

    /** Column name LAR_SucursalClasif_ID */
    public static final String COLUMNNAME_LAR_SucursalClasif_ID = "LAR_SucursalClasif_ID";

	/** Set LAR_SucursalClasif	  */
	public void setLAR_SucursalClasif_ID (int LAR_SucursalClasif_ID);

	/** Get LAR_SucursalClasif	  */
	public int getLAR_SucursalClasif_ID();

	public I_LAR_SucursalClasif getLAR_SucursalClasif() throws Exception;

    /** Column name LAR_SucursalGrupo_ID */
    public static final String COLUMNNAME_LAR_SucursalGrupo_ID = "LAR_SucursalGrupo_ID";

	/** Set LAR_SucursalGrupo	  */
	public void setLAR_SucursalGrupo_ID (int LAR_SucursalGrupo_ID);

	/** Get LAR_SucursalGrupo	  */
	public int getLAR_SucursalGrupo_ID();

    /** Column name LAR_Sucursal_ID */
    public static final String COLUMNNAME_LAR_Sucursal_ID = "LAR_Sucursal_ID";

	/** Set LAR_Sucursal	  */
	public void setLAR_Sucursal_ID (int LAR_Sucursal_ID);

	/** Get LAR_Sucursal	  */
	public int getLAR_Sucursal_ID();

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
