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

import java.io.*;
import java.math.*;
import java.sql.*;
import java.util.*;
import java.util.logging.*;
import org.compiere.process.*;
import org.compiere.util.*;

/**
 *	Requisition Model
 *	
 *  @author Jorg Janke
 *  @version $Id: MRequisition.java,v 1.2 2006/07/30 00:51:05 jjanke Exp $
 */
public class MRequisition extends X_M_Requisition implements DocAction
{
	/**
	 * 	Standard Constructor
	 *	@param ctx context
	 *	@param M_Requisition_ID id
	 */
	public MRequisition (Properties ctx, int M_Requisition_ID, String trxName)
	{
		super (ctx, M_Requisition_ID, trxName);
		if (M_Requisition_ID == 0)
		{
		//	setDocumentNo (null);
		//	setAD_User_ID (0);
		//	setM_PriceList_ID (0);
		//	setM_Warehouse_ID(0);
			setDateDoc(new Timestamp(System.currentTimeMillis()));
			setDateRequired (new Timestamp(System.currentTimeMillis()));
			setDocAction (DocAction.ACTION_Complete);	// CO
			setDocStatus (DocAction.STATUS_Drafted);		// DR
			setPriorityRule (PRIORITYRULE_Medium);	// 5
			setTotalLines (Env.ZERO);
			setIsApproved (false);
			setPosted (false);
			setProcessed (false);
		}
	}	//	MRequisition

	/**
	 * 	Load Constructor
	 *	@param ctx context
	 *	@param rs result set
	 */
	public MRequisition (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MRequisition
	
	/** Lines						*/
	private MRequisitionLine[]		m_lines = null;
	
	/**
	 * 	Get Lines
	 *	@return array of lines
	 */
	public MRequisitionLine[] getLines()
	{
		if (m_lines != null) {
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		
		ArrayList<MRequisitionLine> list = new ArrayList<MRequisitionLine>();
		String sql = "SELECT * FROM M_RequisitionLine WHERE M_Requisition_ID=? ORDER BY Line";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, getM_Requisition_ID());
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
				list.add (new MRequisitionLine (getCtx(), rs, get_TrxName()));
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "getLines", e);
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
		m_lines = new MRequisitionLine[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getLines
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MRequisition[");
		sb.append(get_ID()).append("-").append(getDocumentNo())
			.append(",Status=").append(getDocStatus()).append(",Action=").append(getDocAction())
			.append ("]");
		return sb.toString ();
	}	//	toString
	
	/**
	 * 	Get Document Info
	 *	@return document info
	 */
	public String getDocumentInfo()
	{
		return Msg.getElement(getCtx(), "M_Requisition_ID") + " " + getDocumentNo();
	}	//	getDocumentInfo
	
	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
	//	ReportEngine re = ReportEngine.get (getCtx(), ReportEngine.INVOICE, getC_Invoice_ID());
	//	if (re == null)
			return null;
	//	return re.getPDF(file);
	}	//	createPDF

	/**
	 * 	Set default PriceList
	 */
	public void setM_PriceList_ID()
	{
		MPriceList defaultPL = MPriceList.getDefault(getCtx(), false);
		if (defaultPL == null)
			defaultPL = MPriceList.getDefault(getCtx(), true);
		if (defaultPL != null)
			setM_PriceList_ID(defaultPL.getM_PriceList_ID());
	}	//	setM_PriceList_ID()
	
	/**
	 * 	Before Save
	 *	@param newRecord new
	 *	@return true
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (getM_PriceList_ID() == 0)
			setM_PriceList_ID();
		return true;
	}	//	beforeSave
	
	
	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	process
	
	/**	Process Message 			*/
	private String			m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean 		m_justPrepared = false;

	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		setProcessing(false);
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt()
	{
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		MRequisitionLine[] lines = getLines();
		
		//	Invalid
		if (getAD_User_ID() == 0 
			|| getM_PriceList_ID() == 0
			|| getM_Warehouse_ID() == 0
			|| lines.length == 0)
			return DocAction.STATUS_Invalid;
		
		//	Std Period open?
		if (!MPeriod.isOpen(getCtx(), getDateDoc(), MDocType.DOCBASETYPE_PurchaseRequisition))
		{
			m_processMsg = "@PeriodClosed@";
			return DocAction.STATUS_Invalid;
		}
		
		//	Add up Amounts
		int precision = MPriceList.getStandardPrecision(getCtx(), getM_PriceList_ID());
		BigDecimal totalLines = Env.ZERO;
		for (int i = 0; i < lines.length; i++)
		{
			MRequisitionLine line = lines[i];
			BigDecimal lineNet = line.getQty().multiply(line.getPriceActual());
			lineNet = lineNet.setScale(precision, BigDecimal.ROUND_HALF_UP);
			if (lineNet.compareTo(line.getLineNetAmt()) != 0)
			{
				line.setLineNetAmt(lineNet);
				line.save();
			}
			totalLines = totalLines.add (line.getLineNetAmt());
		}
		if (totalLines.compareTo(getTotalLines()) != 0)
		{
			setTotalLines(totalLines);
			save();
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		m_justPrepared = true;
		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * 	Approve Document
	 * 	@return true if success 
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		setIsApproved(true);
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		setIsApproved(false);
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		//	Re-Check
		if (!m_justPrepared)
		{
			String status = prepareIt();
			if (!DocAction.STATUS_InProgress.equals(status))
				return status;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		//	Implicit Approval
		
		// 12/09/2013
		// dREHER Completar no Implica aprobacion, eso lo dejo para cuando se crea una orden de compra
		// ya que el circuito queda mejor a mi parecer
		// El usuario pide material, completa documento, el sector compras aprueba si confirma orden, sino queda sin aprobar...
		
		// if (!isApproved())
		//	approveIt();
		
		log.info("MRequisition.completeIt. Saltea aprobacion, se deja para las OC...");
		
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}

		// Set the definite document number after completed (if needed)
		setDefiniteDocumentNo();

		//
		setProcessed(true);
		setDocAction(ACTION_Close);
		return DocAction.STATUS_Completed;
	}	//	completeIt
	
	/**
	 * 	Set the definite document number after completed
	 */
	private void setDefiniteDocumentNo() {
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		if (dt.isOverwriteDateOnComplete()) {
			setDateDoc(new Timestamp (System.currentTimeMillis()));
		}
		if (dt.isOverwriteSeqOnComplete()) {
			String value = DB.getDocumentNo(getC_DocType_ID(), get_TrxName(), true, this);
			if (value != null)
				setDocumentNo(value);
		}
	}

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;
		
		if (!closeIt())
			return false;
		
		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;
		
		return true;
	}	//	voidIt
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		// Before Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_CLOSE);
		if (m_processMsg != null)
			return false;
		
		//	Close Not delivered Qty
		MRequisitionLine[] lines = getLines();
		BigDecimal totalLines = Env.ZERO;
		for (int i = 0; i < lines.length; i++)
		{
			MRequisitionLine line = lines[i];
			BigDecimal finalQty = line.getQty();
			if (line.getC_OrderLine_ID() == 0)
				finalQty = Env.ZERO;
			else
			{
				MOrderLine ol = new MOrderLine (getCtx(), line.getC_OrderLine_ID(), get_TrxName());
				finalQty = ol.getQtyOrdered();
			}
			//	final qty is not line qty
			if (finalQty.compareTo(line.getQty()) != 0)
			{
				String description = line.getDescription();
				if (description == null)
					description = "";
				description += " [" + line.getQty() + "]"; 
				line.setDescription(description);
				line.setQty(finalQty);
				line.setLineNetAmt();
				line.save();
			}
			totalLines = totalLines.add (line.getLineNetAmt());
		}
		if (totalLines.compareTo(getTotalLines()) != 0)
		{
			setTotalLines(totalLines);
			save();
		}
		// After Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_CLOSE);
		if (m_processMsg != null)
			return false;
		
		return true;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		// Before reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSECORRECT);
		if (m_processMsg != null)
			return false;

		// After reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSECORRECT);
		if (m_processMsg != null)
			return false;

		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		// Before reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;

		// After reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;				
		
		return false;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());
		// Before reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;

		// dREHER, verifico q no tenga OC asociadas, en caso de ser asi, dejo volver atras, sino NO
		Boolean sinOC = true;
		
		String m_req_id = String.valueOf(this.get_ID());
		String ad_client_id =  String.valueOf(this.getAD_Client_ID());
		
		String sql = "SELECT COUNT(*) AS x FROM M_RequisitionLine WHERE M_Requisition_ID=" + m_req_id + " AND C_OrderLine_ID > 0 AND AD_Client_ID=" + ad_client_id;
		// System.out.println(sql);
		PreparedStatement pstmt0 = DB.prepareStatement(sql, null);
		ResultSet r0 = null;
		int c = 0;
		try {
			r0 = pstmt0.executeQuery();
			if(r0.next())
				c = r0.getInt("x");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(r0 != null)
				try {
					r0.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if(pstmt0 != null){
				try {
					pstmt0.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				pstmt0 = null;
			}
		}
		if(c > 0)
			sinOC = false;
		
		// After reActivate
		//	setProcessed(false);
		if(!sinOC)
			if (! reverseCorrectIt()){
				// System.out.println("reverseCorrectIt en MRequisition.java:" + m_processMsg);
				return false;
			}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		// dREHER, fuerzo a que quede en borrador y sin procesar
		this.setDocStatus(STATUS_Voided);
		this.setProcessed(false);
		this.setIsApproved(false); // quito aprobacion
		this.save();
		
		return true;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		StringBuffer sb = new StringBuffer();
		sb.append(getDocumentNo());
		//	 - User
		sb.append(" - ").append(getUserName());
		//	: Total Lines = 123.00 (#1)
		sb.append(": ").
			append(Msg.translate(getCtx(),"TotalLines")).append("=").append(getTotalLines())
			.append(" (#").append(getLines().length).append(")");
		//	 - Description
		if (getDescription() != null && getDescription().length() > 0)
			sb.append(" - ").append(getDescription());
		return sb.toString();
	}	//	getSummary
	
	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
		return getAD_User_ID();
	}
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
		MPriceList pl = MPriceList.get(getCtx(), getM_PriceList_ID(), get_TrxName());
		return pl.getC_Currency_ID();
	}

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return getTotalLines();
	}
	
	/**
	 * 	Get User Name
	 *	@return user name
	 */
	public String getUserName()
	{
		return MUser.get(getCtx(), getAD_User_ID()).getName();
	}	//	getUserName
	
}	//	MRequisition