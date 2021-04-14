-- Jul 5, 2013 9:52:28 PM COT
UPDATE AD_Element SET Help=NULL, Description='Defines whether content must be treated as secure',Updated=TO_TIMESTAMP('2013-07-05 21:52:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=2991
;

-- Jul 5, 2013 9:52:28 PM COT
UPDATE AD_Column SET ColumnName='IsSecure', Name='Secure content', Description='Defines whether content must be treated as secure', Help=NULL WHERE AD_Element_ID=2991
;

-- Jul 5, 2013 9:52:28 PM COT
UPDATE AD_Process_Para SET ColumnName='IsSecure', Name='Secure content', Description='Defines whether content must be treated as secure', Help=NULL, AD_Element_ID=2991 WHERE UPPER(ColumnName)='ISSECURE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jul 5, 2013 9:52:28 PM COT
UPDATE AD_Process_Para SET ColumnName='IsSecure', Name='Secure content', Description='Defines whether content must be treated as secure', Help=NULL WHERE AD_Element_ID=2991 AND IsCentrallyMaintained='Y'
;

-- Jul 5, 2013 9:52:28 PM COT
UPDATE AD_InfoColumn SET ColumnName='IsSecure', Name='Secure content', Description='Defines whether content must be treated as secure', Help=NULL WHERE AD_Element_ID=2991 AND IsCentrallyMaintained='Y'
;

-- Jul 5, 2013 9:52:28 PM COT
UPDATE AD_Field SET Name='Secure content', Description='Defines whether content must be treated as secure', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=2991) AND IsCentrallyMaintained='Y'
;

-- Jul 5, 2013 9:55:26 PM COT
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Table_ID,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,DefaultValue,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,AD_Element_ID) VALUES (0,'N',0,101,210596,'Y','N','N',0,'N',1,'N',20,'N','N','Y','4390c065-55a1-4f20-b5dd-fbd2b50ee66d','Y','IsSecure','Defines whether content must be treated as secure','N','Secure content','Y',TO_TIMESTAMP('2013-07-05 21:55:24','YYYY-MM-DD HH24:MI:SS'),100,0,'Y',TO_TIMESTAMP('2013-07-05 21:55:24','YYYY-MM-DD HH24:MI:SS'),100,'N','N',0,'D','N',2991)
;

-- Jul 5, 2013 9:55:26 PM COT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=210596 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;


