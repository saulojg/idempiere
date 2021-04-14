-- Oct 1, 2013 6:48:26 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('FKConstraintName',202612,'Constraint Name','Constraint Name','9927b271-3c97-46dc-93fc-043546b66484',TO_TIMESTAMP('2013-10-01 18:48:25','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2013-10-01 18:48:25','YYYY-MM-DD HH24:MI:SS'),0,100,100,'Y',0,'D')
;

-- Oct 1, 2013 6:48:38 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('FKConstraintType',202613,'Constraint Type','Constraint Type','8cb693d1-8944-4e2d-9d9b-98699d9716ec',TO_TIMESTAMP('2013-10-01 18:48:37','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2013-10-01 18:48:37','YYYY-MM-DD HH24:MI:SS'),0,100,100,'Y',0,'U')
;

-- Oct 1, 2013 6:48:42 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Element SET EntityType='D',Updated=TO_TIMESTAMP('2013-10-01 18:48:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=202613
;

-- Oct 1, 2013 6:49:26 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Table_ID,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,AD_Element_ID,IsSecure) VALUES (0,'N',0,101,210871,'N','N','N',0,'N',30,'Y',10,'N','N','Y','27ff3582-9db8-40d3-869f-9ea75b4dd281','Y','FKConstraintName','Constraint Name','Y',TO_TIMESTAMP('2013-10-01 18:49:25','YYYY-MM-DD HH24:MI:SS'),100,0,'Y',TO_TIMESTAMP('2013-10-01 18:49:25','YYYY-MM-DD HH24:MI:SS'),100,'N','N',0,'D','N',202612,'N')
;


