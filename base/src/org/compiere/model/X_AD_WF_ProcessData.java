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

/** Generated Model for AD_WF_ProcessData
 *  @author Adempiere (generated) 
 *  @version Release 3.4.0s - $Id$ */
public class X_AD_WF_ProcessData extends PO implements I_AD_WF_ProcessData, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    /** Standard Constructor */
    public X_AD_WF_ProcessData (Properties ctx, int AD_WF_ProcessData_ID, String trxName)
    {
      super (ctx, AD_WF_ProcessData_ID, trxName);
      /** if (AD_WF_ProcessData_ID == 0)
        {
			setAD_WF_ProcessData_ID (0);
			setAD_WF_Process_ID (0);
			setAttributeName (null);
        } */
    }

    /** Load Constructor */
    public X_AD_WF_ProcessData (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 7 - System - Client - Org 
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
      StringBuffer sb = new StringBuffer ("X_AD_WF_ProcessData[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Workflow Process Data.
		@param AD_WF_ProcessData_ID 
		Workflow Process Context
	  */
	public void setAD_WF_ProcessData_ID (int AD_WF_ProcessData_ID)
	{
		if (AD_WF_ProcessData_ID < 1)
			 throw new IllegalArgumentException ("AD_WF_ProcessData_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_AD_WF_ProcessData_ID, Integer.valueOf(AD_WF_ProcessData_ID));
	}

	/** Get Workflow Process Data.
		@return Workflow Process Context
	  */
	public int getAD_WF_ProcessData_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_WF_ProcessData_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_AD_WF_Process getAD_WF_Process() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_AD_WF_Process.Table_Name);
        I_AD_WF_Process result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_AD_WF_Process)constructor.newInstance(new Object[] {getCtx(), new Integer(getAD_WF_Process_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Workflow Process.
		@param AD_WF_Process_ID 
		Actual Workflow Process Instance
	  */
	public void setAD_WF_Process_ID (int AD_WF_Process_ID)
	{
		if (AD_WF_Process_ID < 1)
			 throw new IllegalArgumentException ("AD_WF_Process_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_AD_WF_Process_ID, Integer.valueOf(AD_WF_Process_ID));
	}

	/** Get Workflow Process.
		@return Actual Workflow Process Instance
	  */
	public int getAD_WF_Process_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_WF_Process_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getAD_WF_Process_ID()));
    }

	/** Set Attribute Name.
		@param AttributeName 
		Name of the Attribute
	  */
	public void setAttributeName (String AttributeName)
	{
		if (AttributeName == null)
			throw new IllegalArgumentException ("AttributeName is mandatory.");

		if (AttributeName.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			AttributeName = AttributeName.substring(0, 60);
		}
		set_Value (COLUMNNAME_AttributeName, AttributeName);
	}

	/** Get Attribute Name.
		@return Name of the Attribute
	  */
	public String getAttributeName () 
	{
		return (String)get_Value(COLUMNNAME_AttributeName);
	}

	/** Set Attribute Value.
		@param AttributeValue 
		Value of the Attribute
	  */
	public void setAttributeValue (String AttributeValue)
	{

		if (AttributeValue != null && AttributeValue.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			AttributeValue = AttributeValue.substring(0, 60);
		}
		set_Value (COLUMNNAME_AttributeValue, AttributeValue);
	}

	/** Get Attribute Value.
		@return Value of the Attribute
	  */
	public String getAttributeValue () 
	{
		return (String)get_Value(COLUMNNAME_AttributeValue);
	}
}