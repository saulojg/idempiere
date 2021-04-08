package org.adempiere.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

public class Miscfunc {

	private static CLogger	s_log	= CLogger.getCLogger (Miscfunc.class);
	
	public static String FechaAMD(Date fecha) {
		return FechaAMD(fecha, false);
	}

	public static String FechaAAMMDD(Date fecha) {
		return FechaAMD(fecha, false, "yy-MM-dd");
	}

	public static String FechaAAMMDD(Date fecha, boolean SinBarras) {
		return FechaAMD(fecha, false, (SinBarras ? "yyMMdd" : "yy-MM-dd"));
	}

	public static String FechaAMD(Date fecha, Boolean sinBarras) {
		return FechaAMD(fecha, sinBarras, (sinBarras ? "yyyyMMdd" : "yyyy-MM-dd"));
	}

	public static String FechaAMD(Date fecha, Boolean sinBarras, String fmt) {
		if (!String.valueOf(fecha).equals("null")) {
			SimpleDateFormat sqlfmt = new SimpleDateFormat((sinBarras ? fmt : fmt));
			return sqlfmt.format(fecha);
		} else
			return (sinBarras ? "00000000" : "0000-00-00");
	}
	
	public static String ValueFromSystem(String key, String defa) {

		String s = ""; // jdbc:extendedsystems:advantage://127.0.0.1:6262;user=;password=;Catalog=C:\\DISCO_D\\dreher\\american;TableType=ntx;LockType=compatible;ShowDeleted=false;";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT value FROM AD_SysConfig WHERE name='" + key + "'  AND AD_Org_ID=0";
		try {
			pstmt = DB.prepareStatement(sql, null);
			rs = pstmt.executeQuery();
			if (rs.next())
				s = rs.getString("value");
			else {
				// System.out.println("Falta definir la data de sistema " + key
				// + "\r\n" + "Valor por defecto:" + defa); // debug
				if (defa.equals(null))
					s_log.severe("No se encontro la entrada " + key
							+ " en las datas del sistema!");

				s = defa;
			}
			rs.close();
		} catch (Exception ex) {
			try {
				pstmt.close();
			} catch (Exception ex0) {
				System.out.print("Could not close prepared statement");
			}
		}finally{
			DB.close(rs, pstmt);
			rs=null; pstmt=null;
		}

		return s;
	}
	
	public static String ValueFromSystem(String key, String defa, boolean isAppend) {
		return ValueFromSystem(key, defa, isAppend, "Variable seteada por defecto!");
	}
	
	public static String ValueFromSystem(String key, String defa, boolean isAppend, String descrip) {
		
		String s = ""; // jdbc:extendedsystems:advantage://127.0.0.1:6262;user=;password=;Catalog=C:\\DISCO_D\\dreher\\american;TableType=ntx;LockType=compatible;ShowDeleted=false;";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT value FROM AD_SysConfig WHERE name='" + key + "' AND AD_Org_ID=0";
		try {
			pstmt = DB.prepareStatement(sql, null);
			rs = pstmt.executeQuery();
			if (rs.next())
				s = rs.getString("value");
			else {
				// System.out.println("Falta definir la data de sistema " + key
				// + "\r\n" + "Valor por defecto:" + defa); // debug
				if (defa.equals(null))
					s_log.severe("No se encontro la entrada " + key
							+ " en las datas del sistema!");
				else{
					s = defa;
					if(isAppend){
						
						MSysConfig ads = new MSysConfig(Env.getCtx(), 0, null);
						ads.setAD_Org_ID(0);
						ads.setConfigurationLevel("C");
						ads.setDescription(descrip);
						ads.setName(key);
						ads.setValue(defa);
						ads.save(null);

					}
				}
			}
			
		} catch (Exception ex) {
			System.out.println("Excepcion al buscar dato del AD_SysConfig! " + ex.toString());
		}finally{
			DB.close(rs, pstmt);
			rs=null;pstmt=null;
		}

		return s;

	}	
}
