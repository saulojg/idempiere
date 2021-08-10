-- Jun 26, 2008 12:37:51 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
INSERT INTO AD_Element (AD_Org_ID,UpdatedBy,Updated,PrintName,Name,IsActive,Help,EntityType,Description,CreatedBy,Created,ColumnName,AD_Element_ID,AD_Client_ID) VALUES (0,100,TO_TIMESTAMP('2008-06-26 12:37:50','YYYY-MM-DD HH24:MI:SS'),'Autocomplete','Autocomplete','Y','The autocompletion uses all existing values (from the same client and organization) of the field.','D','Automatic completion for textfields',100,TO_TIMESTAMP('2008-06-26 12:37:50','YYYY-MM-DD HH24:MI:SS'),'IsAutocomplete',53655,0)
;

-- Jun 26, 2008 12:37:52 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, PrintName,PO_PrintName,PO_Name,PO_Help,PO_Description,Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.PrintName,t.PO_PrintName,t.PO_Name,t.PO_Help,t.PO_Description,t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53655 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- Jun 26, 2008 12:37:59 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
UPDATE AD_Element SET EntityType='D',Updated=TO_TIMESTAMP('2008-06-26 12:37:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=53655
;

-- Jun 26, 2008 12:37:59 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
UPDATE AD_Column SET ColumnName='IsAutocomplete', Name='Autocomplete', Description='Automatic completion for textfields', Help='The autocompletion uses all existing values (from the same client and organization) of the field.' WHERE AD_Element_ID=53655
;

-- Jun 26, 2008 12:37:59 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
UPDATE AD_Field SET Name='Autocomplete', Description='Automatic completion for textfields', Help='The autocompletion uses all existing values (from the same client and organization) of the field.' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=53655) AND IsCentrallyMaintained='Y'
;

-- Jun 26, 2008 12:37:59 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
UPDATE AD_Process_Para SET ColumnName='IsAutocomplete', Name='Autocomplete', Description='Automatic completion for textfields', Help='The autocompletion uses all existing values (from the same client and organization) of the field.', AD_Element_ID=53655 WHERE UPPER(ColumnName)='ISAUTOCOMPLETE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jun 26, 2008 12:38:00 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
UPDATE AD_Process_Para SET ColumnName='IsAutocomplete', Name='Autocomplete', Description='Automatic completion for textfields', Help='The autocompletion uses all existing values (from the same client and organization) of the field.' WHERE AD_Element_ID=53655 AND IsCentrallyMaintained='Y'
;

-- Jun 26, 2008 12:38:00 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
UPDATE AD_PrintFormatItem SET PrintName='Autocomplete', Name='Autocomplete' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=53655)
;

-- Jun 26, 2008 12:38:00 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
UPDATE AD_PrintFormatItem SET PrintName='Autocomplete', Name='Autocomplete' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=53655)
;

-- Jun 26, 2008 12:39:11 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
INSERT INTO AD_Column (AD_Org_ID,Version,UpdatedBy,Updated,SeqNo,Name,IsUpdateable,IsTranslated,IsSyncDatabase,IsSelectionColumn,IsParent,IsMandatory,IsKey,IsIdentifier,IsEncrypted,IsAlwaysUpdateable,IsActive,Help,FieldLength,EntityType,Description,DefaultValue,CreatedBy,Created,ColumnName,AD_Table_ID,AD_Reference_ID,AD_Element_ID,AD_Column_ID,AD_Client_ID) VALUES (0,0,100,TO_TIMESTAMP('2008-06-26 12:39:10','YYYY-MM-DD HH24:MI:SS'),0,'Autocomplete','Y','N','N','N','N','Y','N','N','N','N','Y','The autocompletion uses all existing values (from the same client and organization) of the field.',1,'D','Automatic completion for textfields','N',100,TO_TIMESTAMP('2008-06-26 12:39:10','YYYY-MM-DD HH24:MI:SS'),'IsAutocomplete',101,20,53655,56149,0)
;

-- Jun 26, 2008 12:39:11 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=56149 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 26, 2008 12:39:16 PM CEST
-- FR[ 2003044 ] Autocomplete for Textfields - kthiemann@adempiere.org
UPDATE AD_Column SET EntityType='D',Updated=TO_TIMESTAMP('2008-06-26 12:39:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=56149
;

