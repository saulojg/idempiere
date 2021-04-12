-- Jul 25, 2012 9:38:08 AM COT
ALTER TABLE GL_JournalLine ADD COLUMN Alias_ValidCombination_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 25, 2012 9:51:01 AM COT
UPDATE AD_Table SET AD_Window_ID=200005,Updated=TO_TIMESTAMP('2012-07-25 09:51:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=224
;

-- Jul 25, 2012 9:51:13 AM COT
UPDATE AD_Table SET AD_Window_ID=200005,Updated=TO_TIMESTAMP('2012-07-25 09:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=226
;

-- Jul 25, 2012 10:01:38 AM COT
UPDATE AD_Tab SET WhereClause=NULL,Updated=TO_TIMESTAMP('2012-07-25 10:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=200007
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=200182
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=200183
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=200185
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=200184
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=200186
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=200187
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=200188
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=200189
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=200190
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=200191
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=200192
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=200193
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=200194
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=200195
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=200196
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=200197
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=200198
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=200199
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=200200
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=200201
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=200202
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=200203
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=200204
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=200205
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=200206
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=200207
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=200208
;

-- Jul 25, 2012 10:49:51 AM COT
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=200209
;

-- Jul 25, 2012 11:01:59 AM COT
INSERT INTO AD_Process (AD_Process_ID,IsDirectPrint,IsReport,AccessLevel,IsBetaFunctionality,IsServerProcess,ShowHelp,EntityType,Statistic_Seconds,Statistic_Count,Classname,Description,Value,Name,AD_Org_ID,AD_Client_ID,Updated,UpdatedBy,CreatedBy,Created,IsActive) VALUES (200005,'N','N','1','N','N','Y','D',0,0,'org.compiere.process.CopyFromJournalDoc','Copy Journal/Lines from other Journal','GL_Journal CopyFrom','Copy Details',0,0,TO_TIMESTAMP('2012-07-25 11:01:58','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2012-07-25 11:01:58','YYYY-MM-DD HH24:MI:SS'),'Y')
;

-- Jul 25, 2012 11:01:59 AM COT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=200005 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jul 25, 2012 11:02:44 AM COT
INSERT INTO AD_Process_Para (IsRange,AD_Process_Para_ID,IsEncrypted,FieldLength,Help,AD_Process_ID,IsCentrallyMaintained,AD_Reference_ID,SeqNo,IsMandatory,AD_Element_ID,EntityType,Name,ColumnName,Description,IsActive,AD_Client_ID,UpdatedBy,Updated,CreatedBy,Created,AD_Org_ID) VALUES ('N',200025,'N',0,'The General Ledger Journal identifies a group of journal lines which represent a logical business transaction',200005,'Y',30,10,'Y',315,'D','Journal','GL_Journal_ID','General Ledger Journal','Y',0,100,TO_TIMESTAMP('2012-07-25 11:02:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-07-25 11:02:43','YYYY-MM-DD HH24:MI:SS'),0)
;

-- Jul 25, 2012 11:02:44 AM COT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Help,Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Help,t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=200025 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 25, 2012 11:03:20 AM COT
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,Help,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,IsKey,AD_Element_ID,AD_Process_ID,IsAutocomplete,IsAllowLogging,IsEncrypted,IsUpdateable,IsAlwaysUpdateable,ColumnName,Description,Name,IsAllowCopy,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsActive,Created,UpdatedBy) VALUES (200232,224,'D',0,'N','N','N',0,'Copy From Record','N',1,'N',28,'N','N',2037,200005,'N','Y','N','Y','N','CopyFrom','Copy From Record','Copy From','Y',100,TO_TIMESTAMP('2012-07-25 11:03:19','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_TIMESTAMP('2012-07-25 11:03:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 25, 2012 11:03:20 AM COT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=200232 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 25, 2012 11:03:24 AM COT
ALTER TABLE GL_Journal ADD COLUMN CopyFrom CHAR(1) DEFAULT NULL 
;

-- Jul 25, 2012 11:04:34 AM COT
INSERT INTO AD_Field (SortNo,IsEncrypted,DisplayLength,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,IsReadOnly,Help,EntityType,Description,Name,UpdatedBy,AD_Org_ID,IsActive,Created,AD_Client_ID,CreatedBy,Updated) VALUES (0,'N',23,'Y','N','N',200232,'N',240,'Y',200007,200250,'N','Copy From Record','D','Copy From Record','Copy From',100,0,'Y',TO_TIMESTAMP('2012-07-25 11:04:33','YYYY-MM-DD HH24:MI:SS'),0,100,TO_TIMESTAMP('2012-07-25 11:04:33','YYYY-MM-DD HH24:MI:SS'))
;

-- Jul 25, 2012 11:04:34 AM COT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=200250 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jul 25, 2012 11:04:42 AM COT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2012-07-25 11:04:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200209
;

-- Jul 25, 2012 11:05:03 AM COT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-07-25 11:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200209
;

-- Jul 25, 2012 11:23:39 AM COT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutGLJournal.account',Updated=TO_TIMESTAMP('2012-07-25 11:23:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1661
;

-- Jul 25, 2012 12:43:48 PM COT
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2012-07-25 12:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=14440
;

-- Jul 25, 2012 12:43:50 PM COT
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2012-07-25 12:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=14441
;

-- Jul 25, 2012 12:43:56 PM COT
INSERT INTO t_alter_column values('i_gljournal','IsCreateNewBatch','CHAR(1)',null,'N')
;

-- Jul 25, 2012 12:44:02 PM COT
INSERT INTO t_alter_column values('i_gljournal','IsCreateNewJournal','CHAR(1)',null,'N')
;

-- Jul 25, 2012 1:01:43 PM COT
UPDATE AD_Field SET DisplayLogic='@GL_JournalBatch_ID@=0',Updated=TO_TIMESTAMP('2012-07-25 13:01:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200208
;

-- Jul 25, 2012 2:32:04 PM COT
INSERT INTO AD_Reference (AD_Reference_ID,ValidationType,EntityType,IsOrderByValue,Name,Description,AD_Client_ID,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy) VALUES (200002,'T','D','N','C_ElementValue (trx) Not Doc Controlled','Element Values',0,0,100,TO_TIMESTAMP('2012-07-25 14:32:03','YYYY-MM-DD HH24:MI:SS'),'Y',TO_TIMESTAMP('2012-07-25 14:32:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 25, 2012 2:32:04 PM COT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Help,Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Help,t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=200002 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Jul 25, 2012 2:32:47 PM COT
INSERT INTO AD_Ref_Table (IsValueDisplayed,WhereClause,OrderByClause,AD_Table_ID,AD_Reference_ID,AD_Key,AD_Display,EntityType,CreatedBy,Updated,Created,UpdatedBy,AD_Client_ID,AD_Org_ID,IsActive) VALUES ('Y','C_ElementValue.IsSummary<>''Y'' AND C_ElementValue.IsDocControlled<>''Y''','C_ElementValue.Value',188,200002,1125,1135,'D',100,TO_TIMESTAMP('2012-07-25 14:32:47','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2012-07-25 14:32:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y')
;

-- Jul 25, 2012 2:33:10 PM COT
UPDATE AD_Column SET AD_Reference_Value_ID=200002,Updated=TO_TIMESTAMP('2012-07-25 14:33:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=200217
;

UPDATE AD_System
  SET LastMigrationScriptApplied='855_IDEMPIERE-344_GLJournalImprovement.sql'
WHERE LastMigrationScriptApplied<'855_IDEMPIERE-344_GLJournalImprovement.sql'
   OR LastMigrationScriptApplied IS NULL
;
