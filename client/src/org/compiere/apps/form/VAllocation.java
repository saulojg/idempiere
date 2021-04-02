/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
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
package org.compiere.apps.form;

import java.awt.*;
import java.awt.event.*;
import java.beans.*;
import java.math.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.Date;
import java.util.List;
import java.util.logging.*;

import javax.swing.*;
import javax.swing.event.*;
import javax.swing.table.*;

import org.adempiere.model.MLARSucursal;
import org.adempiere.plaf.AdempierePLAF;
import org.adempiere.process.Comision;
import org.adempiere.utils.Miscfunc;
import org.compiere.apps.*;
import org.compiere.apps.form.LARmodel.exceptions.LAR_Exception;
import org.compiere.grid.ed.*;
import org.compiere.minigrid.*;
import org.compiere.model.*;
import org.compiere.plaf.*;
import org.compiere.process.*;
import org.compiere.swing.*;
import org.compiere.util.*;


/**
 * Allocation Form
 *
 * @author  Jorg Janke
 * @version $Id: VAllocation.java,v 1.2 2006/07/30 00:51:28 jjanke Exp $
 * 
 * Contributor : Fabian Aguilar - OFBConsulting - Multiallocation
 * 
 * Modificado dREHER - jorge.dreher@gmail.com
 * 
 * Multiples filtros y cruces de informacion
 * 
 */
public class VAllocation extends CPanel
	implements FormPanel, ActionListener, TableModelListener, VetoableChangeListener
{
	
	/**
	 *	Initialize Panel
	 *  @param WindowNo window
	 *  @param frame frame
	 */
	public void init (int WindowNo, FormFrame frame)
	{
		m_WindowNo = WindowNo;
		m_frame = frame;
		Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "Y");   //  defaults to no
		m_C_Currency_ID = Env.getContextAsInt(Env.getCtx(), "$C_Currency_ID");   //  default
		//
		log.info("Currency=" + m_C_Currency_ID);
		try
		{
			dynInit();
			jbInit();
			calculate();
			frame.getContentPane().add(mainPanel, BorderLayout.CENTER);
			frame.getContentPane().add(statusBar, BorderLayout.SOUTH);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	init

	/**	Window No			*/
	private int         m_WindowNo = 0;
	/**	FormFrame			*/
	private FormFrame 	m_frame;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VAllocation.class);

	private boolean     m_calculating = false;
	private int         m_C_Currency_ID = 0;
	private int         m_C_BPartner_ID = 0;
	private int         m_C_Charge_ID = 0;
	private int         m_noInvoices = 0;
	private int         m_noPayments = 0;
	private BigDecimal	totalInv = new BigDecimal(0.0);
	private BigDecimal 	totalPay = new BigDecimal(0.0);
	private BigDecimal	totalDiff = new BigDecimal(0.0);

	//  Index	changed if multi-currency
	private int         i_payment = 7;
	//
	private int         i_open = 6;
	private int         i_discount = 7;
	private int         i_writeOff = 8;
	private int 		i_overUnder = 9; 
	private int         i_applied = 10;
//	private int			i_multiplier = 10;
	private int		i_c_bpartnerarendir_id=13;
	//
	private CPanel mainPanel = new CPanel();
	private BorderLayout mainLayout = new BorderLayout();
	private CPanel parameterPanel = new CPanel();
	private CPanel allocationPanel = new CPanel();
	private GridBagLayout parameterLayout = new GridBagLayout();
	private JLabel bpartnerLabel = new JLabel();
	private VLookup bpartnerSearch = null;
	private MiniTable invoiceTable = new MiniTable();
	private MiniTable paymentTable = new MiniTable();
	private JSplitPane infoPanel = new JSplitPane();
	private CPanel paymentPanel = new CPanel();
	private CPanel invoicePanel = new CPanel();
	private JLabel paymentLabel = new JLabel();
	private JLabel invoiceLabel = new JLabel();
	private BorderLayout paymentLayout = new BorderLayout();
	private BorderLayout invoiceLayout = new BorderLayout();
	private JLabel paymentInfo = new JLabel();
	private JLabel invoiceInfo = new JLabel();
	private JScrollPane paymentScrollPane = new JScrollPane();
	private JScrollPane invoiceScrollPane = new JScrollPane();
	private GridBagLayout allocationLayout = new GridBagLayout();
	private JLabel differenceLabel = new JLabel();
	private CTextField differenceField = new CTextField();
	private JButton allocateButton = new JButton();
	private JLabel currencyLabel = new JLabel();
	private VLookup currencyPick = null;
	
	private JLabel sucursalLabel = new JLabel();
	private VLookup sucursalSearch = null;
	
	private JLabel chargeLabel = new JLabel();
	private VLookup chargeSearch = null;
	
	private JCheckBox multiCurrency = new JCheckBox();
	private JLabel allocCurrencyLabel = new JLabel();
	private StatusBar statusBar = new StatusBar();
	private JLabel dateLabel = new JLabel();
	private VDate dateField = new VDate();
	private JCheckBox autoWriteOff = new JCheckBox();
	
	// dREHER, permite buscar todos los pagos pendiente de acreditar, no importa el socio del negocio
	private JButton buscarButton = new JButton();
	private JCheckBox onlyEmployee = new JCheckBox();
	private JCheckBox onlyVendor = new JCheckBox();
	
	// Sergio, Solo Comisiones
	private JCheckBox onlyComisiones = new JCheckBox();
	private JCheckBox tercerizados  = new JCheckBox();

	private int         Select_C_BPartner_ID = 0;
	private int         Select_C_BPartnerARendir_ID = 0;
	private JLabel dateFromLabel = new JLabel();
	private VDate dateFromField = new VDate();
	
	private ArrayList<Integer>	m_bpartnerCheck = new ArrayList<Integer>();
	
	// dREHER marca en forma automatica los pagos pendientes para hacer autoimputacion
	private JCheckBox autoAsigna = new JCheckBox();

	/**
	 *  Static Init
	 *  @throws Exception
	 */
	private void jbInit() throws Exception
	{
		CompiereColor.setBackground(this);
		//
		mainPanel.setLayout(mainLayout);
		dateLabel.setText(Msg.getMsg(Env.getCtx(), "Date"));
		autoWriteOff.setSelected(false);
		autoWriteOff.setText(Msg.getMsg(Env.getCtx(), "AutoWriteOff", true));
		autoWriteOff.setToolTipText(Msg.getMsg(Env.getCtx(), "AutoWriteOff", false));
		
		// dREHER 19/07/2014
		// Utilizo el espacio de autoWriteOff y pongo en su lugar a autoAsigna, por defecto dejo en false a autoWriteOff
		autoAsigna.setSelected(false);
		autoAsigna.setText(Msg.getMsg(Env.getCtx(), "Auto Asignar", true));
		autoAsigna.setToolTipText(Msg.getMsg(Env.getCtx(), "Auto Asignar", false));
		autoAsigna.addActionListener(this);
		
		
		//
		parameterPanel.setLayout(parameterLayout);
		allocationPanel.setLayout(allocationLayout);
		bpartnerLabel.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		paymentLabel.setRequestFocusEnabled(false);
		paymentLabel.setText(" " + Msg.translate(Env.getCtx(), "C_Payment_ID"));
		invoiceLabel.setRequestFocusEnabled(false);
		invoiceLabel.setText(" " + Msg.translate(Env.getCtx(), "C_Invoice_ID"));
		paymentPanel.setLayout(paymentLayout);
		invoicePanel.setLayout(invoiceLayout);
		invoiceInfo.setHorizontalAlignment(SwingConstants.RIGHT);
		invoiceInfo.setHorizontalTextPosition(SwingConstants.RIGHT);
		invoiceInfo.setText(".");
		paymentInfo.setHorizontalAlignment(SwingConstants.RIGHT);
		paymentInfo.setHorizontalTextPosition(SwingConstants.RIGHT);
		paymentInfo.setText(".");
		differenceLabel.setText(Msg.getMsg(Env.getCtx(), "Difference"));
		differenceField.setBackground(AdempierePLAF.getFieldBackground_Inactive());
		differenceField.setEditable(false);
		differenceField.setText("0");
		differenceField.setColumns(8);
		differenceField.setHorizontalAlignment(SwingConstants.RIGHT);
		allocateButton.setText(Msg.getMsg(Env.getCtx(), "Process"));
		allocateButton.addActionListener(this);
		
		// dREHER
		buscarButton.setText(Msg.getMsg(Env.getCtx(), "Buscar Pendientes"));
		buscarButton.addActionListener(this);
		onlyEmployee.setText(Msg.translate(Env.getCtx(), "Empleados"));
		onlyVendor.setText(Msg.translate(Env.getCtx(), "Proveedores"));
		onlyVendor.addActionListener(this);
		onlyEmployee.addActionListener(this);
		
		// Sergio
		onlyComisiones.setText(Msg.translate(Env.getCtx(), "Comisiones"));
		onlyComisiones.addActionListener(this);
		
		tercerizados.setText(Msg.translate(Env.getCtx(), "Tercerizados"));
		tercerizados.addActionListener(this);		
		
		
		dateFromLabel.setText(Msg.getMsg(Env.getCtx(), "Desde"));
		
		
		currencyLabel.setText(Msg.translate(Env.getCtx(), "C_Currency_ID"));
		sucursalLabel.setText(Msg.translate(Env.getCtx(), "Sucursal"));
		multiCurrency.setText(Msg.getMsg(Env.getCtx(), "MultiCurrency"));
		multiCurrency.addActionListener(this);
		allocCurrencyLabel.setText(".");
		
		// dREHER
		chargeLabel.setText(Msg.translate(Env.getCtx(), "C_Charge_ID"));
		
		invoiceScrollPane.setPreferredSize(new Dimension(200, 200));
		paymentScrollPane.setPreferredSize(new Dimension(200, 200));
		mainPanel.add(parameterPanel, BorderLayout.NORTH);
		parameterPanel.add(bpartnerLabel, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(bpartnerSearch, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		parameterPanel.add(dateLabel, new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(dateField, new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		parameterPanel.add(currencyLabel, new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(currencyPick, new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		// dREHER
		parameterPanel.add(sucursalLabel, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(sucursalSearch, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		parameterPanel.add(chargeLabel, new GridBagConstraints(4, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
			parameterPanel.add(chargeSearch, new GridBagConstraints(5, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		parameterPanel.add(multiCurrency, new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		// parameterPanel.add(autoWriteOff, new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0
		//	,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		
		// dREHER 19/07/2014 cambie por autoAsignar, dejo en false a autoWriteOff por defecto
		 parameterPanel.add(autoAsigna, new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		
		// dREHER
		parameterPanel.add(onlyEmployee, new GridBagConstraints(1, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(onlyVendor, new GridBagConstraints(2, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		// Sergio
		parameterPanel.add(onlyComisiones, new GridBagConstraints(3, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(tercerizados, new GridBagConstraints(4, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));	
		
		
		parameterPanel.add(dateFromLabel, new GridBagConstraints(5, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(dateFromField, new GridBagConstraints(6, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(buscarButton, new GridBagConstraints(7, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));

		
		
		mainPanel.add(allocationPanel, BorderLayout.SOUTH);
		allocationPanel.add(differenceLabel, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 0), 0, 0));
		allocationPanel.add(differenceField, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		allocationPanel.add(allocateButton, new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		allocationPanel.add(allocCurrencyLabel, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		
		
		paymentPanel.add(paymentLabel, BorderLayout.NORTH);
		paymentPanel.add(paymentInfo, BorderLayout.SOUTH);
		paymentPanel.add(paymentScrollPane, BorderLayout.CENTER);
		paymentScrollPane.getViewport().add(paymentTable, null);
		invoicePanel.add(invoiceLabel, BorderLayout.NORTH);
		invoicePanel.add(invoiceInfo, BorderLayout.SOUTH);
		invoicePanel.add(invoiceScrollPane, BorderLayout.CENTER);
		invoiceScrollPane.getViewport().add(invoiceTable, null);
		//
		mainPanel.add(infoPanel, BorderLayout.CENTER);
		infoPanel.setOrientation(JSplitPane.VERTICAL_SPLIT);
		infoPanel.setBorder(BorderFactory.createEtchedBorder());
		infoPanel.setTopComponent(paymentPanel);
		infoPanel.setBottomComponent(invoicePanel);
		infoPanel.add(paymentPanel, JSplitPane.TOP);
		infoPanel.add(invoicePanel, JSplitPane.BOTTOM);
		infoPanel.setContinuousLayout(true);
		infoPanel.setPreferredSize(new Dimension(800,250));
		infoPanel.setDividerLocation(300);
	}   //  jbInit

	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		if (m_frame != null)
			m_frame.dispose();
		m_frame = null;
	}	//	dispose

	/**
	 *  Dynamic Init (prepare dynamic fields)
	 *  @throws Exception if Lookups cannot be initialized
	 */
	private void dynInit() throws Exception
	{
		//  Currency
		int AD_Column_ID = 3505;    //  C_Invoice.C_Currency_ID
		MLookup lookupCur = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		currencyPick = new VLookup("C_Currency_ID", true, false, true, lookupCur);
		currencyPick.setValue(new Integer(m_C_Currency_ID));
		currencyPick.addVetoableChangeListener(this);

		//  BPartner
		AD_Column_ID = 3499;        //  C_Invoice.C_BPartner_ID
		MLookup lookupBP = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		bpartnerSearch = new VLookup("C_BPartner_ID", false, false, true, lookupBP); // dREHER - quito mandatory 
		bpartnerSearch.addVetoableChangeListener(this);

		//  Translation
		statusBar.setStatusLine(Msg.getMsg(Env.getCtx(), "AllocateStatus"));
		statusBar.setStatusDB("");

		//  Date set to Login Date
		dateField.setValue(Env.getContextAsDate(Env.getCtx(), "#Date"));
		dateField.addVetoableChangeListener(this);
	
		// dREHER, por defecto pongo una fecha de unos 30 dias atras
		int diasMenos = Integer.valueOf(Miscfunc.ValueFromSystem("DiasParaAsignacionesPendientes", "30", true));
		Date dateAsigna = Miscfunc.addDays(Env.getContextAsDate(Env.getCtx(), "#Date"), -diasMenos);
		dateFromField.setValue(dateAsigna);
		
		int sucAD_Column_ID=0;
		int sucAD_Reference_ID=0; 
		MLookup lookupSucursal=null;
		
		 try 
	        {
	            sucAD_Column_ID = MLARSucursal.getSucursalAD_Column_ID();
	            sucAD_Reference_ID=MLARSucursal.getSucursalAD_Reference_IDFromENV();
	            lookupSucursal = MLookupFactory.get (Env.getCtx(), m_WindowNo, sucAD_Column_ID, DisplayType.Table,Language.getBaseLanguage(),"LAR_Sucursal_ID",sucAD_Reference_ID,true,"");
	            lookupSucursal.refresh();
	        } 
	        catch (SQLException e1) 
	        {
	            e1.printStackTrace();
	            return;
	        } 
	        catch (LAR_Exception e1) 
	        {
	            e1.showDialog();
	            return;
	        }  
	        catch (Exception e) 
	        {
	            e.printStackTrace();
	            return;
	        }
	        
	        sucursalSearch = new VLookup("LAR_Sucursal_ID", false, false, true, lookupSucursal); // dREHER, quito mandatory
	        sucursalSearch.addVetoableChangeListener(this);
	        sucursalSearch.refresh();
	        
	        String propName="#LAR_Sucursal_ID";
			String value = Env.getContext(Env.getCtx(), propName);
			System.out.println("#LAR_Sucursal_ID " + value);
			
			// dREHER 21/05/2014 por defecto lo dejo vacio
			// y utilizo la sucursal como un filtro mas
			if(Env.getAD_Org_ID(Env.getCtx()) != 0){
				if (value != null && !value.isEmpty())
					sucursalSearch.setValue(value);
				if(sucursalSearch.getValue()==null)
			        throw new LAR_Exception("No tiene permiso para ver ninguna sucursal con esta organizacion");
			}
	        
	        // if(sucursalSearch.getValue()==null)
	        //    throw new LAR_Exception("No tiene permiso para ver ninguna sucursal con esta organizacion");
			
			if(sucursalSearch.getValue()!=null)
				wgAdem.utils.Env.setProperty(m_WindowNo+"|"+"LAR_Sucursal_ID", sucursalSearch.getValue().toString());
	        
	        
	    //  C_Charge
			AD_Column_ID = 3333;        //  C_Charge.C_Charge_ID
			MLookup lookupCH = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
			chargeSearch = new VLookup("C_Charge_ID", false, false, true, lookupCH); // dREHER - quito mandatory 
			chargeSearch.addVetoableChangeListener(this);

	}   //  dynInit
	
	/**
	 * 	Set Allocated Flag for payments
	 * 	@param ctx context
	 *	@param C_BPartner_ID if 0 all
	 *	@param trxName trx
	 */
	private void setIsAllocated (Properties ctx, int C_BPartner_ID, String trxName)
	{
		Date fecha = null;
		if(dateFromField.getTimestamp()!=null)
			fecha = new Date(dateFromField.getTimestamp().getTime());
		
		int counter = 0;
		String sql = "SELECT * FROM C_Payment "
			+ "WHERE IsAllocated='N' AND DocStatus IN ('CO','CL')";
		if(fecha != null)
			sql += " AND DateTrx >= '" + Miscfunc.FechaAMD(fecha) + "'";
		
		if (C_BPartner_ID > 0)
			sql += " AND C_BPartner_ID=?";
		else
			sql += " AND AD_Client_ID=" + Env.getAD_Client_ID(ctx);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			if (C_BPartner_ID > 1)
				pstmt.setInt (1, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MPayment pay = new MPayment (ctx, rs, trxName);
				if (pay.testAllocation())
					if (pay.save())
						counter++;
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, e.toString());
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
		log.config("#" + counter);
	}	//	setIsAllocated
	
	/**
	 * 	Set Paid Flag for invoices
	 * 	@param ctx context
	 *	@param C_BPartner_ID if 0 all
	 *	@param trxName transaction
	 */
	private void setIsPaid (Properties ctx, int C_BPartner_ID, String trxName)
	{
		Date fecha = null;
		if(dateFromField.getTimestamp()!=null)
			fecha = new Date(dateFromField.getTimestamp().getTime());
		
		int counter = 0;
		String sql = "SELECT * FROM C_Invoice "
			+ "WHERE IsPaid='N' AND DocStatus IN ('CO','CL')";
		if(fecha != null)
			sql += " AND DateInvoiced >= '" + Miscfunc.FechaAMD(fecha) + "'";
		
		if (C_BPartner_ID > 1)
			sql += " AND C_BPartner_ID=?";
		else
			sql += " AND AD_Client_ID=" + Env.getAD_Client_ID(ctx);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			if (C_BPartner_ID > 1)
				pstmt.setInt (1, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MInvoice invoice = new MInvoice(ctx, rs, trxName);
				if (invoice.testAllocation())
					if (invoice.save())
						counter++;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, e.toString());
		}finally{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		log.config("#" + counter);
		/**/
	}	//	setIsPaid

	/**
	 *  Load Business Partner Info
	 *  - Payments
	 *  - Invoices
	 */
	private void loadBPartner ()
	{		
		log.config("BPartner=" + m_C_BPartner_ID + ", Cur=" + m_C_Currency_ID);
		Waiting w = Miscfunc.Waiting(m_frame);
		
		if(onlyEmployee.isSelected() || onlyVendor.isSelected()){
			if(m_C_BPartner_ID == 0 || m_C_Charge_ID == 0){
				if(!Miscfunc.AD_confirm("Esta operacion puede demorar hasta varios minutos, continuar ?"))
					return;
			}
		}
		
		//  Need to have both values
		// dREHER, ahora el BPartner deja de ser obligatorio
		// m_C_BPartner_ID == 0 ||
		if (m_C_Currency_ID == 0)
			return;

		// dREHER, toma fecha desde
		Date dateFrom = null;

		if(dateFromField.getTimestamp() != null)
			dateFrom = new Date(dateFromField.getTimestamp().getTime());
		
		//	Async BPartner Test
		Integer key = new Integer(m_C_BPartner_ID);
		if (!m_bpartnerCheck.contains(key))
		{
			new Thread()
			{
				public void run()
				{
					// MPayment.setIsAllocated (Env.getCtx(), m_C_BPartner_ID, null);
					// MInvoice.setIsPaid (Env.getCtx(), m_C_BPartner_ID, null);
					// dREHER, agregue filtro x fechas
					setIsAllocated (Env.getCtx(), m_C_BPartner_ID, null);
					setIsPaid (Env.getCtx(), m_C_BPartner_ID, null);
				}
			}.start();
			m_bpartnerCheck.add(key);
		}
		
		
		
		/********************************
		 *  Load unallocated Payments
		 *      1-TrxDate, 2-DocumentNo, (3-Currency, 4-PayAmt,)
		 *      5-ConvAmt, 6-ConvOpen, 7-Allocated
		 */
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		String sql = "SELECT p.DateTrx,p.DocumentNo,p.C_Payment_ID,"  //  1..3
			+ " c.ISO_Code,p.PayAmt,"                            //  4..5
			+ " currencyConvert(p.PayAmt,p.C_Currency_ID,?,p.DateTrx,p.C_ConversionType_ID,p.AD_Client_ID,p.AD_Org_ID),"//  6   #1
			+ " currencyConvert(paymentAvailableX(P.C_Payment_ID),p.C_Currency_ID,?,p.DateTrx,p.C_ConversionType_ID,p.AD_Client_ID,p.AD_Org_ID),"  //  7   #2
			+ " p.MultiplierAP, PAY.lar_sucursal_id "
			+ " , o.Name AS Organizacion, l.Name as Sucursal, "
			+ " PAY.description, p.C_BPartner_ID, bp.Name AS SocioNegocio, ch.C_Charge_ID,"
			+ " COALESCE(PAY.C_BPartnerOut_ID, PAY.C_BPartnerIn_ID ) AS IDSocioARendir, sd.Name AS NameSocioARendir "
			+ " FROM C_Payment_v p"		//	Corrected for AP/AR
			+ " INNER JOIN C_Currency c ON (p.C_Currency_ID=c.C_Currency_ID) "
			
//        		//Agregado para filtrar según sucursal 28-01-10
        		+ "	INNER JOIN c_payment PAY "
        		+ "	ON PAY.c_payment_id=P.c_payment_id "
//        		+ "	INNER JOIN lar_empleadodesucursal ES "
//        		+ "	ON ES.lar_sucursal_id=PAY.lar_sucursal_id "
//        		+ "	INNER JOIN lar_sucursalorg SO "
//        		+ "	ON SO.lar_sucursal_id=PAY.lar_sucursal_id "
//        		+ "	INNER JOIN lar_sucursal SUC "
//        		+ "	ON SUC.lar_sucursal_id=PAY.lar_sucursal_id "
			
    			+ " INNER JOIN AD_Org o ON o.AD_Org_ID=PAY.AD_Org_ID "
    			+ " INNER JOIN LAR_Sucursal l ON l.LAR_Sucursal_ID=PAY.LAR_Sucursal_ID "
    			
    			+ "	INNER JOIN c_bpartner bp "
        		+ "	ON PAY.c_bpartner_id=bp.c_bpartner_id "
        		+ " LEFT JOIN c_charge ch ON ch.C_BPartner_ID=bp.C_BPartner_ID "
        		
        		+ "	LEFT JOIN c_bpartner sd "
        		+ "	ON COALESCE(PAY.c_bpartnerOut_ID,PAY.c_bpartnerIn_ID)=sd.c_bpartner_id "
	
    			// dREHER, 22/02/2013, quite para que solo controle si tiene saldo disponible			
    			+ "WHERE p.Processed='Y' "; // p.IsAllocated='N' AND 
				
				sql += " AND paymentAvailableX(P.C_Payment_ID) <> 0 ";
		
    			// + "WHERE p.Processed='Y'"
// dREHER, 19/6/2012, dejo imputar aunque tenga cargo		+ " AND p.C_Charge_ID IS NULL"		//	Prepayments OK
    			
    			// Si tengo un socio de negocios seleccionado, traigo solo de el
    			if(m_C_BPartner_ID > 0 && m_C_Charge_ID == 0)
    				sql += " AND p.C_BPartner_ID=?"; //      #3
    			else
    				if(m_C_Charge_ID > 0)
    					sql += " AND PAY.C_Charge_ID=" + m_C_Charge_ID;

//			//Agregado para filtrar según sucursal 28-01-10
//        		+ "	AND SO.ad_org_id=" +Env.getAD_Org_ID(Env.getCtx())
//        		+ "	AND ES.ad_user_id=" +Env.getAD_User_ID(Env.getCtx())
//        		+ "	AND SUC.LAR_Sucursal_ID=" + sucursalSearch.getValue() 
//        		+ "	AND SO.isactive='Y' "
//        		+ "	AND ES.isactive='Y' "
    			
    	if(sucursalSearch.getValue()!=null)
    		sql += " AND PAY.LAR_Sucursal_ID=" + (Integer) sucursalSearch.getValue();
        		                   		
		if (!multiCurrency.isSelected())
			sql += " AND p.C_Currency_ID=?";	//      #4
		
		if(onlyEmployee.isSelected() && m_C_Charge_ID == 0)
			sql += " AND bp.IsEmployee='Y' AND bp.IsCustomer='N' AND ch.C_Charge_ID ISNULL "; // AND bp.IsVendor='N' 
		
		if(onlyVendor.isSelected() && m_C_Charge_ID == 0)
			sql += " AND bp.IsVendor='Y' AND bp.IsEmployee='N' AND bp.IsCustomer='N' AND ch.C_Charge_ID ISNULL  ";
		
		
		// Sergio, Saco Control de Fecha si esta intentando pagar comisiones
		if(dateFrom != null && !onlyComisiones.isSelected()){
			sql += " AND PAY.datetrx >= '" + Miscfunc.FechaAMD(dateFrom) + "'";
		}
		
		if(onlyComisiones.isSelected() && m_C_BPartner_ID > 0)
			sql += " AND ( sd.C_BPartner_ID isnull OR sd.C_BPartner_ID = " + m_C_BPartner_ID + ")";
				
		if(m_C_BPartner_ID > 0)
			sql += " ORDER BY p.DateTrx"; // , p.DocumentNo
		else
			sql += " ORDER BY bp.Name, p.DateTrx"; // , p.DocumentNo
		
		
		log.fine("PaySQL=" + sql.toString());
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, m_C_Currency_ID);
			pstmt.setInt(2, m_C_Currency_ID);
			
			// Si selecciono socio del negocio, seteo el mismo en los parametros
			if(m_C_BPartner_ID > 0 && m_C_Charge_ID == 0){
				pstmt.setInt(3, m_C_BPartner_ID);
				if (!multiCurrency.isSelected()){
					pstmt.setInt(4, m_C_Currency_ID);
				}
			}else{
				if (!multiCurrency.isSelected()){
					pstmt.setInt(3, m_C_Currency_ID);
				}
			}
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       //  0-Selection
				line.add(rs.getTimestamp(1));       //  1-TrxDate
				KeyNamePair pp = new KeyNamePair(rs.getInt(3), rs.getString(2));
				line.add(pp);                       //  2-DocumentNo
				if (multiCurrency.isSelected())
				{
					line.add(rs.getString(4));      //  3-Currency
					line.add(rs.getBigDecimal(5));  //  4-PayAmt
				}else
					i_c_bpartnerarendir_id = 11;
				
				line.add(rs.getBigDecimal(6));      //  3/5-ConvAmt
				BigDecimal available = rs.getBigDecimal(7);
				if (available == null || available.signum() == 0)	//	nothing available
					continue;
				line.add(available);				//  4/6-ConvOpen/Available
				line.add(Env.ZERO);					//  5/7-Payment
//				line.add(rs.getBigDecimal(8));		//  6/8-Multiplier
				//
				
				// dREHER, agrego organizacion y sucursal q efectuo el pago
				line.add(rs.getInt("C_BPartner_ID"));
				line.add(rs.getString("SocioNegocio"));
				
				line.add(rs.getString("Organizacion")); //
				line.add(rs.getString("Sucursal")); //
				line.add(rs.getString("Description"));
				line.add(rs.getInt("IDSocioARendir")); // 13
				line.add(rs.getString("NameSocioARendir")); // 14
				
				data.add(line);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally{
			DB.close(rs, pstmt);
			rs=null; pstmt = null;
		}
		//  Remove previous listeners
		paymentTable.getModel().removeTableModelListener(this);
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.translate(Env.getCtx(), "Date"));
		columnNames.add(Util.cleanAmp(Msg.translate(Env.getCtx(), "DocumentNo")));
		if (multiCurrency.isSelected())
		{
			columnNames.add(Msg.getMsg(Env.getCtx(), "TrxCurrency"));
			columnNames.add(Msg.translate(Env.getCtx(), "Amount"));
		}
		columnNames.add(Msg.getMsg(Env.getCtx(), "ConvertedAmount"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "OpenAmt"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "AppliedAmt"));
//		columnNames.add(" ");	//	Multiplier
		
		// dREHER, agrego organizacion y sucural del pago
		columnNames.add(Msg.getMsg(Env.getCtx(), "ID Socio"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Socio del Negocio"));
		
		columnNames.add(Msg.getMsg(Env.getCtx(), "Organization"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Sucursal"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Descripcion"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "ID Socio a rendir"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Nombre Socio"));

		//  Set Model
		DefaultTableModel modelP = new DefaultTableModel(data, columnNames);
		modelP.addTableModelListener(this);
		paymentTable.setModel(modelP);
		//
		int i = 0;
		paymentTable.setColumnClass(i++, Boolean.class, false);         //  0-Selection
		paymentTable.setColumnClass(i++, Timestamp.class, true);        //  1-TrxDate
		paymentTable.setColumnClass(i++, String.class, true);           //  2-Value
		if (multiCurrency.isSelected())
		{
			paymentTable.setColumnClass(i++, String.class, true);       //  3-Currency
			paymentTable.setColumnClass(i++, BigDecimal.class, true);   //  4-PayAmt
		}
		paymentTable.setColumnClass(i++, BigDecimal.class, true);       //  5-ConvAmt
		paymentTable.setColumnClass(i++, BigDecimal.class, true);       //  6-ConvOpen
		paymentTable.setColumnClass(i++, BigDecimal.class, false);      //  7-Allocated
//		paymentTable.setColumnClass(i++, BigDecimal.class, true);      	//  8-Multiplier

		// dREHER
		paymentTable.setColumnClass(i++, Integer.class, true);      //  ID Socio
		paymentTable.setColumnClass(i++, String.class, true);      //  Nombre Socio
		
		paymentTable.setColumnClass(i++, String.class, true);      //  Organizacion
		paymentTable.setColumnClass(i++, String.class, true);      //  Sucursal
		paymentTable.setColumnClass(i++, String.class, true);      //  Description

		paymentTable.setColumnClass(i++, Integer.class, true);      //  ID Socio a rendir
		paymentTable.setColumnClass(i++, String.class, true);      //  Nombre Socio
		
		//
		i_payment = multiCurrency.isSelected() ? 7 : 5;
		

		//  Table UI
		paymentTable.autoSize();


		/********************************
		 *  Load unpaid Invoices
		 *      1-TrxDate, 2-Value, (3-Currency, 4-InvAmt,)
		 *      5-ConvAmt, 6-ConvOpen, 7-ConvDisc, 8-WriteOff, 9-Applied
		 * 
		 SELECT i.DateInvoiced,i.DocumentNo,i.C_Invoice_ID,c.ISO_Code,
		 i.GrandTotal*i.MultiplierAP "GrandTotal", 
		 currencyConvert(i.GrandTotal*i.MultiplierAP,i.C_Currency_ID,i.C_Currency_ID,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID) "GrandTotal $", 
		 invoiceOpen(C_Invoice_ID,C_InvoicePaySchedule_ID) "Open",
		 currencyConvert(invoiceOpen(C_Invoice_ID,C_InvoicePaySchedule_ID),i.C_Currency_ID,i.C_Currency_ID,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.MultiplierAP "Open $", 
		 invoiceDiscount(i.C_Invoice_ID,SysDate,C_InvoicePaySchedule_ID) "Discount",
		 currencyConvert(invoiceDiscount(i.C_Invoice_ID,SysDate,C_InvoicePaySchedule_ID),i.C_Currency_ID,i.C_Currency_ID,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.Multiplier*i.MultiplierAP "Discount $",
		 i.MultiplierAP, i.Multiplier 
		 FROM C_Invoice_v i INNER JOIN C_Currency c ON (i.C_Currency_ID=c.C_Currency_ID) 
		 WHERE -- i.IsPaid='N' AND i.Processed='Y' AND i.C_BPartner_ID=1000001
		 */
		data = new Vector<Vector<Object>>();
		sql = "SELECT i.DateInvoiced,i.DocumentNo,i.C_Invoice_ID," //  1..3
			+ " c.ISO_Code,i.GrandTotal*i.MultiplierAP, "                            //  4..5    Orig Currency
			+ " currencyConvert(i.GrandTotal*i.MultiplierAP,i.C_Currency_ID,?,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID), " //  6   #1  Converted
			+ " currencyConvert(invoiceOpen(I.C_Invoice_ID,C_InvoicePaySchedule_ID),i.C_Currency_ID,?,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.MultiplierAP, "  //  7   #2  Converted Open
			+ " currencyConvert(invoiceDiscount"                               //  8       AllowedDiscount
			+ " (i.C_Invoice_ID,?,C_InvoicePaySchedule_ID),i.C_Currency_ID,?,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.Multiplier*i.MultiplierAP,"               //  #3, #4
			+ " i.MultiplierAP "
			+ " , o.Name AS Organizacion, l.Name as Sucursal, "
			+ " INV.description, INV.C_BPartner_ID, bp.Name AS SocioNegocio, ch.C_Charge_ID,inv.fin_bpartnercredit_id, dt.DocBaseType "
			+ " FROM C_Invoice_v i"		//  corrected for CM/Split
			+ " INNER JOIN C_Invoice INV ON INV.C_Invoice_ID=i.C_Invoice_ID"
			+ " INNER JOIN C_Currency c ON (i.C_Currency_ID=c.C_Currency_ID) "
			
			//Agregado para filtrar según sucursal 28-01-10
//			+ "	INNER JOIN C_Invoice  INV ON INV.c_invoice_id= I.c_invoice_id "
//        		+ "	INNER JOIN lar_empleadodesucursal ES "
//        		+ "	ON ES.lar_sucursal_id=INV.lar_sucursal_id "
//        		+ "	INNER JOIN lar_sucursalorg SO "
//        		+ "	ON SO.lar_sucursal_id=INV.lar_sucursal_id "
//        		+ "	INNER JOIN lar_sucursal SUC "
//        		+ "	ON SUC.lar_sucursal_id=INV.lar_sucursal_id "
        		
			+ " INNER JOIN AD_Org o ON o.AD_Org_ID=INV.AD_Org_ID "
			+ " INNER JOIN LAR_Sucursal l ON l.LAR_Sucursal_ID=INV.LAR_Sucursal_ID "
			
			+ "	INNER JOIN c_bpartner bp ON INV.c_bpartner_id=bp.c_bpartner_id "
			+ " LEFT JOIN c_charge ch ON ch.C_BPartner_ID=bp.C_BPartner_ID "
			
			+ " LEFT JOIN fin_bpartnercredit bpc on bpc.fin_bpartnercredit_id = inv.fin_bpartnercredit_id"
			
			+ " INNER JOIN C_DocType dt ON dt.C_DocType_ID=inv.C_DocType_ID "
			
			+ " WHERE i.Processed='Y'"; // i.IsPaid='N' AND 
			sql += " AND invoiceOpen(i.C_Invoice_ID,C_InvoicePaySchedule_ID) <> 0 ";
		
			if(m_C_BPartner_ID > 0)
				sql += " AND i.C_BPartner_ID=?";
			
			sql+= " AND i.DocStatus IN ('CO', 'CL')";
        		//Agregado para filtrar según sucursal 28-09-09
//        		+ "	AND SO.ad_org_id=" +Env.getAD_Org_ID(Env.getCtx())
//        		+ "	AND ES.ad_user_id=" +Env.getAD_User_ID(Env.getCtx())
//        		+ "	AND SUC.LAR_Sucursal_ID=" + sucursalSearch.getValue() 
//        		+ "	AND SO.isactive='Y' "
//        		+ "	AND ES.isactive='Y' "
		                                            //  #5
			
		if(sucursalSearch.getValue()!=null)
			sql += " AND i.LAR_Sucursal_ID=" + (Integer) sucursalSearch.getValue();	
			
		if (!multiCurrency.isSelected())
			sql += " AND i.C_Currency_ID=?"; //  #6
		
		if(onlyEmployee.isSelected())
			sql += " AND bp.IsEmployee='Y' AND bp.IsCustomer='N' AND ch.C_Charge_ID ISNULL  "; // AND bp.IsVendor='N' 
		
		if(onlyVendor.isSelected())
			sql += " AND bp.IsVendor='Y' AND bp.IsEmployee='N' AND bp.IsCustomer='N' AND ch.C_Charge_ID ISNULL  ";
		
		
		// Sergio, No toma control de fechas si es comisiones
		if(dateFrom != null && !onlyComisiones.isSelected()){
			sql += " AND i.dateinvoiced >= '" + Miscfunc.FechaAMD(dateFrom) + "'";
		}
		
		// Trae solo facturas de comision
		if(onlyComisiones.isSelected())
		{
			sql += " AND (i.c_charge_id isnull OR i.c_charge_id = 1000065 OR UPPER(i.description) LIKE '%COMISION%')";
			sql += " AND i.c_doctype_id = 1000255"; //1000037 no se porque tenia este
			
			// carpetas que no estan en historico o estan en historico hace menos de 60 dias
			sql += " AND 1 = ( CASE WHEN bpc.ishistorico <> 'Y' THEN 1 ELSE (CASE WHEN bpc.fechahistorico > now() - 60 THEN 1 ELSE 0 END )  END)";

			// sql += " AND inv.ispaid = 'N'"; // dREHER 19/07/2014 Ver si cambiar esto con InvoiceOpenX()...
			
			// sergio 09-08-2017
			//en caso que sean comisiones solo va a traer las activas, para las demas cosas no molesta siempre estan en Y
			sql += " AND inv.comisionactiva = 'Y'";
		}
		
		// dREHER
		// Gastos Varios, solo los pendientes
		sql += " AND ( CASE WHEN inv.C_DocType_ID=1000356 THEN COALESCE(inv.auditado,'N')='N' ELSE 1=1 END )" ;
		
		// dREHER
		// Que el tipo base del documento sea FC Clientes o FC Proveedores
		sql += " AND dt.DocBaseType IN ('API','APP','ARI','SOO')";
		
		// dREHER, seteo solo si se paso como parametro
		if(m_C_BPartner_ID > 0)
			sql += " ORDER BY i.DateInvoiced"; // , i.DocumentNo
		else
			sql += " ORDER BY bp.Name, i.DateInvoiced"; // , i.DocumentNo
		
		
		System.out.println("InvSQL=" + sql.toString());
		log.fine("InvSQL=" + sql.toString());
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, m_C_Currency_ID);
			pstmt.setInt(2, m_C_Currency_ID);
			pstmt.setTimestamp(3, (Timestamp)dateField.getValue());
			pstmt.setInt(4, m_C_Currency_ID);
			
			// dREHER, seteo solo si se paso como parametro
			if(m_C_BPartner_ID > 0){
				pstmt.setInt(5, m_C_BPartner_ID);
				if (!multiCurrency.isSelected())
					pstmt.setInt(6, m_C_Currency_ID);
			}else
				if (!multiCurrency.isSelected())
					pstmt.setInt(5, m_C_Currency_ID);
			
			rs = pstmt.executeQuery();
			Vector<Object> line = null; 
			
			BigDecimal open = Env.ZERO;
			BigDecimal discount = Env.ZERO;
			KeyNamePair pp = null;
			
			while (rs.next())
			{
				line = new Vector<Object>();
				line.add(new Boolean(false));       //  0-Selection
				line.add(rs.getTimestamp(1));       //  1-TrxDate
				pp = new KeyNamePair(rs.getInt(3), rs.getString(2));
				line.add(pp);                       //  2-Value
				if (multiCurrency.isSelected())
				{
					line.add(rs.getString(4));      //  3-Currency
					line.add(rs.getBigDecimal(5));  //  4-Orig Amount
				}
				
				line.add(rs.getBigDecimal(6));      //  3/5-ConvAmt
				open = rs.getBigDecimal(7);
				
				if (open == null)		//	no conversion rate
					open = Env.ZERO;
				
				if(onlyComisiones.isSelected())
				{
					open = Comision.getSaldoHabilitado(rs.getInt("C_Invoice_ID"),rs.getInt("FIN_BPartnerCredit_ID") , rs.getInt("C_BPartner_ID"));
					open = open.multiply(new BigDecimal(-1));
				}
				
				if(tercerizados.isSelected())
				{
					open = DB.getSQLValueBD(null, "SELECT saldoautorizadoinvoicetercerizado(" + rs.getInt("C_Invoice_ID") + ")");
					open = open.multiply(new BigDecimal(-1));
				}
				
				
				
				line.add(open);      				//  4/6-ConvOpen
				
				discount = rs.getBigDecimal(8);
				if (discount == null)	//	no concersion rate
					discount = Env.ZERO;
				line.add(discount);					//  5/7-ConvAllowedDisc
				line.add(Env.ZERO);      			//  6/8-WriteOff
				line.add(Env.ZERO);				    //  7/9-OverUnder
				line.add(Env.ZERO);					// 8/10-Applied
//				line.add(rs.getBigDecimal(9));		//	8/10-Multiplier
				//	Add when open <> 0 (i.e. not if no conversion rate)
				
			// dREHER, agrego organizacion y sucursal q efectuo el pago
				
				line.add(rs.getInt("C_BPartner_ID"));
				line.add(rs.getString("SocioNegocio"));
				
				line.add(rs.getString("Organizacion")); //
				line.add(rs.getString("Sucursal")); //
				line.add(rs.getString("Description")); //
				
				
				
				if (Env.ZERO.compareTo(open) != 0)
					data.add(line);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally{
			DB.close(rs, pstmt);
			rs=null; pstmt = null;
		}

		//  Remove previous listeners
		invoiceTable.getModel().removeTableModelListener(this);
		//  Header Info
		columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.translate(Env.getCtx(), "Date"));
		columnNames.add(Util.cleanAmp(Msg.translate(Env.getCtx(), "DocumentNo")));
		if (multiCurrency.isSelected())
		{
			columnNames.add(Msg.getMsg(Env.getCtx(), "TrxCurrency"));
			columnNames.add(Msg.translate(Env.getCtx(), "Amount"));
		}
		columnNames.add(Msg.getMsg(Env.getCtx(), "ConvertedAmount"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "OpenAmt"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Discount"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "WriteOff"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "OverUnderAmt"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "AppliedAmt"));
//		columnNames.add(" ");	//	Multiplier


		// dREHER, agrego organizacion y sucural del pago
		columnNames.add(Msg.getMsg(Env.getCtx(), "ID Socio"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Socio del Negocio"));
		
		columnNames.add(Msg.getMsg(Env.getCtx(), "Organization"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Sucursal"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Descripcion"));

		
		
		//  Set Model
		DefaultTableModel modelI = new DefaultTableModel(data, columnNames);
		modelI.addTableModelListener(this);
		invoiceTable.setModel(modelI);
		//
		i = 0;
		invoiceTable.setColumnClass(i++, Boolean.class, false);         //  0-Selection
		invoiceTable.setColumnClass(i++, Timestamp.class, true);        //  1-TrxDate
		invoiceTable.setColumnClass(i++, String.class, true);           //  2-Value
		if (multiCurrency.isSelected())
		{
			invoiceTable.setColumnClass(i++, String.class, true);       //  3-Currency
			invoiceTable.setColumnClass(i++, BigDecimal.class, true);   //  4-Amt
		}
		invoiceTable.setColumnClass(i++, BigDecimal.class, true);       //  5-ConvAmt
		invoiceTable.setColumnClass(i++, BigDecimal.class, true);       //  6-ConvAmt Open
		invoiceTable.setColumnClass(i++, BigDecimal.class, false);      //  7-Conv Discount
		invoiceTable.setColumnClass(i++, BigDecimal.class, false);      //  8-Conv WriteOff
		invoiceTable.setColumnClass(i++, BigDecimal.class, false);      //  9-Conv OverUnder
		invoiceTable.setColumnClass(i++, BigDecimal.class, false);		//	10-Conv Applied
//		invoiceTable.setColumnClass(i++, BigDecimal.class, true);      	//  10-Multiplier
		
		// dREHER
		
		invoiceTable.setColumnClass(i++, Integer.class, true);      // 11 ID Socio
		invoiceTable.setColumnClass(i++, String.class, true);      // 12 Nombre Socio
		
		invoiceTable.setColumnClass(i++, String.class, true);       // 13 Organizacion
		invoiceTable.setColumnClass(i++, String.class, true);       // 14 Sucursal
		invoiceTable.setColumnClass(i++, String.class, true);       // 15 Descripcion

		
		
		//  Table UI
		invoiceTable.autoSize();

		i_open = multiCurrency.isSelected() ? 6 : 4;
		i_discount = multiCurrency.isSelected() ? 7 : 5;
		i_writeOff = multiCurrency.isSelected() ? 8 : 6;
		i_overUnder = multiCurrency.isSelected() ? 9 : 7;
		i_applied = multiCurrency.isSelected() ? 10 : 8;
//		i_multiplier = multiCurrency.isSelected() ? 10 : 8;

		//  Calculate Totals
		calculate();
		
		Miscfunc.CloseWaiting(w);
	}   //  loadBPartner


	
	/**************************************************************************
	 *  Action Listener.
	 *  - MultiCurrency
	 *  - Allocate
	 *  @param e event
	 */
	public void actionPerformed(ActionEvent e)
	{
		log.fine("Activo control... " + e.getActionCommand());
		
		if (e.getSource().equals(multiCurrency))
			; // 21/05/2014 loadBPartner();
		//	Allocate
		else if (e.getSource().equals(allocateButton))
		{
			this.m_frame.setBusyMessage("Imputando pagos/cobros...");
			this.m_frame.setBusy(true);
			allocateButton.setEnabled(false);
			saveData();
			loadBPartner();
			allocateButton.setEnabled(true);
			Select_C_BPartner_ID = 0;
			Select_C_BPartnerARendir_ID = 0;
			this.m_frame.setBusy(false);
		}
		else if (e.getSource().equals(buscarButton)) // Trae todo aunque no elija un socio del negocio determinado
		{
			this.m_frame.setBusyMessage("Armando nube de pagos pendientes...");
			this.m_frame.setBusy(true);
			// m_C_BPartner_ID = 0;
			// bpartnerSearch.setValue(null);
			// Select_C_BPartner_ID = 0;
			loadBPartner();
			this.m_frame.setBusy(false);
		}
		else if (e.getSource().equals(onlyVendor) && onlyVendor.isSelected())
			Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "N");
		
		else if (e.getSource().equals(onlyVendor) && !onlyVendor.isSelected())
			Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "Y");
		
		else if (e.getSource().equals(onlyEmployee) && onlyEmployee.isSelected())
			Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "N");
		
		else if (e.getSource().equals(onlyEmployee) && !onlyEmployee.isSelected())
			Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "Y");
		else if (e.getSource().equals(autoAsigna)){
			
			this.m_frame.setBusyMessage("Imputando pagos/cobros...");
			this.m_frame.setBusy(true);
			allocateButton.setEnabled(false);
			AutoAsigna();
			autoAsigna.setSelected(false);
			loadBPartner();
			allocateButton.setEnabled(true);
			Select_C_BPartner_ID = 0;
			Select_C_BPartnerARendir_ID = 0;
			this.m_frame.setBusy(false);
			
		}
		
	}   //  actionPerformed

	// dREHER Verifica si existe alguna factura con saldo abierto
	private boolean hayFacturasConSaldo() {
		boolean isOpenSaldo = false;
		
		TableModel mInvoice = invoiceTable.getModel();
		
		for(int x=0; x<mInvoice.getRowCount(); x++){
			BigDecimal saldo = ((BigDecimal)mInvoice.getValueAt(x, i_open)).abs().subtract(((BigDecimal)mInvoice.getValueAt(x, i_applied)).abs());
			if(saldo.compareTo(Env.ZERO) > 0){
				isOpenSaldo = true;
				break;
			}
		}
		return isOpenSaldo;
	}
	
	// dREHER devuelve el total de factura con saldo abierto
	private BigDecimal getTotalSaldo() {
		BigDecimal OpenSaldo = Env.ZERO;
		
		TableModel mInvoice = invoiceTable.getModel();
		
		for(int x=0; x<mInvoice.getRowCount(); x++){
			BigDecimal saldo = ((BigDecimal)mInvoice.getValueAt(x, i_open)).abs().subtract(((BigDecimal)mInvoice.getValueAt(x, i_applied)).abs());
			OpenSaldo = OpenSaldo.add(saldo);
		}
		return OpenSaldo;
	}


	/**
	 *  Table Model Listener.
	 *  - Recalculate Totals
	 *  @param e event
	 */
	public void tableChanged(TableModelEvent e)
	{
		boolean isUpdate = (e.getType() == TableModelEvent.UPDATE);
		//  Not a table update
		if (!isUpdate)
		{
			calculate();
			return;
		}

		/**
		 *  Setting defaults
		 */
		if (m_calculating)  //  Avoid recursive calls
			return;
		
		boolean isInvoice = (e.getSource().equals(invoiceTable.getModel()));
		boolean isPayment = (e.getSource().equals(paymentTable.getModel()));
		
		log.fine("getSource en tableChanged=" + e.getSource());
		
		int row = e.getFirstRow();
		int col = e.getColumn();
		
		// dREHER, si se busco sin indicar socio del negocio, asegurar que primero marque un pago y luego solo habilito las fc que le corresponden
		if(m_C_BPartner_ID == 0){
			
			if(Select_C_BPartner_ID==0 && isInvoice){
				TableModel invoice = invoiceTable.getModel();
				boolean selected = ((Boolean) invoice.getValueAt(row, 0)).booleanValue();
				
				if(selected){
					Miscfunc.ShowMessage("Debe seleccionar un pago/cobro y luego la factura");
					invoiceTable.setValueAt(false, row, 0);
					invoiceTable.repaint();
					return;
				}
			}
			
		}else{
			Select_C_BPartner_ID = m_C_BPartner_ID;
		}
		
		m_calculating = true;
		
		
		log.config("Row=" + row 
			+ ", Col=" + col + ", InvoiceTable=" + isInvoice);
       
	// dREHER 21/05/2014
		// Si estoy marcando en un contexto global
		// asegurar que los marcados coincidan de ambos lados (Facturas -> Pagos)
		
		if(m_C_BPartner_ID == 0 && m_C_Charge_ID == 0){
			
			TableModel mInvoice = invoiceTable.getModel();
			TableModel mPayment = paymentTable.getModel();
			int C_BPartner_ID = 0;
			
			boolean isCorrecto = false;
			boolean isMarcado = false;
			// Busco el socio marcado en la factura, debe tener una correspondencia en pagos
			for(int i=0; i<mInvoice.getRowCount(); i++){
				if(((Boolean)mInvoice.getValueAt(i, 0)).booleanValue()){
					
					C_BPartner_ID = (Integer)mInvoice.getValueAt(i, posColID(mInvoice));
					
					for(int x=0; x<mPayment.getRowCount(); x++){
						if(((Boolean)mPayment.getValueAt(i, 0)).booleanValue()){
							isMarcado = true;
							if(C_BPartner_ID == (Integer)mPayment.getValueAt(i, posColID(mPayment)) ){
								isCorrecto = true;
								break;
							}
						}
					}
					
				}
			} 
			// Sino hay marcado ningun payment todavia, ignoro control
			if(!isMarcado)
				isCorrecto = true;
			
			isMarcado = false;
			//
			if(!isCorrecto){
				for(int i=0; i<mPayment.getRowCount(); i++){
					if(((Boolean)mPayment.getValueAt(i, 0)).booleanValue()){
						
						C_BPartner_ID = (Integer)mPayment.getValueAt(i, posColID(mPayment));
						
						for(int x=0; x<mInvoice.getRowCount(); x++){
							if(((Boolean)mInvoice.getValueAt(i, 0)).booleanValue()){
								isMarcado = true;
								if(C_BPartner_ID == (Integer)mInvoice.getValueAt(i, posColID(mInvoice)) ){
									isCorrecto = true;
									break;
								}
							}
						}
						
					}
				}
				// Sino hay marcado ninguna factura todavia, ignoro control
				if(!isMarcado)
					isCorrecto = true;
			}
			
			// No encontro coincidencias
			
			if(!isCorrecto){
				
				if (!isInvoice){ // Payments
					mPayment.setValueAt(false, row, 0);
					BigDecimal applied = Env.ZERO;
					mPayment.setValueAt(applied, row, i_payment);
					paymentTable.repaint();
					Miscfunc.ShowMessage("Selecciono un socio de negocios diferente, deseleccione primero el que no desea <br>" + "Seleccionado <b>" + Select_C_BPartner_ID);
				}else{ // Invoices
					mInvoice.setValueAt(false, row, 0);
					BigDecimal discount = Env.ZERO;
					BigDecimal writeOff = Env.ZERO;
					BigDecimal applied = Env.ZERO;
					BigDecimal overUnder = Env.ZERO;
					
					mInvoice.setValueAt(discount, row, i_discount);
					mInvoice.setValueAt(applied, row, i_applied);
					mInvoice.setValueAt(writeOff, row, i_writeOff);
					mInvoice.setValueAt(overUnder, row, i_overUnder);
					invoiceTable.repaint();
					Miscfunc.ShowMessage("Selecciono un socio de negocios diferente, deseleccione primero el que no desea <br>" + "Seleccionado <b>" + Select_C_BPartner_ID);
				}
				
				m_calculating = false;
				calculate();
				return;
				
			}
			
			
		}
		
		
		//  Payments
		if (!isInvoice)
		{
			TableModel payment = paymentTable.getModel();
			
			BigDecimal open = (BigDecimal)payment.getValueAt(row, i_open);
			BigDecimal applied = (BigDecimal)payment.getValueAt(row, i_payment);
			
			boolean selecciono = ((Boolean)payment.getValueAt(row, 0)).booleanValue();
			
			if(isPayment){
				Select_C_BPartnerARendir_ID = (Integer)payment.getValueAt(row, posColSocioARendirID(payment));
				log.fine("Select_C_BPartnerARendir_ID=" + Select_C_BPartnerARendir_ID);
			}
			
			if (col == 0)
			{
				// selection of payment row
				if (selecciono)
				{
					
					int C_BPartner_ID_Filter = Select_C_BPartner_ID;
					if(Select_C_BPartnerARendir_ID > 0)
						C_BPartner_ID_Filter = Select_C_BPartnerARendir_ID;
					
					// if(Select_C_BPartnerARendir_ID == 0){

						if( (Select_C_BPartner_ID > 0 && Select_C_BPartner_ID == (Integer)payment.getValueAt(row, posColID(payment))) || 
								Select_C_BPartner_ID == 0 || m_C_Charge_ID > 0){
							applied = open;   //  Open Amount
							if (totalDiff.abs().compareTo(applied.abs()) < 0			// where less is available to allocate than open
									&& totalDiff.signum() == -applied.signum() )    	// and the available amount has the opposite sign
								applied = totalDiff.negate();						// reduce the amount applied to what's available

							Select_C_BPartner_ID = (Integer)payment.getValueAt(row, posColID(payment));

						}else{
							payment.setValueAt(false, row, 0);
							applied = Env.ZERO;
							paymentTable.repaint();
							selecciono = false;
							Miscfunc.ShowMessage("Selecciono un socio de negocios diferente, deseleccione primero el que no desea <br>" + "Seleccionado <b>" + Select_C_BPartner_ID);
						}
						
					// }else{
						
					// }
						
				}
				else    //  de-selected
					applied = Env.ZERO;
			}
			
			
			if (col == i_payment)
			{
				if ( applied.signum() == -open.signum() )
					applied = applied.negate();
				if ( open.abs().compareTo( applied.abs() ) < 0 )
							applied = open;
			}
			
			payment.setValueAt(applied, row, i_payment);
			
			// dREHER, seteo el socio de negocios que selecciono
			if(!selecciono)
				Select_C_BPartner_ID = 0;
			
		}

		//  Invoice
		else 
		{
			TableModel invoice = invoiceTable.getModel();
			boolean selected = ((Boolean) invoice.getValueAt(row, 0)).booleanValue();
			BigDecimal open = (BigDecimal)invoice.getValueAt(row, i_open);
			BigDecimal discount = (BigDecimal)invoice.getValueAt(row, i_discount);
			BigDecimal applied = (BigDecimal)invoice.getValueAt(row, i_applied);
			BigDecimal writeOff = (BigDecimal) invoice.getValueAt(row, i_writeOff);
			BigDecimal overUnder = (BigDecimal) invoice.getValueAt(row, i_overUnder);
			int openSign = open.signum();
			
			if (col == 0)  //selection
			{
				//  selected - set applied amount
				if ( selected )
				{
					
					// dREHER - Si selecciono un payment que tiene un socio a rendir, debo asignar contra una factura que tenga
					// ese mismo socio
					int C_BPartner_ID_Filter = Select_C_BPartner_ID;
					if(Select_C_BPartnerARendir_ID > 0)
						C_BPartner_ID_Filter = Select_C_BPartnerARendir_ID;
					
					if(m_C_Charge_ID > 0){
						C_BPartner_ID_Filter = 0;
					}
					
					boolean isValido = true;
					
					// dREHER, verifico que coincida el socio de negocios seleccionado en pagos con facturas
					if( C_BPartner_ID_Filter != (Integer)invoice.getValueAt(row, posColID(invoice)) && C_BPartner_ID_Filter > 0 ){
						selected = false;
						invoice.setValueAt(false, row, 0);
						Miscfunc.ShowMessage("Debe seleccionar facturas correspondiente al socio de negocios del pago/cobro <br>\n" +
								"Seleccionado en pagos/cobros=<b>" + C_BPartner_ID_Filter + "</b><br>\n" +
								"Seleccionado en facturas=<b>" + invoice.getValueAt(row, posColID(invoice)) );
						
						writeOff = Env.ZERO;
						applied = Env.ZERO;
						overUnder = Env.ZERO;
						
						invoiceTable.repaint();
						isValido = false;
						
					}
					
					if(isValido){


						applied = open;    //  Open Amount
						applied = applied.subtract(discount);
						writeOff = Env.ZERO;  //  to be sure
						overUnder = Env.ZERO;

						if (totalDiff.abs().compareTo(applied.abs()) < 0			// where less is available to allocate than open
								&& totalDiff.signum() == applied.signum() )     	// and the available amount has the same sign
							applied = totalDiff;									// reduce the amount applied to what's available

						if ( autoWriteOff.isSelected() )
							writeOff = open.subtract(applied.add(discount));
						else
							overUnder = open.subtract(applied.add(discount));

					}
					
				}
				else    //  de-selected
				{
					writeOff = Env.ZERO;
					applied = Env.ZERO;
					overUnder = Env.ZERO;
				}
			}
			
			// check entered values are sensible and possibly auto write-off
			if ( selected && col != 0 )
			{
				
				// values should have same sign as open except over/under
				if ( discount.signum() == -openSign )
					discount = discount.negate();
				if ( writeOff.signum() == -openSign)
					writeOff = writeOff.negate();
				if ( applied.signum() == -openSign )
					applied = applied.negate();
				
				// discount and write-off must be less than open amount
				if ( discount.abs().compareTo(open.abs()) > 0)
					discount = open;
				if ( writeOff.abs().compareTo(open.abs()) > 0)
					writeOff = open;
								
				//	 if overUnder has same sign as open it is an under payment -> less than open
				if ( overUnder.signum() == openSign && overUnder.abs().compareTo(open.abs()) > 0)
					overUnder = open;
				
				/*
				 * Three rules to maintain:
				 * 1) |overUnder + writeOff + discount| < open
				 * 2) |writeOff + discount| < open ( in case overUnder is 'negative')
				 * 3) discount + writeOff + overUnder + applied = 0
				 * 
				 *   As only one column is edited at a time and the initial position was one of compliance
				 *   with the rules, we only need to redistribute the increase/decrease in the edited column to 
				 *   the others.
				 */
				
				// comply with rules 1 or 2
				BigDecimal amtOver;
				if ( overUnder.signum() == -openSign )
					amtOver = (discount.add(writeOff)).subtract(open);
				else
					amtOver = (discount.add(writeOff.add(overUnder))).subtract(open);
				
				if ( amtOver.signum() == openSign )
				{
					BigDecimal temp = Env.ZERO;
					if ( col != i_overUnder && overUnder.signum() == openSign )
					{
						temp = overUnder.subtract(amtOver);
						if ( temp.signum() == -openSign )
						{
							overUnder = Env.ZERO;
							amtOver = temp.negate();
						}
						else
						{
							overUnder = temp;
							amtOver = Env.ZERO;
						}
					}
					
					if ( col != i_writeOff )
					{
						temp = writeOff.subtract(amtOver);
						if ( temp.signum() == -openSign )
						{
							writeOff = Env.ZERO;
							amtOver = temp.negate();
						}
						else
						{
							writeOff = temp;
							amtOver = Env.ZERO;
						}
					}
					
					if ( col != i_discount )
					{
						temp = discount.subtract(amtOver);
						if ( temp.signum() == -openSign )
						{
							discount = Env.ZERO;
							amtOver = temp.negate();
						}
						else
						{
							discount = temp;
							amtOver = Env.ZERO;
						}
					}
				}
				
				
				// make everything balance to open
				BigDecimal remainder = open.subtract(discount.add(writeOff.add(overUnder.add(applied))));
				
				// need to increase something
				if ( remainder.signum() == openSign )
				{
					BigDecimal temp = Env.ZERO;
					BigDecimal amtUnder = amtOver.negate();
										
					if ( autoWriteOff.isSelected() && col != i_writeOff )
					{
						temp = writeOff.add(remainder);
						
						if ( temp.abs().compareTo(amtUnder.abs()) > 0  )
						{
							writeOff = amtUnder;
							remainder = temp.subtract(amtUnder);
						}
						else
						{
							writeOff = temp;
							remainder = Env.ZERO;
						}
					}
					
					if ( col != i_overUnder )
					{
						temp = overUnder.add(remainder);
						if ( temp.abs().compareTo(amtUnder.abs()) > 0 )
						{
							overUnder = amtUnder;
							remainder = temp.subtract(amtUnder);
						}
						else
						{
							overUnder = temp;
							remainder = Env.ZERO;
						}
					}
					
					if ( col != i_applied && remainder.signum() != 0 )
					{
						applied = applied.add(remainder);
						remainder = Env.ZERO;
					}	
				}
				
				//		need to decrease some amount/s
				if ( remainder.signum() == -openSign )
				{
					BigDecimal temp = Env.ZERO;
					
										
					if ( autoWriteOff.isSelected() && col != i_writeOff )
					{
						temp = writeOff.add(remainder);
						
						if ( temp.signum() == -openSign  )
						{
							writeOff = Env.ZERO;
							remainder = temp;
						}
						else
						{
							writeOff = temp;
							remainder = Env.ZERO;
						}
					}
					
					
					
					if ( col != i_overUnder && remainder.signum() != 0 )
					{
						overUnder = overUnder.add(remainder);
						remainder = Env.ZERO;
					}	
				}
				
			}
			
			//	Warning if write Off > 30%
			if (autoWriteOff.isSelected() && writeOff.doubleValue()/open.doubleValue() > .30)
				ADialog.warn(m_WindowNo, this, "AllocationWriteOffWarn");
			

			invoice.setValueAt(discount, row, i_discount);
			invoice.setValueAt(applied, row, i_applied);
			invoice.setValueAt(writeOff, row, i_writeOff);
			invoice.setValueAt(overUnder, row, i_overUnder);
			
			invoiceTable.repaint(); //  update r/o
			
			
		}

		m_calculating = false;
		calculate();
	}   //  tableChanged

	// dREHER, devuelve la posicion del ID de C_BPartner dentro de la tabla
	private int posColID(TableModel tabla) {
		int pos = 11;
		
		for(int i=0; i<tabla.getColumnCount(); i++){
			String nameCol = tabla.getColumnName(i);
			if(nameCol.equalsIgnoreCase("ID Socio")){
				pos = i;
				break;
			}
		}
		
		return pos;
	}
	
	// dREHER, devuelve la posicion del ID de C_BPartner a rendir dentro de la tabla
	private int posColSocioARendirID(TableModel tabla) {
		int pos = 13;

		for(int i=0; i<tabla.getColumnCount(); i++){
			String nameCol = tabla.getColumnName(i);
			if(nameCol.equalsIgnoreCase("ID Socio a rendir")){
				pos = i;
				break;
			}
		}

		return pos;
	}
	
	// dREHER, devuelve la posicion del ID de C_BPartner a rendir dentro de la tabla
	private int posColPayment(TableModel tabla, String value) {
		int pos = -1;

		for(int i=0; i<tabla.getColumnCount(); i++){
			String nameCol = tabla.getColumnName(i);
			if(nameCol.equalsIgnoreCase(value)){
				pos = i;
				break;
			}
		}

		return pos;
	}

	/**
	 *  Calculate Allocation info
	 *  
	 *  dREHER devuelve verdadero si da correcto para asignar...
	 */
	private boolean calculate ()
	{
		boolean isProcesable = false;
		
		log.config("");
		//
		DecimalFormat format = DisplayType.getNumberFormat(DisplayType.Amount);
		Timestamp allocDate = null;

		//  Payment
		TableModel payment = paymentTable.getModel();
		totalPay = new BigDecimal(0.0);
		int rows = payment.getRowCount();
		m_noPayments = 0;
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)payment.getValueAt(i, 0)).booleanValue())
			{
				Timestamp ts = (Timestamp)payment.getValueAt(i, 1);
				allocDate = TimeUtil.max(allocDate, ts);
				BigDecimal bd = (BigDecimal)payment.getValueAt(i, i_payment);
				totalPay = totalPay.add(bd);  //  Applied Pay
				m_noPayments++;
				log.fine("Payment_" + i + " = " + bd + " - Total=" + totalPay);
			}
		}
		paymentInfo.setText(String.valueOf(m_noPayments) + " - "
			+ Msg.getMsg(Env.getCtx(), "Sum") + "  " + format.format(totalPay) + " ");

		//  Invoices
		TableModel invoice = invoiceTable.getModel();
		totalInv = new BigDecimal(0.0);
		rows = invoice.getRowCount();
		m_noInvoices = 0;

		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)invoice.getValueAt(i, 0)).booleanValue())
			{
				Timestamp ts = (Timestamp)invoice.getValueAt(i, 1);
				allocDate = TimeUtil.max(allocDate, ts);
				BigDecimal bd = (BigDecimal)invoice.getValueAt(i, i_applied);
				totalInv = totalInv.add(bd);  //  Applied Inv
				m_noInvoices++;
				log.fine("Invoice_" + i + " = " + bd + " - Total=" + totalPay);
			}
		}
		invoiceInfo.setText(String.valueOf(m_noInvoices) + " - "
			+ Msg.getMsg(Env.getCtx(), "Sum") + "  " + format.format(totalInv) + " ");

		//	Set AllocationDate
		if (allocDate != null)
			dateField.setValue(allocDate);
		//  Set Allocation Currency
		allocCurrencyLabel.setText(currencyPick.getDisplay());
		//  Difference
		totalDiff = totalPay.subtract(totalInv);
		differenceField.setText(format.format(totalDiff));
		
		if (totalDiff.compareTo(new BigDecimal(0.0)) == 0){
			allocateButton.setEnabled(true);
			isProcesable = true;
		}else
			allocateButton.setEnabled(false);
		
		return isProcesable;
		
	}   //  calculate

	/**
	 *  Vetoable Change Listener.
	 *  - Business Partner
	 *  - Currency
	 * 	- Date
	 *  @param e event
	 */
	public void vetoableChange (PropertyChangeEvent e)
	{
		String name = e.getPropertyName();
		Object value = e.getNewValue();
		Object valuei = e.getNewValue();
		
		log.fine("Se activo control " + name + "=" + value);
		
		// dREHER, seteo cero por defecto
		// if (value == null)
		//	return;

		if (value == null)
			valuei = new Integer(0);

		
		//  BPartner
		if (name.equals("C_BPartner_ID"))
		{
			bpartnerSearch.setValue(valuei);
			m_C_BPartner_ID = ((Integer)valuei).intValue();
			// 21/05/2014 loadBPartner();
		}
		//	Currency
		else if (name.equals("C_Currency_ID"))
		{
			m_C_Currency_ID = ((Integer)valuei).intValue();
			// 21/05/2014 loadBPartner();
		}
		else if (name.equals("LAR_Sucursal_ID") && value != null)
		{
			String propName=m_WindowNo+"|"+"LAR_Sucursal_ID";
			sucursalSearch.setValue(value);
			if (value != null)
			    wgAdem.utils.Env.setProperty(propName, value.toString());
			
			// 21/05/2014 loadBPartner();
			
		}
	//  Charge
		if (name.equals("C_Charge_ID"))
		{
			chargeSearch.setValue(valuei);
			m_C_Charge_ID = ((Integer)valuei).intValue();
			// 21/05/2014 loadBPartner();
		}

//		Date for Multi-Currency
		else if (name.equals("Date") && multiCurrency.isSelected())
			;// 21/05/2014 loadBPartner();
		
	}   //  vetoableChange

	// dREHER Este proceso marca todos los pagos automaticamente para que las facturas sean autocanceladas
	private void AutoAsigna() {
		
		/**
		 *  Setting defaults
		 */
		if (m_calculating)  //  Avoid recursive calls
			return;
		
		int C_BPartner_ID = m_C_BPartner_ID;
		if(C_BPartner_ID > 0){
			
			if( (!this.onlyVendor.isSelected() && !this.onlyEmployee.isSelected()) || m_C_Charge_ID > 0){
				ADialog.error(m_WindowNo, this, "Solo valido para Clientes, proveedores y Empleados!", null);
				return;
			}
			
		}else{
			ADialog.error(m_WindowNo, this, "Debe seleccionar un socio de negocios valido!", null);
			return;
		}
		
		
		if(Miscfunc.AD_confirm("Este proceso creara asignaciones automaticas para todos los pagos, continuar?")){

			m_calculating = true;

			TableModel mPayment = paymentTable.getModel();

			for(int i=0; i<mPayment.getRowCount(); i++){

				// Tomo el valor disponible para aplicar
				BigDecimal openPayment = (BigDecimal)mPayment.getValueAt(i, i_open);

				// Si tiene disponible para pagar veo que puedo imputar
				if(openPayment.abs().compareTo(Env.ZERO) > 0){

					KeyNamePair pp = (KeyNamePair)mPayment.getValueAt(i, 2);   //  Value
					//  Payment variables
					int C_Payment_ID = pp.getKey();
					/*
					paymentList.add(new Integer(C_Payment_ID));
					//
					BigDecimal PaymentAmt = (BigDecimal)mPayment.getValueAt(i, i_payment);  //  Applied Payment
					amountList.add(PaymentAmt);
					//
					paymentAppliedAmt = paymentAppliedAmt.add(PaymentAmt);
					//
					log.fine("C_Payment_ID=" + C_Payment_ID 
						+ " - PaymentAmt=" + PaymentAmt); // + " * " + Multiplier + " = " + PaymentAmtAbs);

					 */
					MPayment payment = new MPayment(Env.getCtx(), C_Payment_ID, null);
					AsignaPago(payment, openPayment);

				}

			}

			
			paymentTable.repaint();
			invoiceTable.repaint();

			m_calculating = false;

			// Recalcular totales
			calculate();

		} // recorro todos los pagos

	}
		

		
	private void AsignaPago(MPayment pago, BigDecimal openPayment){
		log.fine("Comienza a generar las asignaciones...");

		MAllocationHdr 				pAlloc = null;
		List<Asignacion>			invoices = new ArrayList<Asignacion>();

		TableModel mInvoice = invoiceTable.getModel();
		int AD_Client_ID = Env.getContextAsInt(Env.getCtx(), m_WindowNo, "AD_Client_ID");
		int AD_Org_ID = Env.getContextAsInt(Env.getCtx(), m_WindowNo, "AD_Org_ID");
		int C_BPartner_ID = m_C_BPartner_ID;
		Timestamp DateTrx = (Timestamp)dateField.getValue();
		int C_Currency_ID = m_C_Currency_ID;	//	the allocation currency
		
		//
		if (AD_Org_ID == 0)
		{
			
			// dREHER - valido sucursal,
			if(sucursalSearch.getValue() != null){

				int m_LAR_Sucursal=(Integer)sucursalSearch.getValue();
				String sql="SELECT AD_Org_ID FROM LAR_SucursalOrg WHERE LAR_Sucursal_Id=? AND AD_Org_ID>0";
				try{
					AD_Org_ID=(Integer)DB.getSQLValue(null, sql, m_LAR_Sucursal);
				}
				catch (Exception e){
					e.printStackTrace();
				}

			}else{
				
				// dREHER, busco organizacion del payment marcado para imputar
				AD_Org_ID = pago.getAD_Org_ID();
			}
		}
		
		// dREHER, busco organizacion del payment marcado para imputar
		if (AD_Org_ID <= 0)
			AD_Org_ID = pago.getAD_Org_ID();
		
		if (AD_Org_ID <= 0){
			ADialog.error(m_WindowNo, this, "Org0NotAllowed", null);
			return;
		}
		
		//
		log.config("Client=" + AD_Client_ID + ", Org=" + AD_Org_ID
			+ ", BPartner=" + C_BPartner_ID + ", Date=" + DateTrx );
		
		Trx trx = Trx.get(Trx.createTrxName("AUTOL"), true);
				
		BigDecimal openPay = openPayment.abs();
		BigDecimal saldoPago = openPay;
		BigDecimal _aplicadoAcum = BigDecimal.ZERO;
		
		// Genera las AllocationHdr para cada Factura/Pago
		for (int x=0; x<mInvoice.getRowCount(); x++) {

			BigDecimal tAplicado = Env.ZERO;
			BigDecimal tSaldo = Env.ZERO;

			KeyNamePair pp = (KeyNamePair)mInvoice.getValueAt(x, 2);    //  Value
			//  Invoice variables
			
			int C_Invoice_ID = pp.getKey();
			BigDecimal openInvoice = ((BigDecimal) mInvoice.getValueAt(x, i_open));
			BigDecimal openInv = openInvoice.abs();
			
			// Si no tiene saldo => esquivo
			if (openInv.doubleValue() == 0) continue;
			
			
			// Ahora chequeo cuanto puede aplicar de este payment
			
			// Si el saldo a cancelar de esta factura es mayor al pago, creo asignacion y vuelvo
			if(openInv.doubleValue() >= saldoPago.doubleValue()){
				tAplicado = saldoPago;
				tSaldo = new BigDecimal(openInv.doubleValue() - saldoPago.doubleValue());
			}else{
				tAplicado = openInv;
				tSaldo = Env.ZERO;
			}
			
			mInvoice.setValueAt(tSaldo, x, i_open);
			
			// Acumulo total aplicado
			_aplicadoAcum = _aplicadoAcum.add(tAplicado);

			Asignacion asig = new Asignacion();
			asig.setC_Invoice_ID(C_Invoice_ID);
			asig.setMonto(tAplicado);
			asig.setSaldo(tSaldo);
			
			invoices.add(asig);
			
			// Calculo saldo disponible del pago
			saldoPago = saldoPago.subtract(tAplicado.abs());
			if(saldoPago.doubleValue() <= 0)
				break;
			
		}
			
		// Verifico si pudo aplicar algo de este pago
		if(_aplicadoAcum.doubleValue() > 0){

			// Genero un Header de Imputacion 
			pAlloc = new MAllocationHdr (Env.getCtx(), true,	//	manual
					DateTrx, C_Currency_ID, Env.getContext(Env.getCtx(), "#AD_User_Name"), trx.getTrxName());
			pAlloc.setAD_Org_ID(AD_Org_ID);
			if (!pAlloc.save(trx.getTrxName()))
			{
				log.log(Level.SEVERE, "Allocation not created");
				trx.rollback();
				return;
			}

			log.fine("Se genero el encabezado de asignacion!");

			
			// Genero lineas de asignaciones para c/u de las facturas saldadas
			for(int i=0; i<invoices.size();i++){
				
				Asignacion asig = invoices.get(i);
				BigDecimal aplicado = asig.getMonto();
				BigDecimal saldo = asig.getSaldo();
				if(!pago.isReceipt()){
					aplicado = aplicado.multiply(new BigDecimal(-1));
					saldo = saldo.multiply(new BigDecimal(-1));
				}
				
				// Genero la linea de Imputacion
				MAllocationLine aLine = 
						new MAllocationLine(
								pAlloc,
								aplicado,
								Env.ZERO, // descuento
								Env.ZERO, // writeOff
								saldo);
				aLine.setC_Payment_ID(pago.getC_Payment_ID());
				aLine.setC_Invoice_ID(asig.getC_Invoice_ID());
				aLine.setC_BPartner_ID(C_BPartner_ID);

				if(!aLine.save(trx.getTrxName()))
				{
					log.log(Level.SEVERE, "Allocation Line not created");
					trx.rollback();
					return;
				}

				log.fine("Se genero la linea de asignacion por " + asig.getMonto());

			}
			
			if(!pAlloc.processIt(DocAction.ACTION_Complete)){
				log.warning("No se pudo completar la Imputacion de Saldos a Favor");
				trx.rollback();
				return;
			}
			
			if (!pAlloc.save()){
				log.warning("No se pudo completar la Imputacion de Saldos a Favor");
				trx.rollback();
				return;
			}
			
			log.fine("Completo asignacion # " + pAlloc.getDocumentNo());

		}
		
		trx.commit();
		trx.close();

		if(pAlloc != null)
			statusBar.setStatusLine(pAlloc.getDocumentNo());
	}
	
	
	/**************************************************************************
	 *  Save Data
	 */
	private void saveData()
	{
		if (m_noInvoices + m_noPayments == 0)
			return;

		//  fixed fields
		int AD_Client_ID = Env.getContextAsInt(Env.getCtx(), m_WindowNo, "AD_Client_ID");
		int AD_Org_ID = Env.getContextAsInt(Env.getCtx(), m_WindowNo, "AD_Org_ID");
		int C_BPartner_ID = m_C_BPartner_ID;
		int C_Charge_ID = m_C_Charge_ID;
		int C_Order_ID = 0;
		int C_CashLine_ID = 0;
		Timestamp DateTrx = (Timestamp)dateField.getValue();
		int C_Currency_ID = m_C_Currency_ID;	//	the allocation currency
		
		//
		if (AD_Org_ID == 0)
		{
			
			// dREHER - valido sucursal,
			if(sucursalSearch.getValue() != null){

				int m_LAR_Sucursal=(Integer)sucursalSearch.getValue();
				String sql="SELECT AD_Org_ID FROM LAR_SucursalOrg WHERE LAR_Sucursal_Id=? AND AD_Org_ID>0";
				try{
					AD_Org_ID=(Integer)DB.getSQLValue(null, sql, m_LAR_Sucursal);

				}
				catch (Exception e){
					e.printStackTrace();
				}

			}else{
				
				// dREHER, busco organizacion del primer payment marcado para imputar
				
				AD_Org_ID = posColPayment(paymentTable.getModel(), "Organization");
				if(AD_Org_ID > 0){
					int pRows = paymentTable.getRowCount();
					TableModel payment = paymentTable.getModel();
					for (int i = 0; i < pRows; i++)
					{   //  Payment line is selected
						if (((Boolean)payment.getValueAt(i, 0)).booleanValue())
						{
							AD_Org_ID = (Integer)payment.getValueAt(i, AD_Org_ID);
							break;
						}
						
					}
				}
			}
		}
		
		if (AD_Org_ID <= 0){
			ADialog.error(m_WindowNo, this, "Debe seleccionar una sucursal valida antes de poder asignar", null);
			return;
		}
		
		//
		log.config("Client=" + AD_Client_ID + ", Org=" + AD_Org_ID
			+ ", BPartner=" + C_BPartner_ID + ", Date=" + DateTrx +
			", Charge=" + C_Charge_ID);
		
		Trx trx = Trx.get(Trx.createTrxName("AL"), true);

		//  Payment - Loop and add them to paymentList/amountList
		int pRows = paymentTable.getRowCount();
		TableModel payment = paymentTable.getModel();
		ArrayList<Integer> paymentList = new ArrayList<Integer>(pRows);
		ArrayList<BigDecimal> amountList = new ArrayList<BigDecimal>(pRows);
		BigDecimal paymentAppliedAmt = Env.ZERO;
		for (int i = 0; i < pRows; i++)
		{
			//  Payment line is selected
			if (((Boolean)payment.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair pp = (KeyNamePair)payment.getValueAt(i, 2);   //  Value
				//  Payment variables
				int C_Payment_ID = pp.getKey();
				paymentList.add(new Integer(C_Payment_ID));
				//
				BigDecimal PaymentAmt = (BigDecimal)payment.getValueAt(i, i_payment);  //  Applied Payment
				amountList.add(PaymentAmt);
				//
				paymentAppliedAmt = paymentAppliedAmt.add(PaymentAmt);
				//
				log.fine("C_Payment_ID=" + C_Payment_ID 
					+ " - PaymentAmt=" + PaymentAmt); // + " * " + Multiplier + " = " + PaymentAmtAbs);
			}
		}
		log.config("Number of Payments=" + paymentList.size() + " - Total=" + paymentAppliedAmt);

		//  Invoices - Loop and generate allocations
		int iRows = invoiceTable.getRowCount();
		TableModel invoice = invoiceTable.getModel();
		
		//	Create Allocation
		MAllocationHdr alloc = new MAllocationHdr (Env.getCtx(), true,	//	manual
			DateTrx, C_Currency_ID, Env.getContext(Env.getCtx(), "#AD_User_Name"), trx.getTrxName());
		alloc.setAD_Org_ID(AD_Org_ID);
		if (!alloc.save())
		{
			log.log(Level.SEVERE, "Allocation not created");
			return;
		}
		
		//	For all invoices
		int invoiceLines = 0;
		
		
		BigDecimal unmatchedApplied = Env.ZERO;
		for (int i = 0; i < iRows; i++)
		{
			//  Invoice line is selected
			if (((Boolean)invoice.getValueAt(i, 0)).booleanValue())
			{
				invoiceLines++;
				KeyNamePair pp = (KeyNamePair)invoice.getValueAt(i, 2);    //  Value
				//  Invoice variables
				int C_Invoice_ID = pp.getKey();
				BigDecimal AppliedAmt = (BigDecimal)invoice.getValueAt(i, i_applied);
				//  semi-fixed fields (reset after first invoice)
				BigDecimal DiscountAmt = (BigDecimal)invoice.getValueAt(i, i_discount);
				BigDecimal WriteOffAmt = (BigDecimal)invoice.getValueAt(i, i_writeOff);
				//	OverUnderAmt needs to be in Allocation Currency
				BigDecimal OverUnderAmt = ((BigDecimal)invoice.getValueAt(i, i_open))
					.subtract(AppliedAmt).subtract(DiscountAmt).subtract(WriteOffAmt);
				
				log.config("Invoice #" + i + " - AppliedAmt=" + AppliedAmt);// + " -> " + AppliedAbs);
				//  loop through all payments until invoice applied
				
				Boolean isGenerarPagoHabilitado = false;
				// Logica verificar que el objeto Invoice sea comision, que este en comisiones autorizadas EMP_Comisiones y tomar ultimo Periodo
				
				
				
				for (int j = 0; j < paymentList.size() && AppliedAmt.signum() != 0; j++)
				{
					int C_Payment_ID = ((Integer)paymentList.get(j)).intValue();
					BigDecimal PaymentAmt = (BigDecimal)amountList.get(j);
					if (PaymentAmt.signum() == AppliedAmt.signum())	// only match same sign (otherwise appliedAmt increases)
					{												// and not zero (appliedAmt was checked earlier)
						log.config(".. with payment #" + j + ", Amt=" + PaymentAmt);
						
						BigDecimal amount = AppliedAmt;
						if (amount.abs().compareTo(PaymentAmt.abs()) > 0)  // if there's more open on the invoice
							amount = PaymentAmt;							// than left in the payment
						
						// amount monto final del pago sobre esta factura
						if(isGenerarPagoHabilitado){
							
						}
						
						//	Allocation Line
						MAllocationLine aLine = new MAllocationLine (alloc, amount, 
							DiscountAmt, WriteOffAmt, OverUnderAmt);
						aLine.setDocInfo(C_BPartner_ID, C_Order_ID, C_Invoice_ID);
						aLine.setPaymentInfo(C_Payment_ID, C_CashLine_ID);
						if (!aLine.save())
							log.log(Level.SEVERE, "Allocation Line not written - Invoice=" + C_Invoice_ID);

						//  Apply Discounts and WriteOff only first time
						DiscountAmt = Env.ZERO;
						WriteOffAmt = Env.ZERO;
						//  subtract amount from Payment/Invoice
						AppliedAmt = AppliedAmt.subtract(amount);
						PaymentAmt = PaymentAmt.subtract(amount);
						log.fine("Allocation Amount=" + amount + " - Remaining  Applied=" + AppliedAmt + ", Payment=" + PaymentAmt);
						amountList.set(j, PaymentAmt);  //  update
					}	//	for all applied amounts
				}	//	loop through payments for invoice
				
				if ( AppliedAmt.signum() == 0 && DiscountAmt.signum() == 0 && WriteOffAmt.signum() == 0)
					continue;
				else {			// remainder will need to match against other invoices
					int C_Payment_ID = 0;
					
					//	Allocation Line
					MAllocationLine aLine = new MAllocationLine (alloc, AppliedAmt, 
						DiscountAmt, WriteOffAmt, OverUnderAmt);
					aLine.setDocInfo(C_BPartner_ID, C_Order_ID, C_Invoice_ID);
					aLine.setPaymentInfo(C_Payment_ID, C_CashLine_ID);
					if (!aLine.save(trx.getTrxName()))
						log.log(Level.SEVERE, "Allocation Line not written - Invoice=" + C_Invoice_ID);

					log.fine("Allocation Amount=" + AppliedAmt);
					unmatchedApplied = unmatchedApplied.add(AppliedAmt);
				}
			}   //  invoice selected
		}   //  invoice loop

		// check for unapplied payment amounts (eg from payment reversals)
		for (int i = 0; i < paymentList.size(); i++)	{
			BigDecimal payAmt = (BigDecimal) amountList.get(i);
			if ( payAmt.signum() == 0 )
					continue;
			int C_Payment_ID = ((Integer)paymentList.get(i)).intValue();
			log.fine("Payment=" + C_Payment_ID  
					+ ", Amount=" + payAmt);

			//	Allocation Line
			MAllocationLine aLine = new MAllocationLine (alloc, payAmt, 
				Env.ZERO, Env.ZERO, Env.ZERO);
			aLine.setDocInfo(C_BPartner_ID, 0, 0);
			aLine.setPaymentInfo(C_Payment_ID, 0);
			if (!aLine.save(trx.getTrxName()))
				log.log(Level.SEVERE, "Allocation Line not saved - Payment=" + C_Payment_ID);
			unmatchedApplied = unmatchedApplied.subtract(payAmt);
		}		
		
		if ( unmatchedApplied.signum() != 0 )
			log.log(Level.SEVERE, "Allocation not balanced -- out by " + unmatchedApplied );

		//	Should start WF
		if (alloc.get_ID() != 0)
		{
			alloc.processIt(DocAction.ACTION_Complete);
			alloc.save();
		}
		
		//  Test/Set IsPaid for Invoice - requires that allocation is posted
		for (int i = 0; i < iRows; i++)
		{
			//  Invoice line is selected
			if (((Boolean)invoice.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair pp = (KeyNamePair)invoice.getValueAt(i, 2);    //  Value
				//  Invoice variables
				int C_Invoice_ID = pp.getKey();
				String sql = "SELECT invoiceOpen(C_Invoice_ID, 0) "
					+ "FROM C_Invoice WHERE C_Invoice_ID=?";
				BigDecimal open = DB.getSQLValueBD(trx.getTrxName(), sql, C_Invoice_ID);
				if (open != null && open.signum() == 0)	{
					sql = "UPDATE C_Invoice SET IsPaid='Y' "
						+ "WHERE C_Invoice_ID=" + C_Invoice_ID;
					int no = DB.executeUpdate(sql, trx.getTrxName());
					log.config("Invoice #" + i + " is paid - updated=" + no);
				} else
					log.config("Invoice #" + i + " is not paid - " + open);
			}
		}
		//  Test/Set Payment is fully allocated
		for (int i = 0; i < paymentList.size(); i++)
		{
			int C_Payment_ID = ((Integer)paymentList.get(i)).intValue();
			MPayment pay = new MPayment (Env.getCtx(), C_Payment_ID, trx.getTrxName());
			if (pay.testAllocation())
				pay.save();
			log.config("Payment #" + i + (pay.isAllocated() ? " not" : " is") 
					+ " fully allocated");
		}
		
		
		trx.commit();
		
		
		// Sergio
		//27-10-2016
		// Chequea Asignacion de los pagos ingresados
		// Cargo y Periodo de pagos Sueldos contra facturas
		
		int C_Invoice_ID = 0;
		String sql = "";
		int C_Payment_ID = 0;
		MPayment pay = null;
		MInvoice inv = null;
						
		for(int i=0;i < paymentList.size();i++){
			C_Payment_ID = ((Integer)paymentList.get(i)).intValue();
			pay = new MPayment (Env.getCtx(), C_Payment_ID, trx.getTrxName());
			
			if(pay != null){
				sql = "SELECT inv.C_Invoice_ID"
						+ " FROM C_AllocationLine al"
						+ " INNER JOIN C_AllocationHdr ah ON ah.C_Allocationhdr_id = al.C_Allocationhdr_id"
						+ " INNER JOIN C_Invoice inv ON inv.C_Invoice_ID = al.C_Invoice_ID"
						+ " WHERE ah.docstatus IN ('CO','CL')"
						+ " AND ah.isactive = 'Y'"
						+ " AND al.isactive = 'Y'"
						+ " AND inv.isactive = 'Y'"
						+ " AND inv.docstatus IN ('CO','CL')"
						+ " AND al.C_Payment_ID = " + pay.getC_Payment_ID();
				
				

				C_Invoice_ID = DB.getSQLValue(null, sql);
				if(C_Invoice_ID > 0){
					inv = new MInvoice(Env.getCtx(),C_Invoice_ID,trx.getTrxName());
					
					if(inv != null){
						
						C_Charge_ID = inv.getC_Charge_ID();
						
						// dREHER 27/09/2019
						// Si es un cargo para descuento de dinero, no cambiar el CARGO del Payment
						if(!Miscfunc.UserEspecial(C_Charge_ID, -9)){

							if(pay.getC_Charge_ID() != C_Charge_ID && C_Charge_ID > 0){
								// Para que salga en las planillas
								if(C_Charge_ID == 1000151) // Liquidacion de Sueldo
									C_Charge_ID = 1000051; //Sueldo

								pay.setC_Charge_ID(C_Charge_ID);
								pay.setC_Period_ID(inv.getC_Period_ID());

								if(!pay.save())
									log.warning("No Pudo Guardar Cargo desde C_Invoice");
							}

						}
						
					} 
				}
			
			}
		}
		
		paymentList.clear();
		amountList.clear();
		
		trx.commit();
		trx.close();

		statusBar.setStatusLine(alloc.getDocumentNo());
	}   //  saveData


	public Integer getSucursal() {
		Integer sucursal=new Integer(sucursalSearch.getValue().toString());
		return sucursal;
	}
	
	// Clase para guardar lineas de asignacion
	class Asignacion {
		
		private int C_Invoice_ID = 0;
		private BigDecimal monto = Env.ZERO;
		private BigDecimal saldo = Env.ZERO;
		
		public BigDecimal getSaldo() {
			return saldo;
		}

		public void setSaldo(BigDecimal saldo) {
			this.saldo = saldo;
		}

		public int getC_Invoice_ID() {
			return C_Invoice_ID;
		}

		public void setC_Invoice_ID(int c_Invoice_ID) {
			C_Invoice_ID = c_Invoice_ID;
		}

		public BigDecimal getMonto() {
			return monto;
		}

		public void setMonto(BigDecimal monto) {
			this.monto = monto;
		}

		public Asignacion(){
			
		}
		
	}
	
	
}   //  VAllocation
