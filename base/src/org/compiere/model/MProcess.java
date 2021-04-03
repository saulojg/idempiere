/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
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
package org.compiere.model;

import java.sql.*;
import java.util.*;
import java.util.logging.*;

import org.adempiere.util.ProcessUtil;
import org.compiere.db.CConnection;
import org.compiere.interfaces.Server;
import org.compiere.process.*;
import org.compiere.util.*;

/**
 *  Process Model
 *
 *  @author Jorg Janke
 *  @version $Id: MProcess.java,v 1.4 2006/07/30 00:58:04 jjanke Exp $
 * 
 * @author Teo Sarca, SC ARHIPAC SERVICE SRL - BF [ 1757523 ]
 */
public class MProcess extends X_AD_Process
{
	/**
	 * 	Get MProcess from Cache
	 *	@param ctx context
	 *	@param AD_Process_ID id
	 *	@return MProcess
	 */
	public static MProcess get (Properties ctx, int AD_Process_ID)
	{
		Integer key = new Integer (AD_Process_ID);
		MProcess retValue = (MProcess) s_cache.get (key);
		if (retValue != null)
			return retValue;
		retValue = new MProcess (ctx, AD_Process_ID, null);
		if (retValue.get_ID () != 0)
			s_cache.put (key, retValue);
		return retValue;
	}	//	get
	
	/**
	 * 	Get MProcess from Menu
	 *	@param ctx context
	 *	@param AD_Menu_ID id
	 *	@return MProcess or null
	 */
	public static MProcess getFromMenu (Properties ctx, int AD_Menu_ID)
	{
		MProcess retValue = null;
		String sql = "SELECT * FROM AD_Process p "
			+ "WHERE EXISTS (SELECT * FROM AD_Menu m "
				+ "WHERE m.AD_Process_ID=p.AD_Process_ID AND m.AD_Menu_ID=?)";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, AD_Menu_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next())
			{
				retValue = new MProcess (ctx, rs, null);
				//	Save in cache
				Integer key = new Integer (retValue.getAD_Process_ID());
				s_cache.put (key, retValue);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		
		return retValue;
	}	//	getFromMenu


	/**	Cache						*/
	private static CCache<Integer,MProcess>	s_cache	= new CCache<Integer,MProcess>("AD_Process", 20);
	/**	Static Logger	*/
	private static CLogger	s_log	= CLogger.getCLogger (MProcess.class);
	
	
	/**************************************************************************
	 * 	Standard Constructor
	 *	@param ctx context
	 *	@param AD_Process_ID process
	 *	@param trxName transaction name
	 */
	public MProcess (Properties ctx, int AD_Process_ID, String trxName)
	{
		super (ctx, AD_Process_ID, trxName);
		if (AD_Process_ID == 0)
		{
		//	setValue (null);
		//	setName (null);
			setIsReport (false);
			setIsServerProcess(false);
			setAccessLevel (ACCESSLEVEL_All);
			setEntityType (ENTITYTYPE_UserMaintained);
			setIsBetaFunctionality(false);
		}
	}	//	MProcess

	/**
	 * 	Load Contsructor
	 *	@param ctx context
	 *	@param rs result set
	 *	@param trxName transaction name
	 */
	public MProcess (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MProcess


	/**	Parameters					*/
	private MProcessPara[]		m_parameters = null;

	/**
	 * 	Get Parameters
	 *	@return parameters
	 */
	public MProcessPara[] getParameters()
	{
		if (m_parameters != null)
			return m_parameters;
		ArrayList<MProcessPara> list = new ArrayList<MProcessPara>();
		//
		String sql = "SELECT * FROM AD_Process_Para WHERE AD_Process_ID=? ORDER BY SeqNo";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, getAD_Process_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MProcessPara(getCtx(), rs, null));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		m_parameters = new MProcessPara[list.size()];
		list.toArray(m_parameters);
		return m_parameters;
	}	//	getParameters

	/**
	 * 	Get Parameter with ColumnName
	 *	@param name column name
	 *	@return parameter or null
	 */
	public MProcessPara getParameter(String name)
	{
		getParameters();
		for (int i = 0; i < m_parameters.length; i++)
		{
			if (m_parameters[i].getColumnName().equals(name))
				return m_parameters[i];
		}
		return null;
	}	//	getParameter
	
	
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MProcess[")
			.append (get_ID())
			.append("-").append(getName())
			.append ("]");
		return sb.toString ();
	}	//	toString

	
	/**************************************************************************
	 * 	Process w/o parameter
	 *	@param Record_ID record
	 *	@param trx transaction
	 *	@return Process Instance
	 */
	public MPInstance processIt (int Record_ID, Trx trx)
	{
		MPInstance pInstance = new MPInstance (this, Record_ID);
		//	Lock
		pInstance.setIsProcessing(true);
		pInstance.save();

		boolean ok = true;

		ProcessInfo processInfo = new ProcessInfo("", this.getAD_Process_ID());
		processInfo.setAD_PInstance_ID(pInstance.getAD_PInstance_ID());
		ok = processIt(processInfo, trx);

		//	Unlock
		pInstance.setResult(ok ? MPInstance.RESULT_OK : MPInstance.RESULT_ERROR);
		pInstance.setErrorMsg(processInfo.getSummary());
		pInstance.setIsProcessing(false);
		pInstance.save();
		//
		pInstance.log();
		return pInstance;
	}	//	process

	/**
	 * 	Process It (sync)
	 *	@param pi Process Info
	 *	@param trx transaction
	 *	@return true if OK
	 */
	public boolean processIt (ProcessInfo pi, Trx trx)
	{
		if (pi.getAD_PInstance_ID() == 0)
		{
			MPInstance pInstance = new MPInstance (this, pi.getRecord_ID());
			//	Lock
			pInstance.setIsProcessing(true);
			pInstance.save();
		}

		boolean ok = false;

		//	Java Class
		String Classname = getClassname();
		if (Classname != null && Classname.length() > 0)
		{
			pi.setClassName(Classname);
			ok = startClass(pi, trx);
		}
		else
		{
			//	PL/SQL Procedure
			String ProcedureName = getProcedureName();
			if (ProcedureName != null && ProcedureName.length() > 0)
			{
				ok = startProcess (ProcedureName, pi, trx);
			}
			else
			{
				String msg = "No Classname or ProcedureName for " + getName();
				pi.setSummary(msg, ok);
				log.warning(msg);
			}
		}
		
		return ok;
	}	//	process

	/**
	 * 	Is this a Java Process
	 *	@return true if java process
	 */
	public boolean isJavaProcess()
	{
		String Classname = getClassname();
		return (Classname != null && Classname.length() > 0);
	}	//	is JavaProcess
	
	/**
	 *  Start Database Process
	 *  @param ProcedureName PL/SQL procedure name
	 *  @param pInstance process instance
	 *	see ProcessCtl.startProcess
	 *  @return true if success
	 */
	private boolean startProcess (String ProcedureName, ProcessInfo processInfo, Trx trx)
	{
		int AD_PInstance_ID = processInfo.getAD_PInstance_ID();
		//  execute on this thread/connection
		log.info(ProcedureName + "(" + AD_PInstance_ID + ")");
		
		return ProcessUtil.startDatabaseProcedure(processInfo, ProcedureName, trx);
	}   //  startProcess


	/**
	 *  Start Java Class (sync).
	 *      instanciate the class implementing the interface ProcessCall.
	 *  The class can be a Server/Client class (when in Package
	 *  org adempiere.process or org.compiere.model) or a client only class
	 *  (e.g. in org.compiere.report)
	 *
	 *  @param Classname    name of the class to call
	 *  @param pi	process info
	 *  @param trx transaction
	 *  @return     true if success
	 *	see ProcessCtl.startClass
	 */
	private boolean startClass (ProcessInfo pi, Trx trx)
	{
		log.info(pi.getClassName());
		if (pi.getClassName().toLowerCase().startsWith(MRule.SCRIPT_PREFIX))
			return ProcessUtil.startScriptProcess(getCtx(), pi, trx);
		
		return ProcessUtil.startJavaProcess(getCtx(), pi, trx);
	}   //  startClass

	
	/**
	 * 	Is it a Workflow
	 *	@return true if Workflow
	 */
	public boolean isWorkflow()
	{
		return getAD_Workflow_ID() > 0;
	}	//	isWorkflow
	
	
	/**
	 * 	Update Statistics
	 *	@param seconds sec
	 */
	public void addStatistics (int seconds)
	{
		setStatistic_Count(getStatistic_Count() + 1);
		setStatistic_Seconds(getStatistic_Seconds() + seconds);
	}	//	addStatistics
	
	
	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return success
	 */
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (newRecord)	//	Add to all automatic roles
		{
			MRole[] roles = MRole.getOf(getCtx(), "IsManual='N'");
			for (int i = 0; i < roles.length; i++)
			{
				
				MProcessAccess pa = new MProcessAccess(this, roles[i].getAD_Role_ID());
				pa.save();
			}
		}
		//	Menu/Workflow
		else if (is_ValueChanged("IsActive") || is_ValueChanged("Name") 
			|| is_ValueChanged("Description") || is_ValueChanged("Help"))
		{
			MMenu[] menues = MMenu.get(getCtx(), "AD_Process_ID=" + getAD_Process_ID(), get_TrxName());
			for (int i = 0; i < menues.length; i++)
			{
				menues[i].setIsActive(isActive());
				menues[i].setName(getName());
				menues[i].setDescription(getDescription());
				menues[i].save();
			}
			X_AD_WF_Node[] nodes = MWindow.getWFNodes(getCtx(), "AD_Process_ID=" + getAD_Process_ID(), get_TrxName());
			for (int i = 0; i < nodes.length; i++)
			{
				boolean changed = false;
				if (nodes[i].isActive() != isActive())
				{
					nodes[i].setIsActive(isActive());
					changed = true;
				}
				if (nodes[i].isCentrallyMaintained())
				{
					nodes[i].setName(getName());
					nodes[i].setDescription(getDescription());
					nodes[i].setHelp(getHelp());
					changed = true;
				}
				if (changed)
					nodes[i].save();
			}
		}
		return success;
	}	//	afterSave
	
	/**
	 * 	Grant independence to GenerateModel from AD_Process_ID
	 *	@param String tableName
	 *	@return int retValue
	 */
	public static int getProcess_ID(String value, String trxname) {
		int retValue = 0;
		String SQL = "SELECT AD_Process_ID FROM AD_Process WHERE value = ?";
		try
		{
				PreparedStatement pstmt = DB.prepareStatement(SQL, trxname);
				pstmt.setString(1, value);
				ResultSet rs = pstmt.executeQuery();
				if (rs.next())
					retValue = rs.getInt(1);
				rs.close();
				pstmt.close();
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, SQL, e);
			retValue = -1;
		}
		return retValue;
	}

/**
	 * Crea y retorna una transacción
	 * @return una nueva transacción con el nombre pasado como parametro
	 */
	
	private Trx createTrx(String trxName){
		//Creo la transacción
		return Trx.get(trxName, true);
	}
	
	/**
	 * Retorna una transacción 
	 * @return la transacción con el nombre pasado como parametro
	 */
	private Trx getTrx(String trxName){
		//Me fijo primero si esta la transacción con ese nombre
		Trx trx = Trx.get(trxName, false);
		
		//Si no existe, la creo
		if( trx == null){
			trx = createTrx(trxName);
		}
		
		return trx;
	}
    
	
    
	/**
     * Executa el proceso pasado como parametro sin tener en cuenta los parametros. 
     * Antes de realizar la llamada a este metodo, se deberían cargar los valores de los parametros. 
     * @param process proceso a ejecutar
     * @param pi info del proceso
     */
    public static void execute(MProcess process, ProcessInfo pi){
    	// Creo un nombre para la transaccion
    	String trxName = process.getName()+"_"+System.currentTimeMillis()+"_"+Thread.currentThread().getId();
    	// Proceso el proceso y lo ejecuto
    	process.processIt(pi, process.getTrx(trxName));
    }
    
    
	/**
     * Executa el proceso pasado como parametro sin tener en cuenta los parametros. 
     * Antes de realizar la llamada a este metodo, se deberían cargar los valores de los parametros. 
     * @param process proceso a ejecutar
     * @param pi info del proceso
     * @param ctx context
     */
    public static void execute(Properties ctx,MProcess process, ProcessInfo pi){
    	execute(ctx,process,pi,null);
    }
    
    
    /**
     * Executa el proceso pasado como parametro sin tener en cuenta los parametros. 
     * Antes de realizar la llamada a este metodo, se deberían cargar los valores de los parametros. 
     * @param process proceso a ejecutar
     * @param pi info del proceso
     * @param ctx context
     */
    public static void execute(Properties ctx,MProcess process, ProcessInfo pi, String trxName){
    	boolean create = false;
    	if(trxName == null){
    		// Creo un nombre para la transaccion
        	trxName = process.getName()+"_"+System.currentTimeMillis()+"_"+Thread.currentThread().getId();
        	create = true;
    	}    	
    	// Proceso el proceso y lo ejecuto
    	process.processIt(pi, process.getTrx(trxName));
    	// Si vino una transacción es porque el que la trajo se encarga de commitear o rollback
    	if(create){
	     	// Commitear o rollbackear segun estado resultante
	    	if (!pi.isError()){
	    		process.getTrx(trxName).commit();
	    	}
	    	else{
	    		process.getTrx(trxName).rollback();
	    	}
	    	process.getTrx(trxName).close();
    	}
    }
	
	
    /**
     * Executa el proceso sin tener en cuenta los parametros. 
     * Antes de realizar la llamada a este metodo, se deberían cargar los valores de los parametros. 
     * @param AD_Process_ID id del proceso
     * @param ctx context
     */
    public static ProcessInfo execute(Properties ctx,int AD_Process_ID){
    	// Obtengo el proceso con ese id
    	MProcess process = MProcess.get(ctx, AD_Process_ID);
    	if(process == null){
    		s_log.severe("No existe proceso con ese id");
    		return null;
    	}
    	MPInstance instance = new MPInstance(ctx,process.get_ID(),0);
    	instance.setIsProcessing(true);
    	if(!instance.save()){
    		s_log.severe("Error al crear ad_pinstance");
    		return null;
    	}
    	// Creo el process info de este proceso
    	ProcessInfo pi = new ProcessInfo(process.getName(),process.get_ID());
    	pi.setAD_PInstance_ID(instance.get_ID());
    	
    	// Ejecuto el proceso
    	MProcess.execute(ctx,process,pi);
    	return pi;
    }
    
    /**
     * Ejecuta un proceso a partir del process id y de un conjunto de parametros con la forma
     * Map<String,Object> donde String es el nombre de la columna del parametro y Object es el 
     * valor a setear en dicho parametro. Cabe destacar que para los tipos rango, al nombre de
     * columna se le debe concatenar el string "_to" (case insensitive), o sea, por ejemplo si la columna se llama
     * "Date_Trx" y es rango, entonces el string que debe venir dentro del Map debe ser "Date_Trx_To".
     * Este metodo se puede llamar con una Map vacia y solo ejecutara el proceso, aunque si desea
     * realizar la ejecucion del proceso sin tener en cuenta los parametro use los otros metodos 
     * execute() definidos dentro de la clase.
     * @param AD_Process_ID id del proceso a ejecutar
     * @param parameters parametros del proceso
     * @param ctx context
     */
    public static ProcessInfo execute(Properties ctx,int AD_Process_ID, Map<String, Object> parameters){
    	return execute(ctx, AD_Process_ID, parameters, null);
    }
    
    public static ProcessInfo execute(Properties ctx,int AD_Process_ID, int tableID, Map<String, Object> parameters, String trxName){
    	return execute(ctx, AD_Process_ID, tableID, parameters, trxName, null);
    }
    
    public static ProcessInfo execute(Properties ctx,int AD_Process_ID, int tableID, Map<String, Object> parameters, String trxName, Integer recordID){
    	// Obtengo el proceso con ese id
    	MProcess process = MProcess.get(ctx, AD_Process_ID);
    	if(process == null){
    		s_log.severe("No existe proceso con ese id");
    		return null;
    	}
    	MPInstance instance = new MPInstance(ctx,process.get_ID(),0);
    	if(!instance.save()){
    		s_log.severe("Error al crear ad_pinstance");
    		return null;
    	}
    	// Creo el process info de este proceso
    	ProcessInfo pi = new ProcessInfo(process.getName(),process.get_ID());
    	pi.setAD_PInstance_ID(instance.get_ID());
    	pi.setTable_ID(tableID);
    	if(!Util.isEmpty(recordID, true)){
    		pi.setRecord_ID(recordID);
    	}
		// Logica para plugins, verificar si existe una clase que redefina el
		// proceso original 
    	/* dREHER - No utilizada en Adempiere
		String pluginProcessClassName = PluginProcessUtils
				.findPluginProcessClass(process.getClassname());
        if (pluginProcessClassName != null)
        	pi.setClassName(pluginProcessClassName);
    	*/
    	// Procesamiento de parametros
    	
    	Set<String> params = parameters.keySet();
    	MProcessPara procPara;
    	MPInstancePara instancePara = null;
    	for (String para : params) {
    		instancePara = null;
    		procPara = process.getParameter(para);
    		boolean isTO = para.toUpperCase().endsWith("_TO");
    		Object value = parameters.get(para);
    		
    		// Si el parámetro no existe, verifico si existe el parámetro TO.
    		if (procPara == null && isTO) {
   				procPara = process.getParameter(para.substring(0, para.toUpperCase().lastIndexOf("_TO")));
    		}
    		// Si existe el parametro tengo que crear su instancia para esta instancia especifica 
    		// del proceso. Siempre y cuando el valor para asignarle no sea null, ya que si es
    		// null, los parametros no se insertan dentro de sus instancias
    		if (procPara != null) {
    			// Si el parámetro no tiene valor asignado, se obtiene el valor por defecto.
    			if (value == null) 
    				value = isTO ? procPara.getDefaultValue2() : procPara.getDefaultValue();
        		// Si el valor a asignar no es null, entonces creo la instancia y le asigno el valor    			
    			if (value != null) {
    				instancePara = new MPInstancePara(ctx, instance.get_ID(), procPara.getSeqNo());
    				instancePara.setParameter(procPara.getAD_Reference_ID(), value, isTO);
    				instancePara.setParameterName(procPara.getColumnName());
    			}
    			// Verificar si tiene valor por defecto
    			else{
    				// Si tiene valor por defecto crear la instancia del parametro
    				if(procPara.getDefaultValue() != null){
    					instancePara = new MPInstancePara(ctx, instance.get_ID(), procPara.getSeqNo());
        				instancePara.setParameter(procPara.getAD_Reference_ID(),procPara.getDefaultValue(), isTO);
        				instancePara.setParameterName(procPara.getColumnName());
    				}
    			}
    		}
    		// Verificar si es de tipo rango, entonces habria que parsear el nombre del parametro
    		// y asignarle el valor
    		else{ 
    			if(para.toUpperCase().endsWith("_TO")){
    				procPara = process.getParameter(para.substring(0, para.toUpperCase().lastIndexOf("_TO")));
    				if(procPara.isRange()){
    					if(parameters.get(para) != null){
    						instancePara = new MPInstancePara(ctx, instance.get_ID(), procPara.getSeqNo());
    	    				instancePara.setParameter(procPara.getAD_Reference_ID(),parameters.get(para),isTO);
	        				instancePara.setParameterName(procPara.getColumnName());
    					}
    				}
    				// Verificar si tiene valor por defecto
        			else{
        				// Si tiene valor por defecto crear la instancia del parametro
        				if(procPara.getDefaultValue2() != null){
        					instancePara = new MPInstancePara(ctx, instance.get_ID(), procPara.getSeqNo());
            				instancePara.setParameter(procPara.getAD_Reference_ID(),procPara.getDefaultValue2(),isTO);
            				instancePara.setParameterName(procPara.getColumnName());
        				}
        			}
    			}
    		}
    		
    		// Si es no es null entonces lo guardo
    		if(instancePara != null){
    			if(!instancePara.save()){
    				s_log.severe("Error al tratar de guardar la instancia del parametro del proceso. Param=" + para + ", value=" + value);
    				return null;
    			}
    		}
    	}
    	
    	MProcess.execute(ctx,process,pi,trxName);
    	return pi;
    }
    
    public static ProcessInfo execute(Properties ctx,int AD_Process_ID, Map<String, Object> parameters, String trxName){
    	return execute(ctx, AD_Process_ID, 0, parameters, trxName);
    }
	
}	//	MProcess
