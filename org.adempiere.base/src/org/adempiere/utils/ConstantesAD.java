package org.adempiere.utils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.compiere.util.DB;

public class ConstantesAD
{

    public static final int PESOS_AR = 118;

    public static int getUOMUnidad() throws SQLException 
    {
	Integer result=null;
	String sql=""
	    +"SELECT c_uom_ID FROM c_uom WHERE uomsymbol='U'";

	PreparedStatement pstmt;
	pstmt = DB.prepareStatement(sql, null);
	ResultSet rs=null;
	try
	{
	    rs = pstmt.executeQuery();
	    while(rs.next())
	    {
		result=rs.getInt("c_uom_ID");
	    }
	} 
	catch (SQLException e)
	{
	    DB.close(rs, pstmt);
	    throw e;
	}

	DB.close(rs, pstmt);

	return result;
    }

    public static Integer findTable(String tableName) throws SQLException
    {
    	Integer result=null;
    	String sql=""
    		+"SELECT ad_table_id FROM ad_table WHERE name ='"+tableName+"'";

    	PreparedStatement pstmt;
    	pstmt = DB.prepareStatement(sql, null);
    	ResultSet rs=null;
    	try
    	{
    		rs = pstmt.executeQuery();
    		while(rs.next())
    		{
    			result=rs.getInt(1);
    		}
    	} 
    	catch (SQLException e)
    	{
    		DB.close(rs, pstmt);
    		throw e;
    	}finally{
    		DB.close(rs, pstmt);
    		rs = null; pstmt=null;
    	}

    	return result;
    }
}
