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
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;
import org.compiere.util.KeyNamePair;

/** Generated Model for S_Training_Class
 *  @author Adempiere (generated) 
 *  @version Release 3.4.0s - $Id$ */
public class X_S_Training_Class extends PO implements I_S_Training_Class, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    /** Standard Constructor */
    public X_S_Training_Class (Properties ctx, int S_Training_Class_ID, String trxName)
    {
      super (ctx, S_Training_Class_ID, trxName);
      /** if (S_Training_Class_ID == 0)
        {
			setEndDate (new Timestamp(System.currentTimeMillis()));
			setM_Product_ID (0);
			setS_Training_Class_ID (0);
			setS_Training_ID (0);
			setStartDate (new Timestamp(System.currentTimeMillis()));
        } */
    }

    /** Load Constructor */
    public X_S_Training_Class (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_S_Training_Class[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set End Date.
		@param EndDate 
		Last effective date (inclusive)
	  */
	public void setEndDate (Timestamp EndDate)
	{
		if (EndDate == null)
			throw new IllegalArgumentException ("EndDate is mandatory.");
		set_Value (COLUMNNAME_EndDate, EndDate);
	}

	/** Get End Date.
		@return Last effective date (inclusive)
	  */
	public Timestamp getEndDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_EndDate);
	}

	public I_M_Product getM_Product() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_M_Product.Table_Name);
        I_M_Product result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_M_Product)constructor.newInstance(new Object[] {getCtx(), new Integer(getM_Product_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1)
			 throw new IllegalArgumentException ("M_Product_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Training Class.
		@param S_Training_Class_ID 
		The actual training class instance
	  */
	public void setS_Training_Class_ID (int S_Training_Class_ID)
	{
		if (S_Training_Class_ID < 1)
			 throw new IllegalArgumentException ("S_Training_Class_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_S_Training_Class_ID, Integer.valueOf(S_Training_Class_ID));
	}

	/** Get Training Class.
		@return The actual training class instance
	  */
	public int getS_Training_Class_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_S_Training_Class_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_S_Training getS_Training() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_S_Training.Table_Name);
        I_S_Training result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_S_Training)constructor.newInstance(new Object[] {getCtx(), new Integer(getS_Training_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Training.
		@param S_Training_ID 
		Repeated Training
	  */
	public void setS_Training_ID (int S_Training_ID)
	{
		if (S_Training_ID < 1)
			 throw new IllegalArgumentException ("S_Training_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_S_Training_ID, Integer.valueOf(S_Training_ID));
	}

	/** Get Training.
		@return Repeated Training
	  */
	public int getS_Training_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_S_Training_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Start Date.
		@param StartDate 
		First effective day (inclusive)
	  */
	public void setStartDate (Timestamp StartDate)
	{
		if (StartDate == null)
			throw new IllegalArgumentException ("StartDate is mandatory.");
		set_Value (COLUMNNAME_StartDate, StartDate);
	}

	/** Get Start Date.
		@return First effective day (inclusive)
	  */
	public Timestamp getStartDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_StartDate);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getStartDate()));
    }
}