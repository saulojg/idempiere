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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.util.KeyNamePair;

/** Generated Model for PA_Benchmark
 *  @author Adempiere (generated) 
 *  @version Release 3.4.0s - $Id$ */
public class X_PA_Benchmark extends PO implements I_PA_Benchmark, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    /** Standard Constructor */
    public X_PA_Benchmark (Properties ctx, int PA_Benchmark_ID, String trxName)
    {
      super (ctx, PA_Benchmark_ID, trxName);
      /** if (PA_Benchmark_ID == 0)
        {
			setAccumulationType (null);
			setName (null);
			setPA_Benchmark_ID (0);
        } */
    }

    /** Load Constructor */
    public X_PA_Benchmark (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client 
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
      StringBuffer sb = new StringBuffer ("X_PA_Benchmark[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** AccumulationType AD_Reference_ID=370 */
	public static final int ACCUMULATIONTYPE_AD_Reference_ID=370;
	/** Average = A */
	public static final String ACCUMULATIONTYPE_Average = "A";
	/** Sum = S */
	public static final String ACCUMULATIONTYPE_Sum = "S";
	/** Set Accumulation Type.
		@param AccumulationType 
		How to accumulate data on time axis
	  */
	public void setAccumulationType (String AccumulationType)
	{
		if (AccumulationType == null) throw new IllegalArgumentException ("AccumulationType is mandatory");
		if (AccumulationType.equals("A") || AccumulationType.equals("S")); else throw new IllegalArgumentException ("AccumulationType Invalid value - " + AccumulationType + " - Reference_ID=370 - A - S");
		if (AccumulationType.length() > 1)
		{
			log.warning("Length > 1 - truncated");
			AccumulationType = AccumulationType.substring(0, 1);
		}
		set_Value (COLUMNNAME_AccumulationType, AccumulationType);
	}

	/** Get Accumulation Type.
		@return How to accumulate data on time axis
	  */
	public String getAccumulationType () 
	{
		return (String)get_Value(COLUMNNAME_AccumulationType);
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

	/** Set Comment/Help.
		@param Help 
		Comment or Hint
	  */
	public void setHelp (String Help)
	{

		if (Help != null && Help.length() > 2000)
		{
			log.warning("Length > 2000 - truncated");
			Help = Help.substring(0, 2000);
		}
		set_Value (COLUMNNAME_Help, Help);
	}

	/** Get Comment/Help.
		@return Comment or Hint
	  */
	public String getHelp () 
	{
		return (String)get_Value(COLUMNNAME_Help);
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		if (Name == null)
			throw new IllegalArgumentException ("Name is mandatory.");

		if (Name.length() > 120)
		{
			log.warning("Length > 120 - truncated");
			Name = Name.substring(0, 120);
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }

	/** Set Benchmark.
		@param PA_Benchmark_ID 
		Performance Benchmark
	  */
	public void setPA_Benchmark_ID (int PA_Benchmark_ID)
	{
		if (PA_Benchmark_ID < 1)
			 throw new IllegalArgumentException ("PA_Benchmark_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_PA_Benchmark_ID, Integer.valueOf(PA_Benchmark_ID));
	}

	/** Get Benchmark.
		@return Performance Benchmark
	  */
	public int getPA_Benchmark_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PA_Benchmark_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}