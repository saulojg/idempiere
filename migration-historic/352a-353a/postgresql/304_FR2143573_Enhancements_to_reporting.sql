
-- 26/09/2008 16:58:44
-- Financial reporting improvements
INSERT INTO AD_Element (AD_Org_ID,AD_Client_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PO_Name,PrintName,Updated,UpdatedBy) VALUES (0,0,53687,'FormatPattern',TO_TIMESTAMP('2008-09-26 16:58:43','YYYY-MM-DD HH24:MI:SS'),100,'The pattern used to format a number or date.','D','A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.','Y','Format Pattern',NULL,'Format Pattern',TO_TIMESTAMP('2008-09-26 16:58:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2008 16:58:44
-- Financial reporting improvements
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53687 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/09/2008 16:59:38
-- Financial reporting improvements
INSERT INTO AD_Column (AD_Org_ID,AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,0,56351,53687,10,489,'FormatPattern',TO_TIMESTAMP('2008-09-26 16:59:37','YYYY-MM-DD HH24:MI:SS'),100,'The pattern used to format a number or date.','D',22,'A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Format Pattern',0,TO_TIMESTAMP('2008-09-26 16:59:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/09/2008 16:59:38
-- Financial reporting improvements
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=56351 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/09/2008 17:00:09
-- Financial reporting improvements
UPDATE AD_Column SET AD_Element_ID=53687, ColumnName='FormatPattern', Description='The pattern used to format a number or date.', Help='A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.', Name='Format Pattern',Updated=TO_TIMESTAMP('2008-09-26 17:00:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=56351
;

-- 26/09/2008 17:00:09
-- Financial reporting improvements
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=56351
;

-- 26/09/2008 17:00:09
-- Financial reporting improvements
UPDATE AD_Field SET Name='Format Pattern', Description='The pattern used to format a number or date.', Help='A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.' WHERE AD_Column_ID=56351 AND IsCentrallyMaintained='Y'
;

-- 26/09/2008 17:02:12
-- Financial reporting improvements
INSERT INTO AD_Column (AD_Org_ID,AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,0,56352,53687,10,101,'FormatPattern',TO_TIMESTAMP('2008-09-26 17:02:11','YYYY-MM-DD HH24:MI:SS'),100,'The pattern used to format a number or date.','D',22,'A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Format Pattern',0,TO_TIMESTAMP('2008-09-26 17:02:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/09/2008 17:02:12
-- Financial reporting improvements
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=56352 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/09/2008 17:04:00
-- Financial reporting improvements
INSERT INTO AD_Column (AD_Org_ID,AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,0,56353,53687,10,446,'FormatPattern',TO_TIMESTAMP('2008-09-26 17:03:59','YYYY-MM-DD HH24:MI:SS'),100,'The pattern used to format a number or date.','D',22,'A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Format Pattern',0,TO_TIMESTAMP('2008-09-26 17:03:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/09/2008 17:04:00
-- Financial reporting improvements
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=56353 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/09/2008 17:09:15
-- Financial reporting improvements
-- INSERT INTO AD_Element (AD_Org_ID,AD_Client_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,0,53688,'Factor',TO_TIMESTAMP('2008-09-26 17:09:14','YYYY-MM-DD HH24:MI:SS'),100,'Scaling factor.','D','Numbers are divided by the scaling factor for presentation.  E.g. 123,000 with a scaling factor of 1,000 will display as 123.','Y','Factor','Factor',TO_TIMESTAMP('2008-09-26 17:09:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2008 17:09:15
-- Financial reporting improvements
-- INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53688 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/09/2008 17:10:06
-- Financial reporting improvements
INSERT INTO AD_Column (AD_Org_ID,AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,0,56354,53688,11,446,'Factor',TO_TIMESTAMP('2008-09-26 17:10:05','YYYY-MM-DD HH24:MI:SS'),100,'Scaling factor.','D',10,'Numbers are divided by the scaling factor for presentation.  E.g. 123,000 with a scaling factor of 1,000 will display as 123.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Factor',0,TO_TIMESTAMP('2008-09-26 17:10:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/09/2008 17:10:06
-- Financial reporting improvements
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=56354 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/09/2008 17:13:53
-- Financial reporting improvements
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Client_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (56351,0,0,56373,426,TO_TIMESTAMP('2008-09-26 17:13:52','YYYY-MM-DD HH24:MI:SS'),100,'The pattern used to format a number or date.',14,'@PrintFormatType@=F','D','A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.','Y','Y','Y','N','N','N','N','N','Format Pattern',145,0,TO_TIMESTAMP('2008-09-26 17:13:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2008 17:13:53
-- Financial reporting improvements
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=56373 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/09/2008 17:16:17
-- Financial reporting improvements
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Client_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (56352,0,0,56374,101,TO_TIMESTAMP('2008-09-26 17:16:16','YYYY-MM-DD HH24:MI:SS'),100,'The pattern used to format a number or date.',14,'D','A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.','Y','Y','Y','N','N','N','N','N','Format Pattern',390,0,TO_TIMESTAMP('2008-09-26 17:16:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2008 17:16:17
-- Financial reporting improvements
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=56374 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/09/2008 17:19:10
-- Financial reporting improvements
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Client_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (56353,0,0,56375,374,TO_TIMESTAMP('2008-09-26 17:19:09','YYYY-MM-DD HH24:MI:SS'),100,'The pattern used to format a number or date.',14,'D','A string complying with either Java SimpleDateFormat or DecimalFormat pattern syntax used to override the default presentation format of a date or number type field.','Y','Y','Y','N','N','N','N','N','Format Pattern',430,0,TO_TIMESTAMP('2008-09-26 17:19:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2008 17:19:10
-- Financial reporting improvements
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=56375 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/09/2008 17:19:39
-- Financial reporting improvements
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Client_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (56354,0,0,56376,374,TO_TIMESTAMP('2008-09-26 17:19:39','YYYY-MM-DD HH24:MI:SS'),100,'Scaling factor.',0,'D','Numbers are divided by the scaling factor for presentation.  E.g. 123,000 with a scaling factor of 1,000 will display as 123.','Y','Y','Y','N','N','N','N','Y','Factor',440,0,TO_TIMESTAMP('2008-09-26 17:19:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2008 17:19:39
-- Financial reporting improvements
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=56376 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;


-- 26/09/2008 17:30:21
-- Financial reporting improvements
ALTER TABLE PA_ReportColumn ADD COLUMN Factor CHAR(1)
;

-- 26/09/2008 17:30:38
-- Financial reporting improvements
ALTER TABLE PA_ReportColumn ADD COLUMN FormatPattern VARCHAR(22)
;


