package org.adempiere.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.compiere.model.MChatEntry;
import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.model.MChat;

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
	
	/**
	 * Used by beanshell.
	 * @author Roca
	 */	
	public static Date CtoD(String fecha, String fmt) {
		Date d = new Date();
		try {
			fecha = fecha.replace("/", "-");
			SimpleDateFormat sdf = new SimpleDateFormat(fmt);
			d = sdf.parse(fecha);
		} catch (Exception ex) {
			System.out.println("No se pudo convertir a fecha valida\n"
					+ ex.toString());
		}
		return d;
	}

	/**
	 * Used by beanshell.
	 * @author Roca
	 */
	public static Timestamp DateToTimestamp(Date fecha) {
		return fecha == null ? null : new Timestamp(fecha.getTime());
	}

	public static Timestamp FechaHOYTimestamp() {
		Timestamp hoy = DateToTimestamp(new Date());
		return hoy;
	}
	
    /**
     * Used by beanshell.
     * @author Roca
     * @param adUserID
     * @param opcion
     * @return
     */
	public static boolean UserEspecial(int adUserID, int opcion) {
		Boolean ok = false;

		String usersEspeciales = "";

		if(opcion == 4)
			usersEspeciales = Miscfunc.ValueFromSystem("SUPER_USUARIOS", "100,117,", true); // por defecto SuperUser, Tere, Jimena
		else
			throw new RuntimeException("opción desconocida");

		ArrayList<Integer> users = new ArrayList<Integer>();

		if(usersEspeciales!=null && usersEspeciales.trim()!=""){

			if(usersEspeciales.indexOf(",") > -1){
				String[] x = usersEspeciales.split(",");
				for(int i=0; i<x.length; i++)
					users.add(Integer.valueOf(x[i].trim()));
			}else
				users.add(Integer.valueOf(usersEspeciales.trim()));

			for(int i=0; i<users.size(); i++){
				if(users.get(i).compareTo(adUserID)==0){
					ok = true;
					break;
				}
			}

		}

		return ok;
	}

	/**
	 * Used only by beanshell.
	 * @param message
	 */
	public static void ShowMessage(String message) {
		s_log.info(message);
	}
	
	/**
	 * Used only by beanshell.
	 * @param motivo
	 * @param descripcion
	 * @param trxName
	 * @param AD_Table_ID
	 * @param Recno_ID
	 * @param AD_User_ID
	 * @param AD_Org_ID
	 * @throws Exception
	 */
    public static void registrarChat(String motivo, String descripcion, String trxName, int AD_Table_ID, int Recno_ID, int AD_User_ID, int AD_Org_ID) throws Exception{

    	// dREHER, verificar si ya no existe un chat con el mismo motivo, si existe no volver a agregarlo

    	int chat_id = DB.getSQLValue(trxName, "SELECT MAX(CM_Chat_ID) FROM CM_Chat WHERE AD_Table_ID=" + AD_Table_ID + " AND Record_ID=" + Recno_ID);
    	if(chat_id < 0)
    		chat_id = 0;
    	
    	
    	if(AD_User_ID == 0)
    		AD_User_ID = Env.getAD_User_ID(Env.getCtx());
    	if(AD_Org_ID == 0)
    		AD_Org_ID = Env.getAD_Org_ID(Env.getCtx());
    	

    	MChat mc = new MChat(Env.getCtx(), chat_id, trxName);
    	if(mc!=null){
    		mc.setAD_Org_ID(AD_Org_ID);
    		mc.setDescription(descripcion);
    		mc.setAD_Table_ID(AD_Table_ID);
    		mc.setRecord_ID(Recno_ID);
    		if(!mc.save(trxName)){
    			throw new Exception("Se produjo un error al guardar log del "+ motivo);
    		}else{
    			MChatEntry ce =  new MChatEntry(Env.getCtx(), 0, trxName);
    			if(ce!=null){
    				int ch = mc.getCM_Chat_ID();
    				ce.setAD_Org_ID(AD_Org_ID);
    				ce.setAD_User_ID(AD_User_ID);
    				ce.setCharacterData(descripcion);
    				ce.setCM_Chat_ID(ch);
    				ce.setSubject(motivo);
    				if(!ce.save(trxName)){
    					throw new Exception("No se pudo guardar log del " + motivo);
    				}
    			}
    		}
    	}
    	
    	// s_log.finer("Se registro CHAT en Tabla=" + AD_Table_ID + " Registro=" + Recno_ID);
    }	
}
