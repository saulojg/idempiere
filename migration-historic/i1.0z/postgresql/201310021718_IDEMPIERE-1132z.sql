-- Oct 1, 2013 6:50:23 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
ALTER TABLE AD_Column ADD COLUMN FKConstraintName VARCHAR(30) DEFAULT NULL 
;

-- Oct 1, 2013 6:51:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Reference (AD_Reference_ID,Name,EntityType,AD_Reference_UU,IsOrderByValue,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (200075,'Foreign Key Constraint Type','D','f5f359ae-d6a9-43fa-a1c6-119ed6c1f201','N','L',0,100,TO_TIMESTAMP('2013-10-01 18:51:20','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2013-10-01 18:51:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 1, 2013 6:52:32 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Org_ID,AD_Client_ID,EntityType) VALUES (200161,200075,'Do Not Create','ad2bedf7-814f-4b7d-ae4e-dac0a8a406f6','D',TO_TIMESTAMP('2013-10-01 18:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-01 18:52:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,0,'D')
;

-- Oct 1, 2013 6:53:12 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Org_ID,AD_Client_ID,EntityType) VALUES (200162,200075,'No Action','49ed557e-0170-4594-a65d-fae6e895ffde','N',TO_TIMESTAMP('2013-10-01 18:53:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-01 18:53:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,0,'U')
;

-- Oct 1, 2013 6:53:15 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Ref_List SET EntityType='D',Updated=TO_TIMESTAMP('2013-10-01 18:53:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=200162
;

-- Oct 1, 2013 6:53:33 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Org_ID,AD_Client_ID,EntityType) VALUES (200163,200075,'Cascade','e3ef6ea1-87c4-4141-9f5a-882741a167cd','C',TO_TIMESTAMP('2013-10-01 18:53:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-01 18:53:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,0,'D')
;

-- Oct 1, 2013 6:53:44 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Org_ID,AD_Client_ID,EntityType) VALUES (200164,200075,'Set Null','324b9a18-fc1f-44ba-a1ce-c83e63c7b63b','S',TO_TIMESTAMP('2013-10-01 18:53:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-01 18:53:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,0,'D')
;

-- Oct 1, 2013 6:54:05 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Table_ID,AD_Column_ID,AD_Reference_Value_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,AD_Element_ID,IsSecure) VALUES (0,'N',0,101,210872,200075,'N','N','N',0,'N',1,'N',17,'N','N','Y','5eb50488-f159-46d9-b6e3-aa83ef44fc6d','Y','FKConstraintType','Constraint Type','Y',TO_TIMESTAMP('2013-10-01 18:54:04','YYYY-MM-DD HH24:MI:SS'),100,0,'Y',TO_TIMESTAMP('2013-10-01 18:54:04','YYYY-MM-DD HH24:MI:SS'),100,'N','N',0,'U','N',202613,'N')
;

-- Oct 1, 2013 6:54:09 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Column SET EntityType='D',Updated=TO_TIMESTAMP('2013-10-01 18:54:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=210872
;


