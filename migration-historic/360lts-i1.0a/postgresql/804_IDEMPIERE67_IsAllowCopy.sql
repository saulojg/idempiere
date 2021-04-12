-- Sep 9, 2011 10:58:03 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55297,0,'IsAllowCopy',TO_TIMESTAMP('2011-09-09 10:58:02','YYYY-MM-DD HH24:MI:SS'),100,'Determine if a column must be copied when pushing the button to copy record','D','Y','Allow Copy','Allow Copy',TO_TIMESTAMP('2011-09-09 10:58:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 9, 2011 10:58:04 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55297 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 9, 2011 10:58:35 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Permitir copia',PrintName='Permitir copia',Description='Determina si una columna debe ser copiada cuando se selecciona copiar registro',Updated=TO_TIMESTAMP('2011-09-09 10:58:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55297 AND AD_Language LIKE 'es_%'
;

-- Sep 9, 2011 10:59:43 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,62199,55297,0,20,101,'IsAllowCopy',TO_TIMESTAMP('2011-09-09 10:59:42','YYYY-MM-DD HH24:MI:SS'),100,'Y','Determine if a column must be copied when pushing the button to copy record','D',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Allow Copy',0,TO_TIMESTAMP('2011-09-09 10:59:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 9, 2011 10:59:43 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=62199 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 9, 2011 11:00:47 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
UPDATE AD_Field SET IsSameLine='N', SeqNo=390,Updated=TO_TIMESTAMP('2011-09-09 11:00:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5122
;

-- Sep 9, 2011 11:01:22 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,62199,62467,0,101,TO_TIMESTAMP('2011-09-09 11:01:22','YYYY-MM-DD HH24:MI:SS'),100,'Determine if a column must be copied when pushing the button to copy record',10,'D','Y','Y','Y','N','N','N','N','Y','Allow Copy',380,0,TO_TIMESTAMP('2011-09-09 11:01:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 9, 2011 11:01:22 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=62467 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 9, 2011 11:01:35 AM COT
-- IDEMPIERE-67 ProcessedOn should not be copied by MOrder.copyFrom
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2011-09-09 11:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56317
;


