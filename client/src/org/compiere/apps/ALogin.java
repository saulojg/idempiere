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
package org.compiere.apps;

import java.awt.*;
import java.awt.event.*;
import java.rmi.AccessException;
import java.sql.*;
import java.util.*;
import javax.swing.*;
import javax.swing.event.*;

import org.adempiere.plaf.AdempierePLAF;
import org.compiere.*;
import org.compiere.apps.ADialog;
import org.compiere.apps.AEnv;
import org.compiere.apps.ConfirmPanel;
import org.compiere.apps.OnlineHelp;
import org.compiere.apps.StatusBar;
import org.compiere.db.*;
import org.compiere.grid.ed.*;
import org.compiere.model.*;
import org.compiere.print.*;
import org.compiere.swing.*;
import org.compiere.util.*;
import org.compiere.utils.LARSucursal;


/**
 *	Application Login Window
 *
 *  @author 	Jorg Janke
 *  @version 	$Id: ALogin.java,v 1.2 2006/07/30 00:51:27 jjanke Exp $
 */
public final class ALogin extends CDialog
	implements ActionListener, ChangeListener
{
	/**
	 *	Construct the dialog.
	 *	Need to call initLogin for dynamic start
	 *  @param parent parent
	 */
	public ALogin (Frame parent)
	{
		super (parent, "Login", true);	//	Modal
		log.finer("");
		setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		m_WindowNo = Env.createWindowNo (null);
		res = ResourceBundle.getBundle(RESOURCE);
		//
		try
		{
			jbInit();
		}
		catch(Exception e)
		{
			log.severe(e.toString());
		}
		//  Focus to OK
		this.getRootPane().setDefaultButton(confirmPanel.getOKButton());
		parent.setIconImage(Adempiere.getImage16());
	}   //  ALogin


	// region Roca
	private void close(){
        if (m_isOkSucursal){
        	log.warning("Ok sucursal, cierro");
        	dispose();
        }else
        	log.warning("Mal sucursal, no puedo cerrar!");
    } 
	// endregion Roca


	protected static final String RESOURCE = "org.compiere.apps.ALoginRes";
	private static ResourceBundle res = ResourceBundle.getBundle(RESOURCE);
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ALogin.class);

	private CPanel mainPanel = new CPanel(new BorderLayout());
	private CTabbedPane loginTabPane = new CTabbedPane();
//	private BorderLayout conTabLayout = new BorderLayout();
	private CPanel connectionPanel = new CPanel();
	private CLabel hostLabel = new CLabel();
	private CConnectionEditor hostField = new CConnectionEditor();
	private CLabel userLabel = new CLabel();
	private CTextField userTextField = new CTextField();
	private CLabel passwordLabel = new CLabel();
	private JPasswordField passwordField = new JPasswordField();
	private CPanel defaultPanel = new CPanel();
//	private BorderLayout defaultLayout = new BorderLayout();
	private CLabel clientLabel = new CLabel();
	private CLabel orgLabel = new CLabel();
	private CLabel dateLabel = new CLabel();
	private VDate dateField = new VDate(DisplayType.Date);
	private VComboBox orgCombo = new VComboBox();
	private VComboBox clientCombo = new VComboBox();
	private CLabel warehouseLabel = new CLabel();
	private VComboBox warehouseCombo = new VComboBox();
	private CLabel printerLabel = new CLabel();
	private CPrinter printerField = new CPrinter();
	private CLabel roleLabel = new CLabel();
	private VComboBox roleCombo = new VComboBox();
	private CLabel copy0Label = new CLabel();
	private CLabel titleLabel = new CLabel();
	private CLabel versionLabel = new CLabel();
	private CLabel copy1Label = new CLabel();
	// region Roca
	//TODO German nuevo 24-09-09
	private CLabel sucLabel = new CLabel();
	private VComboBox sucCombo = new VComboBox();
	// endregion
	private GridBagLayout connectionLayout = new GridBagLayout();
	private GridBagLayout defaultPanelLayout = new GridBagLayout();
	private CLabel languageLabel = new CLabel();
	private VComboBox languageCombo = new VComboBox(Language.getNames());
	private CLabel compileDate = new CLabel();
	private CPanel southPanel = new CPanel();
	private BorderLayout southLayout = new BorderLayout();
	private StatusBar statusBar = new StatusBar();
	private ConfirmPanel confirmPanel = new ConfirmPanel(true, false, false, false, false, false, false);
	//private OnlineHelp onlineHelp = new OnlineHelp(true);
	//private CPanel helpPanel = new CPanel();
	private JScrollPane helpScollPane = new JScrollPane();
	private BorderLayout helpLayout = new BorderLayout();

	/** Server Connection       */
	private CConnection 	m_cc;
	/** Application User        */
	private String 			m_user;
	/** Application Password    */
	private String 			m_pwd;
	
	/**	Combo Active			*/
	private boolean			m_comboActive = false;
	/**	Combo Active			*/
	private boolean			m_okPressed = false;
	/**	Connection OK			*/
	private boolean		    m_connectionOK = false;
	/**	Window No				*/
	private int			    m_WindowNo;
	/** Context					*/
	private Properties      m_ctx = Env.getCtx();
	
	private Login			m_login = null;
	
	private boolean			m_isOkSucursal = false; // Roca

	
	/**************************************************************************
	 *	Component initialization
	 *  @throws Exception
	 */
	private void jbInit() throws Exception
	{
		this.setName("Login");
		titleLabel.setFont(new java.awt.Font("Serif", 2, 10));
		titleLabel.setForeground(Color.blue);
		titleLabel.setRequestFocusEnabled(false);
		titleLabel.setToolTipText(Adempiere.getURL());
		titleLabel.setHorizontalTextPosition(SwingConstants.CENTER);
		titleLabel.setIcon(Adempiere.getImageIconLogo());
		titleLabel.setText(Adempiere.getSubtitle());
		titleLabel.setVerticalTextPosition(SwingConstants.BOTTOM);
		versionLabel.setRequestFocusEnabled(false);
		versionLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		versionLabel.setHorizontalTextPosition(SwingConstants.RIGHT);
		hostLabel.setRequestFocusEnabled(false);
		hostLabel.setLabelFor(hostField);
		hostField.addActionListener(this);
		userLabel.setRequestFocusEnabled(false);
		userLabel.setLabelFor(userTextField);
		passwordLabel.setRequestFocusEnabled(false);
		passwordLabel.setLabelFor(passwordField);
		languageLabel.setLabelFor(languageCombo);
		copy0Label.setFont(new java.awt.Font("Serif", 2, 10));
		copy0Label.setForeground(Color.blue);
		copy0Label.setRequestFocusEnabled(false);
		copy1Label.setRequestFocusEnabled(false);
		roleLabel.setRequestFocusEnabled(false);
		roleLabel.setLabelFor(roleCombo);
		clientLabel.setRequestFocusEnabled(false);
		orgLabel.setRequestFocusEnabled(false);
		dateLabel.setRequestFocusEnabled(false);
		warehouseLabel.setRequestFocusEnabled(false);
		printerLabel.setRequestFocusEnabled(false);
		compileDate.setHorizontalAlignment(SwingConstants.RIGHT);
		compileDate.setHorizontalTextPosition(SwingConstants.RIGHT);
		compileDate.setText(Adempiere.DATE_VERSION);
		compileDate.setToolTipText(Adempiere.getImplementationVendor());
		southPanel.setLayout(southLayout);
		loginTabPane.addChangeListener(this);

		//	ConnectionTab
		connectionPanel.setLayout(connectionLayout);
		//
		titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
		versionLabel.setText(Adempiere.MAIN_VERSION);
		versionLabel.setToolTipText(Adempiere.getImplementationVersion());
		hostLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		hostLabel.setText("Host");
		hostLabel.setLabelFor(hostField);
		connectionPanel.add(hostLabel,         new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 5), 0, 0));
		connectionPanel.add(hostField,           new GridBagConstraints(1, 2, 3, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 12), 0, 0));
		userLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		userLabel.setText("User");
		userLabel.setLabelFor(userTextField);
		connectionPanel.add(userLabel,        new GridBagConstraints(0, 3, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 5), 0, 0));
		userTextField.setText("System");			//	default
		connectionPanel.add(userTextField,         new GridBagConstraints(1, 3, 3, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 12), 0, 0));
		passwordLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		passwordLabel.setText("Password");
		passwordLabel.setLabelFor(passwordField);
		connectionPanel.add(passwordLabel,         new GridBagConstraints(0, 4, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 12, 5, 5), 0, 0));
		passwordField.setText("System");			//	default
		connectionPanel.add(passwordField,         new GridBagConstraints(1, 4, 3, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 5, 12), 0, 0));
		languageLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		languageLabel.setText("Language");
		languageLabel.setLabelFor(languageCombo);
		connectionPanel.add(languageLabel,        new GridBagConstraints(0, 5, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 5), 0, 0));
		languageCombo.addActionListener(this);
		connectionPanel.add(languageCombo,          new GridBagConstraints(1, 5, 3, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 12), 0, 0));
		copy0Label.setHorizontalAlignment(SwingConstants.RIGHT);
		connectionPanel.add(copy0Label,       new GridBagConstraints(0, 6, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));

		copy1Label.setText(Adempiere.COPYRIGHT);
		connectionPanel.add(copy1Label,         new GridBagConstraints(1, 6, 2, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 12, 12), 0, 0));
		connectionPanel.add(compileDate,        new GridBagConstraints(2, 1, 2, 1, 0.0, 0.0
			,GridBagConstraints.NORTHEAST, GridBagConstraints.NONE, new Insets(2, 0, 0, 12), 0, 0));
		connectionPanel.add(titleLabel,         new GridBagConstraints(0, 0, 2, 2, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(12, 12, 5, 5), 0, 0));
		connectionPanel.add(versionLabel,        new GridBagConstraints(2, 0, 2, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(12, 5, 0, 12), 0, 0));

		loginTabPane.add(connectionPanel, res.getString("Connection"));

		//	DefaultTab
		defaultPanel.setLayout(defaultPanelLayout);
		//
		roleLabel.setText("Role");
		roleLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		roleLabel.setLabelFor(roleCombo);
		roleCombo.addActionListener(this);
		defaultPanel.add(roleLabel,        new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(12, 12, 5, 5), 0, 0));
		defaultPanel.add(roleCombo,        new GridBagConstraints(1, 0, 1, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(12, 0, 5, 12), 0, 0));
		clientLabel.setText("Client");
		clientLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		clientLabel.setLabelFor(clientCombo);
		defaultPanel.add(clientLabel,       new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 5), 0, 0));
		clientCombo.addActionListener(this);
		defaultPanel.add(clientCombo,        new GridBagConstraints(1, 1, 1, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 12), 0, 0));
		orgLabel.setText("Organization");
		orgLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		orgLabel.setLabelFor(orgCombo);
		defaultPanel.add(orgLabel,         new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 12, 5, 5), 0, 0));
		orgCombo.addActionListener(this);
		defaultPanel.add(orgCombo,        new GridBagConstraints(1, 2, 1, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 5, 12), 0, 0));
		
		// region Roca
		//TODO German nuevo 24-09-09
		sucLabel.setRequestFocusEnabled(false);
		sucLabel.setText("Sucursal");
		sucLabel.setLabelFor(sucCombo);
		sucCombo.addActionListener(this);
		defaultPanel.add(sucLabel,  new GridBagConstraints(0, 3, 1, 1, 0.0, 0.0,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 5), 0, 0));
		defaultPanel.add(sucCombo,   new GridBagConstraints(1, 3, 1, 1, 1.0, 0.0,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 12), 0, 0));
		// endregion Roca
		
		dateLabel.setText("Date");
		dateLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		dateLabel.setLabelFor(dateField);
		defaultPanel.add(dateLabel,       new GridBagConstraints(0, 5, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 5), 0, 0));
		defaultPanel.add(dateField,        new GridBagConstraints(1, 5, 1, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 12), 0, 0));
		//
		warehouseLabel.setText("Warehouse");
		warehouseLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		warehouseLabel.setLabelFor(warehouseCombo);
		printerLabel.setText("Printer");
		printerLabel.setHorizontalAlignment(SwingConstants.RIGHT);
		printerLabel.setLabelFor(printerField);
		
		defaultPanel.add(printerLabel,        new GridBagConstraints(0, 6, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 12, 12, 5), 0, 0));
		defaultPanel.add(printerField,        new GridBagConstraints(1, 6, 1, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 12, 12), 0, 0));
		defaultPanel.add(warehouseLabel,  new GridBagConstraints(0, 4, 1, 1, 0.0, 0.0,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 5), 0, 0));
		defaultPanel.add(warehouseCombo,   new GridBagConstraints(1, 4, 1, 1, 1.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 12), 0, 0));
		//
		loginTabPane.add(defaultPanel, res.getString("Defaults"));

		//  Help
		/*
		helpPanel.setLayout(helpLayout);
		helpPanel.setPreferredSize(new Dimension (100,100));
		helpPanel.add(helpScollPane,  BorderLayout.CENTER);
		loginTabPane.add(helpPanel,  "?");*/
		//
		this.getContentPane().add(mainPanel);
		mainPanel.add(loginTabPane, BorderLayout.CENTER);
		mainPanel.setName("loginMainPanel");
		mainPanel.add(southPanel, BorderLayout.SOUTH);
		//
		southPanel.add(confirmPanel, BorderLayout.NORTH);
		southPanel.add(statusBar, BorderLayout.SOUTH);
		//helpScollPane.getViewport().add(onlineHelp, null);
		confirmPanel.addActionListener(this);
		
		CButton helpBtn = new CButton(Env.getImageIcon2("Help24"));
		helpBtn.setActionCommand("onlineLoginHelp");
		helpBtn.addActionListener(this);
		helpBtn.setToolTipText(res.getString("Help"));
		confirmPanel.addComponent(helpBtn);
		
		statusBar.setStatusDB(null);
	} 	//	jbInit

	/**
	 *	Set Initial & Ini Parameters
	 *	Optional Automatic login
	 *	@return true, if connected & parameters set
	 */
	public boolean initLogin()
	{
		m_isOkSucursal = false; // Roca
		
		m_cc = CConnection.get(Adempiere.getCodeBaseHost());
		hostField.setValue(m_cc);
		
		if ( Ini.isPropertyBool(Ini.P_VALIDATE_CONNECTION_ON_STARTUP)) {
			validateConnection();
		} 

		//  Application/PWD
		userTextField.setText(Ini.getProperty(Ini.P_UID));
		if (Ini.isPropertyBool(Ini.P_STORE_PWD))
			passwordField.setText(Ini.getProperty(Ini.P_PWD));
		else
			passwordField.setText("");
		//
		languageCombo.setSelectedItem(Ini.getProperty(Ini.P_LANGUAGE));

		//	AutoLogin - assumes that connection is OK
		if (Ini.isPropertyBool(Ini.P_A_LOGIN))
		{
			connectionOK ();
			defaultsOK ();
			if (m_connectionOK)		//	simulate
				m_okPressed = true;
			return m_connectionOK;
		}
		return false;
	}	//	initLogin

	// dREHER, sucursal grabada en properties
	private String LoadSucFromIni() {
		System.out.println("Leido desde Properties:" + Ini.getProperty("LAR_Sucursal"));
		return Ini.getProperty("LAR_Sucursal");
	}
	
	// dREHER, sucursal grupo grabada en properties
	private String LoadSucGrupoFromIni() {
		System.out.println("Leido desde Properties:" + Ini.getProperty("LAR_SucursalGrupo_ID"));
		return Ini.getProperty("LAR_SucursalGrupo_ID");
	}

	/**
	 *  Window Events - requestFocus
	 *  @param e event
	 */
	protected void processWindowEvent(WindowEvent e)
	{
		super.processWindowEvent(e);
		if (e.getID() == WindowEvent.WINDOW_OPENED)
		{
			this.toFront();
			confirmPanel.getOKButton().requestFocusInWindow();
		}
	}   //  processWindowEvent

	private void validateAppServer() {
		m_cc.testAppsServer();
		if (m_cc.getAppsServerException() != null)
		{
			if (m_cc.isServerObjects())
			{
				m_cc.getAppsServerException().printStackTrace();
				JOptionPane.showMessageDialog(null, 
					m_cc.getAppsServerException().getLocalizedMessage(),
					"Error", JOptionPane.ERROR_MESSAGE);
			}
		}
	}
	
	private void connectToDatabase() {
		//Check connection
		DB.setDBTarget(m_cc);
		
		//wan or vpn ( remote connection )
		if (m_cc.isServerObjects()) return;
		
		//direct
		DB.connect();
	}
	
	/**
	 *  Validate Connection
	 */
	private void validateConnection()
	{
		m_connectionOK = false;
		validateAppServer();
		
		//make sure connecting to new database
		DB.closeTarget();
		connectToDatabase();
		//
		hostField.setDisplay();
	}   //  validateConnection
	
	
	/*************************************************************************
	 *	Exit action performed
	 */
	private void appExit()
	{
		m_connectionOK = false;
		dispose();
	}	//	appExit_actionPerformed


	/**
	 * 	Return true, if logged in
	 *  @return true if connected
	 */
	public boolean isConnected()
	{
		return m_connectionOK;
	}	//	isConnected

	/**
	 * 	Did the user press OK
	 *	@return true if user pressed final OK button
	 */
	public boolean isOKpressed()
	{
		return m_okPressed;
	}	//	isOKpressed
	
	/**************************************************************************
	 *	Action Event handler
	 *  @param e event
	 */
	public void actionPerformed(ActionEvent e)
	{
		if (e.getActionCommand().equals(ConfirmPanel.A_OK))
		{
			if (loginTabPane.getSelectedIndex() == 0)
				connectionOK();		//	first ok
			else
			{
				setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
				m_okPressed = true; 
				// Dispose if OK - teo_sarca [ 1674663 ]
				if(!defaultsOK())
					m_okPressed = false;
				setCursor(Cursor.getDefaultCursor());
				// region Roca
				
//				dREHER, Guarda ultima sucursal seleccionada
				KeyNamePair suc = (KeyNamePair)sucCombo.getSelectedItem();
				
				if(suc==null){
					// m_okPressed = false;
					log.warning("Debe seleccionar una sucursal valida!");
					// throw new Exception("Debe seleccionar una sucursal valida!");
					// ADialog.warn (m_WindowNo, this, "Debe seleccionar una sucursal valida!");
					m_isOkSucursal = false;
					return;
				}
				
				Ini.setProperty("LAR_Sucursal", suc.getName());
				m_ctx.setProperty("#LAR_Sucursal", suc.getName());
				m_isOkSucursal = true;
				
				
				// dREHER, busco el C_Period_ID de la fecha actual y seteo en el entorno global, para poder utilizar en donde se necesite
				
				int C_Period_ID = DB.getSQLValue(null, "SELECT getperiodo('" + Env.getContextAsDate(m_ctx, "#Date")  + "')" );
				m_ctx.setProperty("#C_Period_ID", String.valueOf(C_Period_ID));
				
				// dREHER, busco el LAR_SucursalGrupo_ID y lo seteo en el entorno global
				int LAR_SucursalGrupo_ID = DB.getSQLValue(null, "SELECT LAR_SucursalGrupo_ID FROM LAR_Sucursal WHERE LAR_Sucursal_ID=" + Env.getContextAsInt(m_ctx, "#LAR_Sucursal_ID"));
				m_ctx.setProperty("#LAR_SucursalGrupo_ID", String.valueOf(LAR_SucursalGrupo_ID));
				
				log.info("Seteo en entorno #LAR_SucursalGrupo_ID" + LAR_SucursalGrupo_ID);
				
				log.info("Seteo en entorno #C_Period_ID=" + C_Period_ID);
				
				
				String isStorageSSH = Miscfunc.ValueFromSystem("isStoreAttachmentOnSSHFileSystem", "N", true, "Y=Si, N=No");
				m_ctx.setProperty("#isStoreAttachmentOnSSHFileSystem", isStorageSSH);
				
				log.info("Seteo en entorno #isStoreAttachmentOnSSHFileSystem=" + isStorageSSH);
				
				String tipoNegocio = Miscfunc.ValueFromSystem("TipoNegocio", "FINANCIERA", true);
				m_ctx.setProperty("#TIPONEGOCIO", String.valueOf(tipoNegocio));
				
				// dREHER 08/07/2015
				// Se logueo en Adempiere, guardo log del acceso
				
				log.info("Comienza el log de ingreso");
				
				MUser us = new MUser(Env.getCtx(), Env.getAD_User_ID(Env.getCtx()), null);
				int C_BPartner_ID = us.getC_BPartner_ID();
				
				java.util.Date date = new java.util.Date();
				Timestamp ahora = new Timestamp(date.getTime());
				
				String Equipo = "";
				InetAddress localHost;
				try {
					localHost = InetAddress.getLocalHost();
					Equipo = localHost.getHostName() + " - " + localHost.getHostAddress();
					System.out.println(localHost.getHostName());
					System.out.println(localHost.getHostAddress());
				} catch (UnknownHostException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				// 09/03/2016 dREHER, solo guardo login si hay un Socio de Negocios asociado
				if(C_BPartner_ID > 0){
					X_LAR_Login l = new X_LAR_Login(Env.getCtx(), 0, null);
					l.setAD_Org_ID(Env.getAD_Org_ID(Env.getCtx()));
					l.setAD_User_ID(Env.getAD_User_ID(Env.getCtx()));
					l.setAD_Role_ID(Env.getAD_Role_ID(Env.getCtx()));
					l.setC_BPartner_ID(C_BPartner_ID);
					l.setDescription("Ingreso al sistema=" + tipoNegocio);
					l.setEquipo(Equipo);
					l.setFecha(ahora);
					l.setLAR_Sucursal_ID(Integer.valueOf(suc.getID()));
					l.setTipo("L"); // Loguin - ingreso a Adempiere
					if(!l.save(null)){
						log.warning("No se pudo guardar log de acceso al sistema");
					}
				}
				
				log.info("Finaliza el log de ingreso");
				
				// Fin de log al sistema
				// endregion Roca
			}
		}
		else if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL))
			appExit();
		//
		else if (e.getSource() == hostField) 
			validateConnection();
		else if (e.getSource() == languageCombo)
			languageComboChanged();
		//
		else if (e.getSource() == roleCombo)
			roleComboChanged();
		else if (e.getSource() == clientCombo)
			clientComboChanged();
		else if (e.getSource() == orgCombo)
			orgComboChanged();
		else if (e.getSource() == sucCombo)
			sucComboChanged();
		else if ("onlineLoginHelp".equals(e.getActionCommand()))
			OnlineHelp.openInDefaultBrowser();
	}	//	actionPerformed


	/**************************************************************************
	 *	Connection OK pressed
	 */
	private void connectionOK ()
	{
		log.info("");
		//
		setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		confirmPanel.getOKButton().setEnabled(false);

		m_connectionOK = tryConnection();

		if (m_connectionOK)			
		{
			//  Verify Language & Load Msg
			Language l = Language.getLoginLanguage();
			Env.verifyLanguage (m_ctx, l);
			Env.setContext(m_ctx, Env.LANGUAGE, l.getAD_Language());
			Msg.getMsg(m_ctx, "0");
			
			//	Migration
			MSystem system = MSystem.get(m_ctx);
			if (system.isJustMigrated())
			{
				statusBar.setStatusLine("Running: After Migration ....", true);
				ADialog.info (m_WindowNo, this, "AfterMigration");
				Thread.yield();
				DB.afterMigration(m_ctx);
			}
			//	Set Defaults
			printerField.setValue(Ini.getProperty(Ini.P_PRINTER));
			//	Change Tab to Default
			loginTabPane.setSelectedIndex(1);
		}

		confirmPanel.getOKButton().setEnabled(true);
		setCursor(Cursor.getDefaultCursor());
	}	//	connectionOK


	/**
	 *	Change of tab					<->
	 *  @param e event
	 */
	public void stateChanged(ChangeEvent e)
	{
		if (loginTabPane.getSelectedIndex() == 2)   //  allow access to help
			return;

		if (!(String.valueOf(passwordField.getPassword()).equals(m_pwd)
			&& userTextField.getText().equals(m_user)))
			m_connectionOK = false;
		//
		if (m_connectionOK)
			statusBar.setStatusLine(txt_LoggedIn);
		else
		{
			statusBar.setStatusLine(txt_NotConnected, true);
			loginTabPane.setSelectedIndex(0);
		}
		confirmPanel.getOKButton().requestFocus();
	}	//	loginTabPane


	/**************************************************************************
	 *	Defaults OK pressed
	 *	@return true if ok
	 */
	private boolean defaultsOK ()
	{
		log.info("");

		KeyNamePair org = (KeyNamePair)orgCombo.getSelectedItem();
		if (org == null)
			return false;

		//	Set Properties
		Ini.setProperty(Ini.P_CONNECTION, CConnection.get().toStringLong());
		Ini.setProperty(Ini.P_LANGUAGE, (String)languageCombo.getSelectedItem());

		String error = m_login.validateLogin(org);
		if (error != null && error.length() > 0)
		{
			ADialog.info(m_WindowNo, this, error);
			appExit();
			return false;
		}
		
		//  Load Properties and save Ini values
		statusBar.setStatusLine("Loading Preferences");
		String msg = m_login.loadPreferences (org,
			(KeyNamePair)warehouseCombo.getSelectedItem(),
			dateField.getTimestamp(), printerField.getDisplay());
		if (msg.length() > 0)
			ADialog.info(m_WindowNo, this, msg);

		//	Check Apps Server - DB Checked in Menu
		checkVersion();			//	exits if conflict

		//  Close - we are done
		if (m_connectionOK)
			this.dispose();
		return m_connectionOK;
	}	//	defaultsOK


	/**************************************************************************
	 *	Try to connect.
	 *  - Get Connection
	 *  - Compare User info
	 *  @return true if connected
	 */
	private boolean tryConnection()
	{
		m_user = userTextField.getText();
		m_pwd = new String (passwordField.getPassword());

		//	Establish connection
		if (!DB.isConnected(false))
			validateConnection();
		
		if (!DB.isConnected(false))
		{
			statusBar.setStatusLine(txt_NoDatabase, true);
			hostField.setBackground(AdempierePLAF.getFieldBackground_Error());
			return false;
		}
		
		//	Reference check
		Ini.setProperty(Ini.P_ADEMPIERESYS, "Reference".equalsIgnoreCase(CConnection.get().getDbUid()));

		//	Reference check
		Ini.setProperty(Ini.P_LOGMIGRATIONSCRIPT, "Reference".equalsIgnoreCase(CConnection.get().getDbUid()));

		//  Get Roles
		m_login = new Login(m_ctx);
		KeyNamePair[] roles = null;
		try 
		{
			roles = m_login.getRoles(m_user, m_pwd);
			if (roles == null || roles.length == 0)
			{
				statusBar.setStatusLine(txt_UserPwdError, true);
				userTextField.setBackground(AdempierePLAF.getFieldBackground_Error());
				passwordField.setBackground(AdempierePLAF.getFieldBackground_Error());
				confirmPanel.getOKButton().setEnabled(true);
				return false;
			}
		}
		catch (Throwable e)
		{
			if (e.getCause() instanceof AccessException)
			{
				statusBar.setStatusLine(txt_UserPwdError, true);
				userTextField.setBackground(AdempierePLAF.getFieldBackground_Error());
				passwordField.setBackground(AdempierePLAF.getFieldBackground_Error());
				confirmPanel.getOKButton().setEnabled(true);
				return false;
			}
			else
			{
				log.severe(CLogger.getRootCause(e).getLocalizedMessage());
				statusBar.setStatusLine(CLogger.getRootCause(e).getLocalizedMessage(), true);
				return false;
			}
		}
		
		
		//	Delete existing role items
		m_comboActive = true;
		if (roleCombo.getItemCount() > 0)
			roleCombo.removeAllItems();

		//  Initial role
		KeyNamePair iniValue = null;
		String iniDefault = Ini.getProperty(Ini.P_ROLE);

		//  fill roles
		for (int i = 0; i < roles.length; i++)
		{
			roleCombo.addItem(roles[i]);
			if (roles[i].getName().equals(iniDefault))
				iniValue = roles[i];
		}
		if (iniValue != null)
			roleCombo.setSelectedItem(iniValue);

		userTextField.setBackground(AdempierePLAF.getFieldBackground_Normal());
		passwordField.setBackground(AdempierePLAF.getFieldBackground_Normal());
		//
		this.setTitle(hostField.getDisplay());
		statusBar.setStatusLine(txt_LoggedIn);
		m_comboActive = false;
		roleComboChanged();
		return true;
	}	//	tryConnection


	/**
	 *	Role changed - fill Client List
	 */
	private void roleComboChanged ()
	{
		KeyNamePair role = (KeyNamePair)roleCombo.getSelectedItem();
		if (role == null || m_comboActive)
			return;
		log.config(": " + role);
		m_comboActive = true;
		//
		KeyNamePair[] clients = m_login.getClients(role);
		//  delete existing client/org items
		if (clientCombo.getItemCount() > 0)
			clientCombo.removeAllItems();
		if (orgCombo.getItemCount() > 0)
			orgCombo.removeAllItems();
		//  No Clients
		if (clients == null || clients.length == 0)
		{
			statusBar.setStatusLine(txt_RoleError, true);
			m_comboActive = false;
			return;
		}
		//  initial client
		KeyNamePair iniValue = null;
		String iniDefault = Ini.getProperty(Ini.P_CLIENT);

		//  fill clients
		for (int i = 0; i < clients.length; i++)
		{
			clientCombo.addItem(clients[i]);
			if (clients[i].getName().equals(iniDefault))
				iniValue = clients[i];
		}
		//	fini
		if (iniValue != null)
			clientCombo.setSelectedItem(iniValue);
		//
		m_comboActive = false;
		clientComboChanged();
	}	//	roleComboChanged


	/**
	 *	Client changed - fill Org & Warehouse List
	 */
	private void clientComboChanged()
	{
		KeyNamePair client = (KeyNamePair)clientCombo.getSelectedItem();
		if (client == null || m_comboActive)
			return;
		log.config(": " + client);
		m_comboActive = true;
		//
		KeyNamePair[] orgs = m_login.getOrgs(client);
		//  delete existing cleint items
		if (orgCombo.getItemCount() > 0)
			orgCombo.removeAllItems();

		//  No Orgs
		if (orgs == null || orgs.length == 0)
		{
			statusBar.setStatusLine(txt_RoleError, true);
			m_comboActive = false;
			return;
		}
		//  initial client
		KeyNamePair orgValue = null;
		KeyNamePair orgValue2 = null;
		String iniDefault = Ini.getProperty(Ini.P_ORG);

		//  fill orgs
		// dREHER si tiene acceso a cero, seteo esa org
		boolean isOrgCero = false;
		KeyNamePair orgCero = null;
		for (int i = 0; i < orgs.length; i++)
		{
			orgCombo.addItem(orgs[i]);
			if (orgs[i].getName().equals(iniDefault))
				orgValue = orgs[i];
			if (orgValue2 == null && orgs[i].getKey() != 0)
				orgValue2 = orgs[i];	//	first non-0 org
			
			
			if(orgs[i].getKey() == 0){
				isOrgCero = true;
				orgCero = orgs[i];
			}
			
		}
		//	Non-0 Org exists and last login was with 0
		if (orgValue2 != null && orgValue != null && orgValue.getKey() == 0)
			orgValue = orgValue2;
		
		
		if(isOrgCero)
			orgValue=orgCero;
		
		//	Last Org
		if (orgValue != null)
			orgCombo.setSelectedItem(orgValue);
		//	Get first Org
		else
			orgValue = (KeyNamePair)orgCombo.getSelectedItem();
		//
		m_comboActive = false;
		orgComboChanged();
	}	//	clientComboChanged

	/**
	 *	Org changed - fill Warehouse List
	 */
	private void orgComboChanged()
	{
		KeyNamePair org = (KeyNamePair)orgCombo.getSelectedItem();
		if (org == null || m_comboActive)
			return;
		log.config(": " + org);
		
		KeyNamePair suc = (KeyNamePair)sucCombo.getSelectedItem();
		log.config(": " + suc);
		
		m_comboActive = true;
		//
		KeyNamePair[] whs = m_login.getWarehouses(org);
		//	Delete existing warehouse items
		if (warehouseCombo.getItemCount() > 0)
			warehouseCombo.removeAllItems();
		
		//  fill warehouses
		if (whs != null)
		{
			//  initial warehouse
			KeyNamePair iniValue = null;
			String iniDefault = Ini.getProperty(Ini.P_WAREHOUSE);
			for (int i = 0; i < whs.length; i++)
			{
				warehouseCombo.addItem(whs[i]);
				if (whs[i].getName().equals(iniDefault))
					iniValue = whs[i];
			}
			if (iniValue != null)
				warehouseCombo.setSelectedItem(iniValue);
		}
		m_comboActive = false;
		
		// dREHER
		fillSucCombo();
		
	}	//	orgComboChanged
	
	/**
	 * @author German Wagner
	 */
	private void fillSucCombo()
	{
		KeyNamePair org = (KeyNamePair)orgCombo.getSelectedItem();
		m_ctx.setProperty("#AD_Org_ID", org.getID());
		KeyNamePair sucs[]=LARSucursal.getSucursales(m_ctx);
		
		if(sucCombo.getItemCount() > 0)
			sucCombo.removeAllItems();
		
		int suc = 0;
		
		// Seteo ultima sucursal grabada en el archivo de propiedades
		// dREHER
		String iniDefault = LoadSucFromIni();
		
		if(sucs!=null)
		{
			for (int i = 0; i < sucs.length; i++){
				sucCombo.addItem(sucs[i]);
				
				if (sucs[i].getName().equals(iniDefault))
					suc = i;
			}
			
			if(sucCombo.getItemCount() > 0){
				sucCombo.setSelectedIndex(suc);
				sucComboChanged();
			}
		}
		
		// dREHER, seteo nombre de sucursal en el entorno
		if((suc > -1) && (sucs.length > 0)){
			m_ctx.setProperty("#LAR_Sucursal", sucs[suc].getName());
			System.out.println("LAR_Sucursal:" + sucs[suc].getName());	
			
			confirmPanel.getOKButton().setEnabled(true);
			
		}
		
		log.warning("lleno combo sucursales...");
		
		// dREHER, sino se llenaron las sucursales, no habilitar boton OK
		if(sucCombo.getItemCount() <= 0){
			log.warning("no habilitar boton...");
				confirmPanel.getOKButton().setEnabled(false);
		}
		
	}
	
	/**
	 * @author German Wagner
	 */
	private void sucComboChanged()
	{
		KeyNamePair suc = (KeyNamePair)sucCombo.getSelectedItem();
		if (suc == null || m_comboActive){
			return;
		}
		
		KeyNamePair org = (KeyNamePair)orgCombo.getSelectedItem();

		m_comboActive = true;
		m_ctx.setProperty("#LAR_Sucursal_ID", suc.getID());
		
		// dREHER, seteo nombre de sucursal en el entorno
		m_ctx.setProperty("#LAR_Sucursal", suc.getName());
		
		
		// dREHER, busco el LAR_SucursalGrupo_ID y lo seteo en el entorno global
		int LAR_SucursalGrupo_ID = DB.getSQLValue(null, "SELECT LAR_SucursalGrupo_ID FROM LAR_Sucursal WHERE LAR_Sucursal_ID=" + suc.getID());
		m_ctx.setProperty("#LAR_SucursalGrupo_ID", String.valueOf(LAR_SucursalGrupo_ID));
		
		
		// dREHER, Detecto cambio de suc, por lo tanto cambiar los almacenes
		KeyNamePair[] whs = m_login.getWarehouses(org, suc);
		//	Delete existing warehouse items
		if (warehouseCombo.getItemCount() > 0){
			warehouseCombo.removeAllItems();
			warehouseCombo.setSelectedItem(null);
		}
		//  fill warehouses
		if (whs != null)
		{
			//  initial warehouse
			KeyNamePair iniValue = null;
			String iniDefault = Ini.getProperty(Ini.P_WAREHOUSE);
			for (int i = 0; i < whs.length; i++)
			{
				warehouseCombo.addItem(whs[i]);
				if (whs[i].getName().equals(iniDefault))
					iniValue = whs[i];
			}
			if (iniValue != null)
				warehouseCombo.setSelectedItem(iniValue);
		}

		m_comboActive = false;
	}
	
	/**
	 *  Check Version
	 *  @return true if version is OK and
	 *  false if version could not be checked or is not the same
	 *  @see AEnv#getServerVersion
	 */
	private boolean checkVersion()
	{
		boolean retValue = false;
		try
		{
			String version = AEnv.getServerVersion();
			if (Adempiere.DATE_VERSION.equals(version))
			{
				log.config("Server = Client - " + version);
				retValue = true;
			}
			else if (version != null)
			{
				StringBuffer msg = new StringBuffer (">>\n");
				msg.append(res.getString("VersionConflict")).append("\n")
					.append(res.getString("VersionInfo")).append("\n");
				msg.append(version == null ? "null" : version).append(" <> ")
					.append(Adempiere.DATE_VERSION).append("\n");
				msg.append(res.getString("PleaseUpgrade")).append("\n<<");
				JOptionPane.showMessageDialog(null, msg.toString(),
					Adempiere.getName() + " - " + res.getString("VersionConflict"),
					JOptionPane.ERROR_MESSAGE);
				AEnv.exit(1);
			}
		}
		catch (Exception e)
		{
			log.severe("Contact Server failed - "
				+ e.getClass().toString() + ": " + e.getMessage());
		}
		return retValue;
	}   //  checkVersion


	/**************************************************************************
	 *	Language issues
	 */
	private String	//	txt_Connected, 
					txt_NotConnected, txt_NoDatabase,
					txt_UserPwdError, txt_RoleError, txt_LoggedIn;

	/**
	 *	Change Language
	 */
	private void languageComboChanged ()
	{
		String langName = (String)languageCombo.getSelectedItem();
	//	log.info( "Language: " + langName);
		Language language = Language.getLanguage(langName);
		Language.setLoginLanguage(language);
		Env.setContext(m_ctx, Env.LANGUAGE, language.getAD_Language());

		//	Locales
		Locale loc = language.getLocale();
		Locale.setDefault(loc);
		this.setLocale(loc);
		res = ResourceBundle.getBundle(RESOURCE, loc);
		//
		this.setTitle(res.getString("Login"));
		hostLabel.setText(res.getString("Host"));
		userLabel.setText(res.getString("User"));
		userLabel.setToolTipText(res.getString("EnterUser"));
		passwordLabel.setText(res.getString("Password"));
		passwordLabel.setToolTipText(res.getString("EnterPassword"));
		languageLabel.setText(res.getString("Language"));
		languageLabel.setToolTipText(res.getString("SelectLanguage"));
		//
		roleLabel.setText(res.getString("Role"));
		clientLabel.setText(res.getString("Client"));
		orgLabel.setText(res.getString("Organization"));
		dateLabel.setText(res.getString("Date"));
		warehouseLabel.setText(res.getString("Warehouse"));
		printerLabel.setText(res.getString("Printer"));
		defaultPanel.setToolTipText(res.getString("Defaults"));
		connectionPanel.setToolTipText(res.getString("Connection"));
		//
	//	txt_Connected = res.getString("Connected");
		txt_NotConnected = res.getString("NotConnected");
		txt_NoDatabase = res.getString("DatabaseNotFound");
		txt_UserPwdError = res.getString("UserPwdError");
		txt_RoleError = res.getString("RoleNotFound");
		txt_LoggedIn = res.getString("Authorized");
		//
		loginTabPane.setTitleAt(0, res.getString("Connection"));
		loginTabPane.setTitleAt(1, res.getString("Defaults"));
		confirmPanel.getOKButton().setToolTipText(res.getString("Ok"));
		confirmPanel.getCancelButton().setToolTipText(res.getString("Cancel"));

		//	DateField with new format
		dateField.setFormat();
		dateField.setValue(new Timestamp(System.currentTimeMillis()));
		//
		if (m_connectionOK)
		{
			this.setTitle(hostField.getDisplay());
			statusBar.setStatusLine(txt_LoggedIn);
		}
		else
		{
			this.setTitle(res.getString("Login"));
			statusBar.setStatusLine(txt_NotConnected, true);
		}
	}   //	languageCombo_actionPerformed

}	//	ALogin