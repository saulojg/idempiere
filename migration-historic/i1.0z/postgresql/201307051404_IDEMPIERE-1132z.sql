-- Jul 4, 2013 5:04:00 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
ALTER TABLE AD_Table ADD COLUMN Processing CHAR(1) DEFAULT NULL 
;

-- Jul 4, 2013 5:04:32 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,AD_Column_ID,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,AD_Client_ID,ColumnSpan,EntityType) VALUES ('N',100,36,'N','N',60505,210,'Y',202251,'N','AD_Table_UU','ed7578a5-9743-4186-8e95-7b2f648cf9d9','N','N',100,0,TO_TIMESTAMP('2013-07-04 17:04:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-07-04 17:04:31','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,2,'D')
;

-- Jul 4, 2013 5:04:32 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Field_Trl_UU ) SELECT l.AD_Language,t.AD_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=202251 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jul 4, 2013 5:04:33 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,AD_Column_ID,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,XPosition,AD_Client_ID,ColumnSpan,EntityType) VALUES ('N',100,1,'N','N',210591,220,'Y',202252,'N','Process Now','3c4978cb-1aaa-4d14-9f23-5d1b68e8e4ca','Y','N',100,0,TO_TIMESTAMP('2013-07-04 17:04:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-07-04 17:04:32','YYYY-MM-DD HH24:MI:SS'),'Y',2,0,2,'D')
;

-- Jul 4, 2013 5:04:33 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Field_Trl_UU ) SELECT l.AD_Language,t.AD_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=202252 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jul 4, 2013 5:06:07 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=202251
;

-- Jul 4, 2013 5:06:07 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=202252
;

-- Jul 4, 2013 5:06:17 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=251
;

-- Jul 4, 2013 5:06:17 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=2004
;

-- Jul 4, 2013 5:06:17 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=149
;

-- Jul 4, 2013 5:06:17 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=143
;

-- Jul 4, 2013 5:06:17 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=144
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=145
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=246
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=4874
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=249
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=6554
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=7530
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=147
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=7531
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=253
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=3207
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=5125
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=5126
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=50157
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=58844
;

-- Jul 4, 2013 5:06:18 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=202252
;

-- Jul 4, 2013 5:06:51 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET DisplayLogic='@IsView@=''Y''',Updated=TO_TIMESTAMP('2013-07-04 17:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202252
;

-- Jul 4, 2013 5:08:41 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsCentrallyMaintained='N', Name='View Validate',Updated=TO_TIMESTAMP('2013-07-04 17:08:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202252
;

-- Jul 4, 2013 5:08:57 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsCentrallyMaintained='N', Name='Index Validate',Updated=TO_TIMESTAMP('2013-07-04 17:08:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202210
;

-- Jul 5, 2013 11:30:17 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field_Trl SET Name='View Validate',Updated=TO_TIMESTAMP('2013-07-05 11:30:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202252 AND AD_Language='en_US'
;

-- Jul 5, 2013 11:31:34 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field_Trl SET Name='View Validate',Updated=TO_TIMESTAMP('2013-07-05 11:31:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202252 AND AD_Language='es_CO'
;

-- Jul 5, 2013 11:32:05 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field_Trl SET Name='Index Validate',Updated=TO_TIMESTAMP('2013-07-05 11:32:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202210 AND AD_Language='es_CO'
;

-- Jul 5, 2013 11:32:08 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field_Trl SET Name='Index Validate',Updated=TO_TIMESTAMP('2013-07-05 11:32:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202210 AND AD_Language='en_US'
;

-- Jul 5, 2013 11:36:26 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-05 11:36:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202199
;

-- Jul 5, 2013 11:36:30 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-05 11:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202200
;

-- Jul 5, 2013 11:38:08 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-05 11:38:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202212
;

-- Jul 5, 2013 11:38:11 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-05 11:38:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202213
;

-- Jul 5, 2013 11:41:26 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-05 11:41:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202222
;

-- Jul 5, 2013 11:41:28 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-05 11:41:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202223
;

-- Jul 5, 2013 11:41:33 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-05 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202238
;

-- Jul 5, 2013 11:41:35 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-05 11:41:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202239
;

-- Jul 5, 2013 11:44:36 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Process SET Classname='org.compiere.process.TableIndexValidate',Updated=TO_TIMESTAMP('2013-07-05 11:44:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=200055
;

-- Jul 5, 2013 11:44:54 AM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Process SET Classname='org.compiere.process.DatabaseViewValidate',Updated=TO_TIMESTAMP('2013-07-05 11:44:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=200056
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=202224
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=202225
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=202226
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=202236
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=202233
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=202235
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=202234
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=202231
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=202229
;

-- Jul 5, 2013 12:19:20 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=202232
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=202224
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=202225
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=202226
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=202236
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=202233
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=202235
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=202234
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=202231
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=202229
;

-- Jul 5, 2013 12:19:27 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=202232
;

-- Jul 5, 2013 12:22:03 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-05 12:22:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=210569
;

-- Jul 5, 2013 12:22:08 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO t_alter_column values('ad_viewcomponent','FromClause','VARCHAR(2000)',null,null)
;

-- Jul 5, 2013 12:22:09 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO t_alter_column values('ad_viewcomponent','FromClause',null,'NOT NULL',null)
;

-- Jul 5, 2013 12:27:50 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-05 12:27:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=210585
;

-- Jul 5, 2013 12:27:53 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO t_alter_column values('ad_viewcolumn','ColumnName','VARCHAR(30)',null,null)
;

-- Jul 5, 2013 12:27:53 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO t_alter_column values('ad_viewcolumn','ColumnName',null,'NOT NULL',null)
;

-- Jul 5, 2013 12:34:32 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
UPDATE AD_Field SET IsSameLine='Y', XPosition=4,Updated=TO_TIMESTAMP('2013-07-05 12:34:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202248
;

-- Jul 5, 2013 1:47:45 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('E','Neither index nor unique constraint with {0}',200187,'db0b6f21-0857-4be3-b0fa-456c92576ce5','NeitherTableIndexNorUniqueConstraint','Y',TO_TIMESTAMP('2013-07-05 13:47:43','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:47:43','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:47:45 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200187 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:49:15 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('E','Not an active database view',200188,'c677c807-5716-4c60-bd5b-2e09e610ac2e','NotActiveDatabaseView','Y',TO_TIMESTAMP('2013-07-05 13:49:14','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:49:14','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:49:15 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200188 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:50:07 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('E','No view components specified',200189,'cca691b2-4cfc-449f-9d0d-ab62645a79f0','NoViewComponentsSpecified','Y',TO_TIMESTAMP('2013-07-05 13:50:06','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:50:06','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:50:07 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200189 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:50:44 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('E','No view columns specified',200190,'7a091fa4-b7ab-4efa-9818-42603f6a085e','NoViewColumnsSpecified','Y',TO_TIMESTAMP('2013-07-05 13:50:43','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:50:43','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:50:44 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200190 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:51:23 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('E','Failed to create or replace view',200191,'3bd592bb-6282-407c-b27b-d310ecfb2ca1','FailedCreateOrReplaceView','Y',TO_TIMESTAMP('2013-07-05 13:51:22','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:51:22','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:51:23 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200191 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:52:02 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('I','Created or replaced view successfully',200192,'cacc12a6-47ff-4fe8-b249-e4f0e919cc9e','CreatedOrReplacedViewSuccess','Y',TO_TIMESTAMP('2013-07-05 13:52:01','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:52:01','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:52:02 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200192 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:52:59 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('E','No index columns specified',200194,'2e33e1e8-ce51-482b-b843-c89b4dab1ef9','NoIndexColumnsSpecified','Y',TO_TIMESTAMP('2013-07-05 13:52:59','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:52:59','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:52:59 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200194 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:55:47 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('E','Failed to create index',200195,'dc4a13c5-1636-4053-9706-cf16f51127eb','FailedCreateIndex','Y',TO_TIMESTAMP('2013-07-05 13:55:46','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:55:46','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:55:47 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200195 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:56:26 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('I','Created index succesfully',200196,'ffd25dfd-2529-4383-a6ac-1d244b720abe','CreatedIndexSuccess','Y',TO_TIMESTAMP('2013-07-05 13:56:25','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:56:25','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:56:26 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200196 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:57:17 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('E','Failed to modify index',200197,'2412e6f5-f640-40e5-98e8-7a0cfc3d1470','FailedModifyIndex','Y',TO_TIMESTAMP('2013-07-05 13:57:16','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:57:16','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:57:17 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200197 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:57:51 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('I','Modified index successfully',200198,'40f6581e-afa2-4361-8c90-c76ccb31b76d','ModifiedIndexSuccess','Y',TO_TIMESTAMP('2013-07-05 13:57:51','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:57:51','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:57:51 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200198 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jul 5, 2013 1:58:28 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,Updated,CreatedBy,UpdatedBy,Created,AD_Org_ID,AD_Client_ID,EntityType) VALUES ('I','No changes to the index',200199,'8d81c780-91b3-46a8-99c3-055a81b0ae15','NoChangesToIndex','Y',TO_TIMESTAMP('2013-07-05 13:58:28','YYYY-MM-DD HH24:MI:SS'),100,100,TO_TIMESTAMP('2013-07-05 13:58:28','YYYY-MM-DD HH24:MI:SS'),0,0,'D')
;

-- Jul 5, 2013 1:58:28 PM SGT
-- IDEMPIERE-1132 Improve AD_Index; AD_View; foreign keys management
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Message_Trl_UU ) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=200199 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

SELECT register_migration_script('201307051404_IDEMPIERE-1132.sql') FROM dual
;
