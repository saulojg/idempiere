/*
 * Generated by XDoclet - Do not edit!
 */
package org.compiere.interfaces;

/**
 * Home interface for adempiere/Status.
 */
public interface StatusHome
   extends javax.ejb.EJBHome
{
   public static final String COMP_NAME="java:comp/env/ejb/adempiere/Status";
   public static final String JNDI_NAME="adempiere/Status";

   public org.compiere.interfaces.Status create()
      throws javax.ejb.CreateException,java.rmi.RemoteException;

}