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
import java.nio.channels.FileChannel;
import java.sql.*;
import java.util.*;
import java.util.logging.*;
import java.util.zip.*;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempiere.utils.Miscfunc;
import org.adempiere.utils.SSH.SSHUtil;
import org.compiere.util.*;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;


/**
 *	Attachment Model.
 *	One Attachment can have multiple entries
 *	
 *  @author Jorg Janke
 *  @version $Id: MAttachment.java,v 1.4 2006/07/30 00:58:37 jjanke Exp $
 */
public class MAttachment extends X_AD_Attachment
{
	/**
	 * 	Get Attachment
	 *	@param ctx context
	 *	@param AD_Table_ID table
	 *	@param Record_ID record
	 *	@return attachment or null
	 */
	public static MAttachment get (Properties ctx, int AD_Table_ID, int Record_ID)
	{
		MAttachment retValue = null;
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM AD_Attachment WHERE AD_Table_ID=? AND Record_ID=?";
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, AD_Table_ID);
			pstmt.setInt (2, Record_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = new MAttachment (ctx, rs, null);
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
	}	//	get
	
	/**	Static Logger	*/
	private static CLogger	s_log	= CLogger.getCLogger (MAttachment.class);

	
	/**************************************************************************
	 * 	Standard Constructor
	 *	@param ctx context
	 *	@param AD_Attachment_ID id
	 *	@param trxName transaction
	 */
	public MAttachment(Properties ctx, int AD_Attachment_ID, String trxName)
	{
		super (ctx, AD_Attachment_ID, trxName);
		initAttachmentStoreDetails(ctx, trxName);
		
		// dREHER
		initAttachmentSSHStoreDetails(ctx, trxName);

	}	//	MAttachment

	/**
	 * 	New Constructor
	 *	@param ctx context
	 *	@param AD_Table_ID table
	 *	@param Record_ID record
	 *	@param trxName transaction
	 */
	public MAttachment(Properties ctx, int AD_Table_ID, int Record_ID, String trxName)
	{
		this (ctx, 0, trxName);
		setAD_Table_ID (AD_Table_ID);
		setRecord_ID (Record_ID);
		initAttachmentStoreDetails(ctx, trxName);
		
		// dREHER
		initAttachmentSSHStoreDetails(ctx, trxName);
		
	}	//	MAttachment

	/**
	 * 	Load Constructor
	 *	@param ctx context
	 *	@param rs result set
	 *	@param trxName transaction
	 */
	public MAttachment(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
		initAttachmentStoreDetails(ctx, trxName);
		
		// dREHER
		initAttachmentSSHStoreDetails(ctx, trxName);
	}	//	MAttachment
	
	/** Indicator for no data   */
	public static final String 	NONE = ".";
	/** Indicator for zip data  */
	public static final String 	ZIP = "zip";
	/** Indicator for xml data (store on file system) */
	public static final String 	XML = "xml";

	/**	List of Entry Data		*/
	private ArrayList<MAttachmentEntry> m_items = null;
	
	/** is this client using the file system for attachments */
	private boolean isStoreAttachmentsOnFileSystem = false;
	
	/** attachment (root) path - if file system is used */
	private String m_attachmentPathRoot = "";
	
	/** string replaces the attachment root in stored xml file
	 * to allow the changing of the attachment root. */
	private final String ATTACHMENT_FOLDER_PLACEHOLDER = "%ATTACHMENT_FOLDER%";
	
	/** is this client using the SSH file system for attachments */
	// dREHER
	private boolean isStoreAttachmentsOnSSHFileSystem = false;
	
	private String SSHServer = "181.30.8.146";
	private int SSHPort = 1026;
	private String SSHUserName = "attachment";
	private String SSHUserPassword = "attachment";

	
	/**
	 * Get the isStoreAttachmentsOnFileSystem and attachmentPath for the client.
	 * @param ctx
	 * @param trxName
	 */
	private void initAttachmentStoreDetails(Properties ctx, String trxName){
		final MClient client = new MClient(ctx, this.getAD_Client_ID(), trxName);
		isStoreAttachmentsOnFileSystem = client.isStoreAttachmentsOnFileSystem();
		if(isStoreAttachmentsOnFileSystem){
			if(File.separatorChar == '\\'){
				m_attachmentPathRoot = client.getWindowsAttachmentPath();
			} else {
				m_attachmentPathRoot = client.getUnixAttachmentPath();
			}
			if("".equals(m_attachmentPathRoot)){
				log.severe("no attachmentPath defined");
			} else if (!m_attachmentPathRoot.endsWith(File.separator)){
				log.warning("attachment path doesn't end with " + File.separator);
				m_attachmentPathRoot = m_attachmentPathRoot + File.separator;
				log.fine(m_attachmentPathRoot);
			}
		}
	}
	
	/**
	 * 	Set Client Org
	 *	@param AD_Client_ID client
	 *	@param AD_Org_ID org
	 */
	public void setClientOrg(int AD_Client_ID, int AD_Org_ID) 
	{
		super.setClientOrg(AD_Client_ID, AD_Org_ID);
	}	//	setClientOrg

	/**
	 * 	Add to Text Msg
	 *	@param added text
	 */
	public void addTextMsg (String added)
	{
		String oldTextMsg = getTextMsg();
		if (oldTextMsg == null)
			setTextMsg (added);
		else if (added != null)
			setTextMsg (oldTextMsg + added);
	}	//	addTextMsg
	
	/**
	 * 	Get Text Msg
	 *	@return trimmed message
	 */
	public String getTextMsg ()
	{
		String msg = super.getTextMsg ();
		if (msg == null)
			return null;
		return msg.trim();
	}	//	setTextMsg
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString()
	{
		StringBuffer sb = new StringBuffer("MAttachment[");
		sb.append(getAD_Attachment_ID()).append(",Title=").append(getTitle())
			.append(",Entries=").append(getEntryCount());
		for (int i = 0; i < getEntryCount(); i++)
		{
			if (i == 0)
				sb.append(":");
			else
				sb.append(",");
			sb.append(getEntryName(i));
		}
		sb.append("]");
		return sb.toString();
	}	//	toString

	/**
	 * 	Add new Data Entry
	 *	@param file file
	 *	@return true if added
	 */
	public boolean addEntry (File file)
	{
		if (file == null)
		{
			log.warning("No File");
			return false;
		}
		if (!file.exists() || file.isDirectory())
		{
			log.warning("not added - " + file
				+ ", Exists=" + file.exists() + ", Directory=" + file.isDirectory());
			return false;
		}
		log.fine("addEntry - " + file);
		//
		String name = file.getName();
		byte[] data = null;
		try
		{
			FileInputStream fis = new FileInputStream (file);
			ByteArrayOutputStream os = new ByteArrayOutputStream();
			byte[] buffer = new byte[1024*8];   //  8kB
			int length = -1;
			while ((length = fis.read(buffer)) != -1)
				os.write(buffer, 0, length);
			fis.close();
			data = os.toByteArray();
			os.close();
		}
		catch (IOException ioe)
		{
			log.log(Level.SEVERE, "(file)", ioe);
		}
		
		// dREHER, agrego el path como parametro
		return addEntry (name, data, file.getAbsolutePath());
	}	//	addEntry

	/**
	 * 	Add new Data Entry
	 *	@param name name
	 *	@param data data
	 *	@return true if added
	 */
	public boolean addEntry (String name, byte[] data, String absolutePath)
	{
		if (name == null || data == null)
			return false;
		return addEntry (new MAttachmentEntry (name, data, absolutePath));	//	random index
	}	//	addEntry
	
	/**
	 * 	Add Entry
	 * 	@param item attachment entry
	 * 	@return true if added
	 */
	public boolean addEntry (MAttachmentEntry item)
	{
		if (item == null)
			return false;
		if (m_items == null)
			loadLOBData();
		boolean retValue = m_items.add(item);
		log.fine(item.toStringX());
		addTextMsg(" ");	//	otherwise not saved
		return retValue;
	}	//	addEntry

	/**
	 * 	Get Attachment Entry
	 * 	@param index index of the item
	 * 	@return Entry or null
	 */
	public MAttachmentEntry getEntry (int index)
	{
		if (m_items == null)
			loadLOBData();
		if (index < 0 || index >= m_items.size())
			return null;
		return (MAttachmentEntry)m_items.get(index);
	}	//	getEntry
	
	/**
	 * 	Get Attachment Entries as array
	 * 	@return array or null
	 */
	public MAttachmentEntry[] getEntries ()
	{
		if (m_items == null)
			loadLOBData();
		MAttachmentEntry[] retValue = new MAttachmentEntry[m_items.size()];
		m_items.toArray (retValue);
		return retValue;
	}	//	getEntries
	
	/**
	 * Delete Entry
	 * 
	 * @param index
	 *            index
	 * @return true if deleted
	 */
	public boolean deleteEntry(int index) {
		if (index >= 0 && index < m_items.size()) {
			if(isStoreAttachmentsOnFileSystem){
				//remove files
				final MAttachmentEntry entry = m_items.get(index);
				final File file = entry.getFile();
				log.fine("delete: " + file.getAbsolutePath());
				if(file !=null && file.exists()){
					if(!file.delete()){
						log.warning("unable to delete " + file.getAbsolutePath());
					}
				}
			}
			
			//// SSH - dREHER TODO: eliminar atraves de SSH
			if(isStoreAttachmentsOnSSHFileSystem){
				//remove files
				final MAttachmentEntry entry = m_items.get(index);
				final File file = entry.getFile();
				log.fine("delete: " + file.getAbsolutePath());
				if(file !=null && file.exists()){
					if(!file.delete()){
						log.warning("unable to delete " + file.getAbsolutePath());
					}
				}
			}
			
			//// SSH

			
			m_items.remove(index);
			log.config("Index=" + index + " - NewSize=" + m_items.size());
			return true;
		}
		log.warning("Not deleted Index=" + index + " - Size=" + m_items.size());
		return false;
	} // deleteEntry
	
	/**
	 * 	Get Entry Count
	 *	@return number of entries
	 */
	public int getEntryCount()
	{
		if (m_items == null)
			loadLOBData();
		return m_items.size();
	}	//	getEntryCount
	
	
	/**
	 * Get Entry Name
	 * 
	 * @param index
	 *            index
	 * @return name or null
	 */
	public String getEntryName(int index) {
		MAttachmentEntry item = getEntry(index);
		if (item != null){
			//strip path
			String name = item.getName();
			if(name!=null && isStoreAttachmentsOnFileSystem){
				name = name.substring(name.lastIndexOf(File.separator)+1);
			}
			
			// dREHER
			if(name!=null && isStoreAttachmentsOnSSHFileSystem){
				name = name.substring(name.lastIndexOf(File.separator)+1);
			}

			
			return name;
		}
		return null;
	} // getEntryName

	/**
	 * 	Dump Entry Names
	 */
	public void dumpEntryNames()
	{
		if (m_items == null)
			loadLOBData();
		if (m_items == null || m_items.size() == 0)
		{
			System.out.println("- no entries -");
			return;
		}
		System.out.println("- entries: " + m_items.size());
		for (int i = 0; i < m_items.size(); i++)
			System.out.println("  - " + getEntryName(i));		  
	}	//	dumpEntryNames

	/**
	 * 	Get Entry Data
	 * 	@param index index
	 * 	@return data or null
	 */
	public byte[] getEntryData (int index)
	{
		MAttachmentEntry item = getEntry(index);
		if (item != null)
			return item.getData();
		return null;
	}	//	getEntryData
	
	/**
	 * 	Get Entry File with name
	 * 	@param index index
	 *	@param fileName optional file name
	 *	@return file
	 */	
	public File getEntryFile (int index, String fileName)
	{
		MAttachmentEntry item = getEntry(index);
		if (item != null)
			return item.getFile(fileName);
		return null;
	}	//	getEntryFile

	/**
	 * 	Get Entry File with name
	 * 	@param index index
	 *	@param file file
	 *	@return file
	 */	
	public File getEntryFile (int index, File file)
	{
		MAttachmentEntry item = getEntry(index);
		if (item != null)
			return item.getFile(file);
		return null;
	}	//	getEntryFile

	
	/**
	 * 	Save Entry Data in Zip File format
	 *	@return true if saved
	 */
	private boolean saveLOBData()
	{
		if(isStoreAttachmentsOnFileSystem){
			return saveLOBDataToFileSystem();
		}
		
		// dREHER
		if(isStoreAttachmentsOnSSHFileSystem){
			return saveLOBDataToSSHFileSystem();
		}

		
		return saveLOBDataToDB();
	}
	
	/**
	 * 	Save Entry Data in Zip File format into the database.
	 *	@return true if saved
	 */
	private boolean saveLOBDataToDB()
	{
		if (m_items == null || m_items.size() == 0)
		{
			setBinaryData(null);
			return true;
		}
		ByteArrayOutputStream out = new ByteArrayOutputStream(); 
		ZipOutputStream zip = new ZipOutputStream(out);
		zip.setMethod(ZipOutputStream.DEFLATED);
		zip.setLevel(Deflater.BEST_COMPRESSION);
		zip.setComment("adempiere");
		//
		try
		{
			for (int i = 0; i < m_items.size(); i++)
			{
				MAttachmentEntry item = getEntry(i);
				ZipEntry entry = new ZipEntry(item.getName());
				entry.setTime(System.currentTimeMillis());
				entry.setMethod(ZipEntry.DEFLATED);
				zip.putNextEntry(entry);
				byte[] data = item.getData();
				zip.write (data, 0, data.length);
				zip.closeEntry();
				log.fine(entry.getName() + " - "
					+ entry.getCompressedSize() + " (" + entry.getSize() + ") "
					+ (entry.getCompressedSize()*100/entry.getSize())+ "%");
			}
		//	zip.finish();
			zip.close();
			byte[] zipData = out.toByteArray();
			log.fine("Length=" +  zipData.length);
			setBinaryData(zipData);
			return true;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "saveLOBData", e);
		}
		setBinaryData(null);
		return false;
	}	//	saveLOBData
	
	/**
	 * 	Save Entry Data to the file system.
	 *	@return true if saved
	 */
	private boolean saveLOBDataToFileSystem()
	{
		if("".equals(m_attachmentPathRoot)){
			log.severe("no attachmentPath defined");
			return false;
		}
		if (m_items == null || m_items.size() == 0) {
			setBinaryData(null);
			return true;
		}
		final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			final DocumentBuilder builder = factory.newDocumentBuilder();
			final Document document = builder.newDocument();
			final Element root = document.createElement("attachments");
			document.appendChild(root);
			document.setXmlStandalone(true);
			// create xml entries
			for (int i = 0; i < m_items.size(); i++) {
				log.fine(m_items.get(i).toString());
				File entryFile = m_items.get(i).getFile();
				final String path = entryFile.getAbsolutePath();
				// if local file - copy to central attachment folder
				log.fine(path + " - " + m_attachmentPathRoot);
				if (!path.startsWith(m_attachmentPathRoot)) {
					log.fine("move file: " + path);
					FileChannel in = null;
					FileChannel out = null;
					try {
						//create destination folder
						final File destFolder = new File(m_attachmentPathRoot + File.separator + getAttachmentPathSnippet());
						if(!destFolder.exists()){
							if(!destFolder.mkdirs()){
								log.warning("unable to create folder: " + destFolder.getPath());
							}
						}
						final File destFile = new File(m_attachmentPathRoot + File.separator
								+ getAttachmentPathSnippet() + File.separator + entryFile.getName());
						in = new FileInputStream(entryFile).getChannel();
						out = new FileOutputStream(destFile).getChannel();
						in.transferTo(0, in.size(), out);
						in.close();
						out.close();
						if(entryFile.exists()){
							if(!entryFile.delete()){
								entryFile.deleteOnExit();
							}
						}
						entryFile = destFile;

					} catch (IOException e) {
						e.printStackTrace();
						log.severe("unable to copy file " + entryFile.getAbsolutePath() + " to "
								+ m_attachmentPathRoot + File.separator + 
								getAttachmentPathSnippet() + File.separator + entryFile.getName());
					} finally {
						if (in != null && in.isOpen()) {
							in.close();
						}
						if (out != null && out.isOpen()) {
							out.close();
						}
					}
				}
				final Element entry = document.createElement("entry");
				//entry.setAttribute("name", m_items.get(i).getName());
				entry.setAttribute("name", getEntryName(i));
				String filePathToStore = entryFile.getAbsolutePath();
				filePathToStore = filePathToStore.replaceFirst(m_attachmentPathRoot.replaceAll("\\\\","\\\\\\\\"), ATTACHMENT_FOLDER_PLACEHOLDER);
				log.fine(filePathToStore);
				entry.setAttribute("file", filePathToStore);
				root.appendChild(entry);
			}

			final Source source = new DOMSource(document);
			final ByteArrayOutputStream bos = new ByteArrayOutputStream();
			final Result result = new StreamResult(bos);
			final Transformer xformer = TransformerFactory.newInstance().newTransformer();
			xformer.transform(source, result);
			final byte[] xmlData = bos.toByteArray();
			log.fine(bos.toString());
			setBinaryData(xmlData);
			return true;
		} catch (Exception e) {
			log.log(Level.SEVERE, "saveLOBData", e);
		}
		setBinaryData(null);
		return false;

	}
	
	/**
	 * 	Load Data into local m_data
	 *	@return true if success
	 */
	private boolean loadLOBData ()
	{
		if(isStoreAttachmentsOnFileSystem){
			return loadLOBDataFromFileSystem();
		}
		
		// dREHER
		if(isStoreAttachmentsOnSSHFileSystem){
			return loadLOBDataFromSSHFileSystem();
		}
		
		return loadLOBDataFromDB();
	}
	
	/**
	 * 	Load Data from database
	 *	@return true if success
	 */
	private boolean loadLOBDataFromDB ()
	{
		//	Reset
		m_items = new ArrayList<MAttachmentEntry>();
		//
		byte[] data = getBinaryData();
		if (data == null)
			return true;
		log.fine("ZipSize=" + data.length);
		if (data.length == 0)
			return true;
			
		//	Old Format - single file
		if (!ZIP.equals(getTitle()))
		{
			m_items.add (new MAttachmentEntry(getTitle(), data, 1));
			return true;
		}

		try
		{
			ByteArrayInputStream in = new ByteArrayInputStream(data);
			ZipInputStream zip = new ZipInputStream (in);
			ZipEntry entry = zip.getNextEntry();
			while (entry != null)
			{
				String name = entry.getName();
				ByteArrayOutputStream out = new ByteArrayOutputStream();
				byte[] buffer = new byte[2048];
				int length = zip.read(buffer);
				while (length != -1)
				{
					out.write(buffer, 0, length);
					length = zip.read(buffer);
				}
				//
				byte[] dataEntry = out.toByteArray();
				log.fine(name 
					+ " - size=" + dataEntry.length + " - zip="
					+ entry.getCompressedSize() + "(" + entry.getSize() + ") "
					+ (entry.getCompressedSize()*100/entry.getSize())+ "%");
				//
				m_items.add (new MAttachmentEntry (name, dataEntry, m_items.size()+1));
				entry = zip.getNextEntry();
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "loadLOBData", e);
			m_items = null;
			return false;
		}
		return true;
	}	//	loadLOBData
	
	/**
	 * 	Load Data from file system
	 *	@return true if success
	 */
	private boolean loadLOBDataFromFileSystem(){
		if("".equals(m_attachmentPathRoot)){
			log.severe("no attachmentPath defined");
			return false;
		}
		// Reset
		m_items = new ArrayList<MAttachmentEntry>();
		//
		byte[] data = getBinaryData();
		if (data == null)
			return true;
		log.fine("TextFileSize=" + data.length);
		if (data.length == 0)
			return true;

		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

		try {
			final DocumentBuilder builder = factory.newDocumentBuilder();
			final Document document = builder.parse(new ByteArrayInputStream(data));
			final NodeList entries = document.getElementsByTagName("entry");
			for (int i = 0; i < entries.getLength(); i++) {
				final Node entryNode = entries.item(i);
				final NamedNodeMap attributes = entryNode.getAttributes();
				final Node fileNode = attributes.getNamedItem("file");
				final Node nameNode = attributes.getNamedItem("name");
				if(fileNode==null || nameNode==null){
					log.severe("no filename for entry " + i);
					m_items = null;
					return false;
				}
				log.fine("name: " + nameNode.getNodeValue());
				String filePath = fileNode.getNodeValue();
				log.fine("filePath: " + filePath);
				if(filePath!=null){
					filePath = filePath.replaceFirst(ATTACHMENT_FOLDER_PLACEHOLDER, m_attachmentPathRoot.replaceAll("\\\\","\\\\\\\\"));
					//just to be shure...
					String replaceSeparator = File.separator;
					if(!replaceSeparator.equals("/")){
						replaceSeparator = "\\\\";
					}
					filePath = filePath.replaceAll("/", replaceSeparator);
					filePath = filePath.replaceAll("\\\\", replaceSeparator);
				}
				log.fine("filePath: " + filePath);
				final File file = new File(filePath);
				if (file.exists()) {
					// read files into byte[]
					final byte[] dataEntry = new byte[(int) file.length()];
					try {
						final FileInputStream fileInputStream = new FileInputStream(file);
						fileInputStream.read(dataEntry);
						fileInputStream.close();
					} catch (FileNotFoundException e) {
						log.severe("File Not Found.");
						e.printStackTrace();
					} catch (IOException e1) {
						log.severe("Error Reading The File.");
						e1.printStackTrace();
					}
					final MAttachmentEntry entry = new MAttachmentEntry(filePath,
							dataEntry, m_items.size() + 1);
					m_items.add(entry);
				} else {
					log.severe("file not found: " + file.getAbsolutePath());
				}
			}

		} catch (SAXException sxe) {
			// Error generated during parsing)
			Exception x = sxe;
			if (sxe.getException() != null)
				x = sxe.getException();
			x.printStackTrace();
			log.severe(x.getMessage());

		} catch (ParserConfigurationException pce) {
			// Parser with specified options can't be built
			pce.printStackTrace();
			log.severe(pce.getMessage());

		} catch (IOException ioe) {
			// I/O error
			ioe.printStackTrace();
			log.severe(ioe.getMessage());
		}

		return true;

	}
	
	/**
	 * Returns a path snippet, containing client, org, table and record id.
	 * @return String
	 */
	private String getAttachmentPathSnippet(){
		return this.getAD_Client_ID() + File.separator + 
		this.getAD_Org_ID() + File.separator + 
		this.getAD_Table_ID() + File.separator + this.getRecord_ID();
	}
	
	/**
	 * 	Before Save
	 *	@param newRecord new
	 *	@return true if can be saved
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if(isStoreAttachmentsOnFileSystem || isStoreAttachmentsOnSSHFileSystem){
			if (getTitle() == null || !getTitle().equals(XML)) {
				setTitle (XML);
			}
		} else {
			if (getTitle() == null || !getTitle().equals(ZIP)) {
				setTitle (ZIP);
			}
		}

		// region Roca
		// 30/05/2014
		// dREHER, permitir setear peso de las imagenes en bytes para los planos de casas
		int maxBytes = Integer.valueOf(Miscfunc.ValueFromSystem("MaximaBytesParaPlanos", "300000", true));
		
		
		/* dREHER, Verifico que esta trabajando sobre VIV_Casa y realizo los controles correspondientes */
		int table = this.getAD_Table_ID();
		int record = this.getRecord_ID();
		
		int adjuntos = loadEntradas(table, record);
		
		int validar = Env.getContextAsInt(Env.getCtx(), "fromMigra");
		
		
		int forzar = Env.getContextAsInt(Env.getCtx(), "ForzarAttachment");
		
		if(validar <= 0){
			MTable mt = new MTable(Env.getCtx(), table, get_TrxName());
			if(mt!=null){
				if(mt.getName().equalsIgnoreCase("VIV_Casa")){
					
					if((adjuntos > 0 && newRecord)){
						log.warning("No se puede agregar mas de un adjunto en la tabla de Casas=VIV_Casa!");
						return false;
					}
					
					// Solo valida para usuarios q no sean SuperUser
					if (getEntries() != null && Env.getAD_User_ID(getCtx()) != 100 ){ 
						if(getEntries().length > 0){
							MAttachmentEntry me = getEntry(0);
							if(me != null){
							
								log.info("Encontro una entrada, verifica tamaño...");
								File fileTmp = me.getFile();
								if( fileTmp != null){
									double size = fileTmp.length();
									
									// Borro el temporal
									fileTmp.delete();
									
									if(size > maxBytes){
										log.warning("El tamaño de la imagen excede el maximo permitido(" + maxBytes + " bytes) =" + size + ". Suba una imagen JPG");
										return false;
									}
								}
							}
						
						}	
					}	
					
					
					if(record > -1)
					{
						int rr = DB.getSQLValue(get_TrxName(), "SELECT VIV_Casa_ID FROM VIV_Casa WHERE VIV_Casa_ID=" + record);
						if(rr > 0){
							MVIVCasa vc = new MVIVCasa(Env.getCtx(), record, get_TrxName());
							if(vc!=null){
								int ct_id = vc.getVIV_CasaTemplate_ID();
								if(ct_id > 0){
									MVIVCasaTemplate ct = new MVIVCasaTemplate(Env.getCtx(), ct_id, get_TrxName());
									if(ct!=null){
										boolean isModificable = ct.isModificable();
										
										int id = vc.getVIV_Casa_ID();
										int Table_ID = vc.get_Table_ID();
										int ida = lar.utils.LoadZIPImage.LoadIDFromAttach(id, Table_ID);
										
										
										// Validar que solo se pueda modificar una imagen para las casas especiales
										// o bien que lo haga el SuperUser
										if(ida>0){
											MAttachment ma = new MAttachment(Env.getCtx(), ida, null);
											if (ma.getEntries() != null){ 
												if(!isModificable && Env.getAD_User_ID(getCtx()) != 100 && forzar != 1){
													log.warning("No se puede modificar un adjunto manualmente en la tabla de Casas=VIV_Casa del tipo NO Modificable!");
													return false;
												}	
												if(ma.getEntries().length > 1){
													log.warning("No se pueden agregar mas adjuntos en la tabla de Casas=VIV_Casa!");
													return false;
												}
												
											}	
												
										}	
										
										// Validar que solo permita una sola imagen
										//ida = lar.utils.LoadZIPImage.LoadAttachsFromAttach(id, Table_ID);
										
										
										// TODO: ver luego restriccion, por ahora el SuperUser puede hacerlo!
										/*if(!isModificable && Env.getAD_User_ID(getCtx()) != 100){
										//	if(!isModificable){
												log.warning("No se puede modificar un adjunto manualmente en la tabla de Casas=VIV_Casa del tipo !isModificable!");
												return false;
											}*/

									}
								}
							}
						}
					}// if record id
				}
			}
			
		}
		
		/* Fin de Controles */
		// endregion Roca

		return saveLOBData();		//	save in BinaryData
	}	//	beforeSave

	// dREHER, retorna cantidad de entradas para esta tabla
	private int loadEntradas(int Table_ID, int Record_ID) {
		return DB.getSQLValue(get_TrxName(), "SELECT COUNT(*) FROM AD_Attachment WHERE AD_Table_ID=" + Table_ID + " AND Record_ID=" + Record_ID);
	}
	
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete ()
	{
		// region Roca	
		// dREHER, TODO: ver si la tabla asociada es FIN_BPartnerCredit
		// guardar en disco los attach
		//
		if(this.getAD_Table_ID()==2000096){

			// isStoreAttachmentsOnFileSystem = true;
			
			// initAttachmentStoreDetails(this.getCtx(), this.get_TrxName());
			
		}

		
		int forzar = Env.getContextAsInt(Env.getCtx(), "ForzarAttachment");
		
		if(Env.getAD_User_ID(getCtx()) == 100 || forzar == 1){
			System.out.println("Puedo eliminar adjuntos: User=" + Env.getAD_User_ID(getCtx()) + " Forzado=" + forzar);
			return true;
		}	
		
		/* dREHER, Verifico que esta trabajando sobre VIV_Casa y realizo los controles correspondientes */
		int table = this.getAD_Table_ID();
		int record = this.getRecord_ID();
		
		int adjuntos = loadEntradas(table, record);
		
		int validar = Env.getContextAsInt(Env.getCtx(), "fromMigra");
		if(validar <= 0){
			System.out.println("Valido adjuntos sobre Viv_Casa: User=" + Env.getAD_User_ID(getCtx()) + " Forzado=" + forzar);
			MTable mt = new MTable(Env.getCtx(), table, get_TrxName());
			if(mt!=null){
				if(mt.getName().equalsIgnoreCase("VIV_Casa")){
					MVIVCasa vc = new MVIVCasa(Env.getCtx(), record, get_TrxName());
					if(vc!=null){
						
						if(vc.isProcessed()){
							log.warning("No se puede eliminar el adjunto de la tabla de Casas=VIV_Casa PROCESADA!");
							return false;
						}
						
						int ct_id = vc.getVIV_CasaTemplate_ID();
						if(ct_id > 0){
							System.out.println("Valido adjuntos sobre Viv_Casa, leo template: User=" + Env.getAD_User_ID(getCtx()) + " Forzado=" + forzar);
							MVIVCasaTemplate ct = new MVIVCasaTemplate(Env.getCtx(), ct_id, get_TrxName());
							if(ct!=null){
								boolean isModificable = ct.isModificable();
								if(!isModificable){
									System.out.println("Valido adjuntos sobre Viv_Casa, no es modificable: User=" + Env.getAD_User_ID(getCtx()) + " Forzado=" + forzar + " adjuntos=" + adjuntos + " @deletePlano=" + Env.getContext(Env.getCtx(), "@deletePlano"));
									if(adjuntos <= 1 &&  ( ("N".compareTo(Env.getContext(Env.getCtx(), "@deletePlano"))==0) || Env.getContext(Env.getCtx(), "@deletePlano")==null || Env.getContext(Env.getCtx(), "@deletePlano")=="") ){
										log.warning("No se puede eliminar el adjunto de la tabla de Casas=VIV_Casa para un modelo isModificable='N'!");
										return false;
									}
								} 
									
							}
						}
					}
				}
			}
			
		}
		/* Fin de Controles */
		// endregion Roca
		
		if(isStoreAttachmentsOnFileSystem){
			//delete all attachment files and folder
			for(int i=0; i<m_items.size(); i++) {
				final MAttachmentEntry entry = m_items.get(i);
				final File file = entry.getFile();
				if(file !=null && file.exists()){
					if(!file.delete()){
						log.warning("unable to delete " + file.getAbsolutePath());
					}
				}
			}
			final File folder = new File(m_attachmentPathRoot + getAttachmentPathSnippet());
			if(folder.exists()){
				if(!folder.delete()){
					log.warning("unable to delete " + folder.getAbsolutePath());
				}
			}
		}
		
		//// SHH
		
		if(isStoreAttachmentsOnSSHFileSystem){
			//delete all attachment files and folder
			for(int i=0; i<m_items.size(); i++) {
				final MAttachmentEntry entry = m_items.get(i);
				final File file = entry.getFile();
				if(file !=null){
					SSHUtil.DeleteFileFromSSHServer(SSHServer, SSHPort, SSHUserName, SSHUserPassword, 
							m_attachmentPathRoot + getAttachmentPathSnippet(), file.getAbsolutePath());
					// 	log.warning("unable to delete " + file.getAbsolutePath());
				}
			}
			
			SSHUtil.DeleteDirFromSSHServer(SSHServer, SSHPort, SSHUserName, SSHUserPassword, 
					m_attachmentPathRoot + getAttachmentPathSnippet());
			//		log.warning("unable to delete " + folder.getAbsolutePath());
		}
		
		//// SHH
		return true;
	} 	//	beforeDelete
	
	/**************************************************************************
	 * 	Test
	 *	@param args ignored
	 */
	public static void main (String[] args)
	{
	//	System.setProperty("javax.activation.debug", "true");
	
		System.out.println(MimeType.getMimeType("data.xls"));
		System.out.println(MimeType.getMimeType("data.cvs"));
		System.out.println(MimeType.getMimeType("data.txt"));
		System.out.println(MimeType.getMimeType("data.log"));
		System.out.println(MimeType.getMimeType("data.html"));
		System.out.println(MimeType.getMimeType("data.htm"));
		System.out.println(MimeType.getMimeType("data.png"));
		System.out.println(MimeType.getMimeType("data.gif"));
		System.out.println(MimeType.getMimeType("data.jpg"));
		System.out.println(MimeType.getMimeType("data.xml"));
		System.out.println(MimeType.getMimeType("data.rtf"));

		System.exit(0);
		
		org.compiere.Adempiere.startupEnvironment(true);
		MAttachment att = new MAttachment(Env.getCtx(), 100, 0, null);
		att.addEntry(new File ("C:\\Adempiere\\Dev.properties"));
		att.addEntry(new File ("C:\\Adempiere\\index.html"));
		att.save();
		System.out.println (att);
		att.dumpEntryNames();
		int AD_Attachment_ID = att.getAD_Attachment_ID();
		//
		System.out.println ("===========================================");
		att = new MAttachment (Env.getCtx(), AD_Attachment_ID, null);
		System.out.println (att);
		att.dumpEntryNames();
		System.out.println ("===========================================");
		MAttachmentEntry[] entries = att.getEntries();
		for (int i = 0; i < entries.length; i++)
		{
			MAttachmentEntry entry = entries[i];
			entry.dump();
		}
		System.out.println ("===========================================");
		att.delete(true);		
	}	//	main

	/**
	 * Update existing entry
	 * @param i
	 * @param file
	 * @return true if success, false otherwise
	 */
	public boolean updateEntry(int i, File file) 
	{
		if (file == null)
		{
			log.warning("No File");
			return false;
		}
		if (!file.exists() || file.isDirectory())
		{
			log.warning("not added - " + file
				+ ", Exists=" + file.exists() + ", Directory=" + file.isDirectory());
			return false;
		}
		log.fine("updateEntry - " + file);
		//
		String name = file.getName();
		byte[] data = null;
		try
		{
			FileInputStream fis = new FileInputStream (file);
			ByteArrayOutputStream os = new ByteArrayOutputStream();
			byte[] buffer = new byte[1024*8];   //  8kB
			int length = -1;
			while ((length = fis.read(buffer)) != -1)
				os.write(buffer, 0, length);
			fis.close();
			data = os.toByteArray();
			os.close();
		}
		catch (IOException ioe)
		{
			log.log(Level.SEVERE, "(file)", ioe);
		}
		return updateEntry (i, data);
		
	}
	
	/**
	 * Update existing entry
	 * @param i
	 * @param data
	 * @return true if success, false otherwise
	 */
	public boolean updateEntry(int i, byte[] data)
	{
		MAttachmentEntry entry = getEntry(i);
		if (entry == null) return false;
		entry.setData(data);
		return true;
	}
	
	/*public void delete(int table, int record){
		Env.setContext(Env.getCtx(), "@deletePlano", "Y");
		
		Env.setContext(Env.getCtx(), "@deletePlano", "N");
	}*/
	
	
	// dREHER, desde aca los diferentes metodos para guardar en un FileSystem atraves de SSH
	/**
	 * Get the isStoreAttachmentsOnSSHFileSystem and attachmentPath for the client.
	 * @param ctx
	 * @param trxName
	 */
	private void initAttachmentSSHStoreDetails(Properties ctx, String trxName){
		final MClient client = new MClient(ctx, this.getAD_Client_ID(), trxName);
		
		isStoreAttachmentsOnSSHFileSystem = Env.getContext(getCtx(), "#isStoreAttachmentOnSSHFileSystem").equals("Y");

		log.info("isStoreAttachmentsOnSSHFileSystem=" + isStoreAttachmentsOnSSHFileSystem);
		
		if(isStoreAttachmentsOnSSHFileSystem){
			if(File.separatorChar == '\\'){
				m_attachmentPathRoot = client.getWindowsAttachmentPath();
			} else {
				m_attachmentPathRoot = client.getUnixAttachmentPath(); // En este campo setear el path inicial
			}
			if("".equals(m_attachmentPathRoot)){
				log.severe("no attachmentPath defined");
			} else if (!m_attachmentPathRoot.endsWith(File.separator)){
				log.warning("attachment path doesn't end with " + File.separator);
				m_attachmentPathRoot = m_attachmentPathRoot + File.separator;
				
				log.info("Va a crear carpeta destino " + m_attachmentPathRoot);
				
				// Creo carpeta destino
				SSHUtil.MkDirSSHServer(SSHServer, SSHPort, SSHUserName, SSHUserPassword, m_attachmentPathRoot, File.separator);
				
				log.info("Creo carpeta destino " + m_attachmentPathRoot);
				
			}
		}
	}
	
	// dREHER guardar el adjunto atraves de SSH on FileSystem remoto
	/**
	 * 	Save Entry Data to the SSH file system.
	 *	@return true if saved
	 */
	private boolean saveLOBDataToSSHFileSystem()
	{
		if("".equals(m_attachmentPathRoot)){
			log.severe("no attachmentPath defined");
			return false;
		}
		if (m_items == null || m_items.size() == 0) {
			setBinaryData(null);
			return true;
		}
		final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			final DocumentBuilder builder = factory.newDocumentBuilder();
			final Document document = builder.newDocument();
			final Element root = document.createElement("attachments");
			document.appendChild(root);
			document.setXmlStandalone(true);
			
			// create xml entries
			for (int i = 0; i < m_items.size(); i++) {
				log.fine(m_items.get(i).toString());
				
				File entryFile = null;
				
				try{
					entryFile = m_items.get(i).getFileSSH();
				}
				catch(Exception ex){
					log.warning("Error al leer getFileSSH()=" + ex);
				}
				
				// dREHER, nueva data para recuperar ruta completa
				String absolutePath = m_items.get(i).getAbsolutePath();
				
				if(absolutePath==null){
					log.warning("No se pudo leer el absolutePath!");
					continue;
				}
				
				String path = (entryFile==null?absolutePath:entryFile.getAbsolutePath());
				
				// if local file - copy to central attachment folder
				
				log.fine(path + " - " + m_attachmentPathRoot);
				if (!path.startsWith(m_attachmentPathRoot)) {
					
					log.fine("move file: " + path);
					// FileChannel in = null;
					// FileChannel out = null;
					
					try {
						
						//create destination folder
						// final File destFolder = new File(m_attachmentPathRoot + File.separator + getAttachmentPathSnippet());
						// if(!destFolder.exists()){
						//	if(!destFolder.mkdirs()){
						//		log.warning("unable to create folder: " + destFolder.getPath());
						//	}
						// }
						
						final File destFile = new File(m_attachmentPathRoot 
								+ getAttachmentPathSnippet() + File.separator + entryFile.getName());
						
						
						log.info("destFile=" + m_attachmentPathRoot 
								+ getAttachmentPathSnippet() + File.separator + entryFile.getName());
						
						log.info("entryFile absolute path recuperado=" + absolutePath);
						
						// in = new FileInputStream(entryFile).getChannel();
						// out = new FileOutputStream(destFile).getChannel();
						// in.transferTo(0, in.size(), out);
						// in.close();
						// out.close();
						
						// Creo carpeta destino
						log.info("Va a crear carpeta destino=" + m_attachmentPathRoot + getAttachmentPathSnippet());
						SSHUtil.MkDirSSHServer(SSHServer, SSHPort, SSHUserName, SSHUserPassword, getAttachmentPathSnippet(), m_attachmentPathRoot );
						
						// Subo archivo a carpeta destino
						log.info("Va a subir archivo destino=" + m_attachmentPathRoot + getAttachmentPathSnippet() + " Archivo=" + absolutePath);
						SSHUtil.UploadFileToSSHServer(SSHServer, SSHPort, SSHUserName, SSHUserPassword, m_attachmentPathRoot 
								+ getAttachmentPathSnippet(), absolutePath);
						
						// if(entryFile.exists()){
						//	if(!entryFile.delete()){
						//		entryFile.deleteOnExit();
						//	}
						// }
						
						entryFile = destFile;

					//} catch (IOException e) {
					//	e.printStackTrace();
					//	log.severe("unable to copy file " + entryFile.getAbsolutePath() + " to "
					//			+ m_attachmentPathRoot + File.separator + 
					//			getAttachmentPathSnippet() + File.separator + entryFile.getName());
					// }
					}catch (Exception e) {
						e.printStackTrace();
						log.severe("unable to copy file " + entryFile.getAbsolutePath() + " to "
							+ m_attachmentPathRoot + File.separator + 
							getAttachmentPathSnippet() + File.separator + entryFile.getName());
					}
					finally {
						// if (in != null && in.isOpen()) {
						//	in.close();
						// }
						// if (out != null && out.isOpen()) {
						//	out.close();
						// }
					}
				}
				
				
				final Element entry = document.createElement("entry");
				//entry.setAttribute("name", m_items.get(i).getName());
				entry.setAttribute("name", getEntryName(i));
				String filePathToStore =  m_items.get(i).getAbsolutePath();     // dREHER entryFile.getAbsolutePath();
				filePathToStore = filePathToStore.replaceFirst(m_attachmentPathRoot.replaceAll("\\\\","\\\\\\\\"), ATTACHMENT_FOLDER_PLACEHOLDER);
				log.fine(filePathToStore);
				entry.setAttribute("file", filePathToStore);
				root.appendChild(entry);
			}

			final Source source = new DOMSource(document);
			final ByteArrayOutputStream bos = new ByteArrayOutputStream();
			final Result result = new StreamResult(bos);
			final Transformer xformer = TransformerFactory.newInstance().newTransformer();
			xformer.transform(source, result);
			final byte[] xmlData = bos.toByteArray();
			log.fine(bos.toString());
			setBinaryData(xmlData);
			return true;
			
		} catch (Exception e) {
			log.log(Level.SEVERE, "saveSSHLOBData", e);
		}
		setBinaryData(null);
		return false;

	}

	// dREHER, trae la info desde el SSH FileSystem
	/**
	 * 	Load Data from file system
	 *	@return true if success
	 */
	private boolean loadLOBDataFromSSHFileSystem(){
		if("".equals(m_attachmentPathRoot)){
			log.warning("no attachmentPath defined");
			return false;
		}
		// Reset
		m_items = new ArrayList<MAttachmentEntry>();
		//
		byte[] data = getBinaryData();
		if (data == null)
			return true;
		
		log.fine("TextFileSize=" + data.length);
		if (data.length == 0)
			return true;

		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

		try {
			
			final DocumentBuilder builder = factory.newDocumentBuilder();
			final Document document = builder.parse(new ByteArrayInputStream(data));
			final NodeList entries = document.getElementsByTagName("entry");
			
			for (int i = 0; i < entries.getLength(); i++) {
				
				final Node entryNode = entries.item(i);
				final NamedNodeMap attributes = entryNode.getAttributes();
				final Node fileNode = attributes.getNamedItem("file");
				final Node nameNode = attributes.getNamedItem("name");
				if(fileNode==null || nameNode==null){
					log.warning("no filename for entry " + i);
					m_items = null;
					return false;
				}
				log.info("name: " + nameNode.getNodeValue());
				
				String filePath = fileNode.getNodeValue();
				log.fine("filePath: " + filePath);
				
				// dREHER, leo nombre remoto
				String RemoteFileName = nameNode.getNodeValue();
				
				if(filePath!=null){
					filePath = filePath.replaceFirst(ATTACHMENT_FOLDER_PLACEHOLDER, m_attachmentPathRoot.replaceAll("\\\\","\\\\\\\\"));
					//just to be shure...
					String replaceSeparator = File.separator;
					
					if(!replaceSeparator.equals("/")){
						replaceSeparator = "\\\\";
					}
					
					
					filePath = filePath.replaceAll("/", replaceSeparator);
					// System.out.println("1) filePath=" + filePath);
					filePath = filePath.replaceAll("\\\\", replaceSeparator);
					// System.out.println("2) filePath=" + filePath);
					
					
					// if(File.separatorChar != '\\'){ // dREHER, es Unix
						
						// System.out.println("Es Unix");
						// filePath = "/" + filePath;
						// filePath = filePath.replaceFirst("/", "\\\\");
						
					// }
					
				}
				
				log.info("RemotefilePath: " + RemoteFileName);
				
				String fileNameLocal = System.getProperty("java.io.tmpdir") + File.separator  + "tmpFile.tmp";
				
				SSHUtil.ReadFileFromSSHServer(SSHServer, SSHPort, SSHUserName, SSHUserPassword, m_attachmentPathRoot + File.separator
						+ getAttachmentPathSnippet(), RemoteFileName, fileNameLocal);
				
				log.fine("fileNameLocal: " + fileNameLocal);
				
				final File file = new File(fileNameLocal);
				
				// dREHER, leo desde SSH, si devolvio lectura, agrego entrada, sino error
				
				if (file.exists()) {
					
					// read files into byte[]
					final byte[] dataEntry = new byte[(int) file.length()];
					try {
						final FileInputStream fileInputStream = new FileInputStream(file);
						fileInputStream.read(dataEntry);
						fileInputStream.close();
					} catch (FileNotFoundException e) {
						log.severe("File Not Found.");
						e.printStackTrace();
					} catch (IOException e1) {
						log.severe("Error Reading The File.");
						e1.printStackTrace();
					}
					
					final MAttachmentEntry entry = new MAttachmentEntry(filePath,
							dataEntry, m_items.size() + 1); // , file.getAbsolutePath()
					m_items.add(entry);
					
				} else {
					log.severe("file not found: " + file.getAbsolutePath());
				}
			}

		} catch (SAXException sxe) {
			// Error generated during parsing)
			Exception x = sxe;
			if (sxe.getException() != null)
				x = sxe.getException();
			x.printStackTrace();
			log.severe(x.getMessage());

		} catch (ParserConfigurationException pce) {
			// Parser with specified options can't be built
			pce.printStackTrace();
			log.severe(pce.getMessage());

		} catch (IOException ioe) {
			// I/O error
			ioe.printStackTrace();
			log.severe(ioe.getMessage());
		}

		return true;

	}
	
	

}	//	MAttachment