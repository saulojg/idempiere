-- Nov 4, 2014 8:19:43 PM COT
ALTER TABLE AD_ImportTemplate DROP CONSTRAINT adtab_adimporttemplate
;

-- Nov 4, 2014 8:19:43 PM COT
ALTER TABLE AD_ImportTemplate ADD CONSTRAINT ADTab_ADImportTemplate FOREIGN KEY (AD_Tab_ID) REFERENCES ad_tab(ad_tab_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 4, 2014 8:19:51 PM COT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-11-04 20:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=211778
;

-- Nov 4, 2014 8:19:52 PM COT
INSERT INTO t_alter_column values('ad_importtemplate','AD_Window_ID','NUMERIC(10)',null,null)
;

-- Nov 4, 2014 8:19:52 PM COT
INSERT INTO t_alter_column values('ad_importtemplate','AD_Window_ID',null,'NOT NULL',null)
;

-- Nov 4, 2014 8:19:52 PM COT
ALTER TABLE AD_ImportTemplate DROP CONSTRAINT adwindow_adimporttemplate
;

-- Nov 4, 2014 8:19:52 PM COT
ALTER TABLE AD_ImportTemplate ADD CONSTRAINT ADWindow_ADImportTemplate FOREIGN KEY (AD_Window_ID) REFERENCES ad_window(ad_window_id) DEFERRABLE INITIALLY DEFERRED
;

-- Nov 4, 2014 8:19:57 PM COT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-11-04 20:19:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=211780
;

-- Nov 4, 2014 8:19:59 PM COT
INSERT INTO t_alter_column values('ad_importtemplate','CharacterSet','VARCHAR(20)',null,null)
;

-- Nov 4, 2014 8:19:59 PM COT
INSERT INTO t_alter_column values('ad_importtemplate','CharacterSet',null,'NOT NULL',null)
;

-- Nov 4, 2014 8:20:13 PM COT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-11-04 20:20:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=211781
;

-- Nov 4, 2014 8:20:15 PM COT
INSERT INTO t_alter_column values('ad_importtemplate','CSVHeader','VARCHAR(2000)',null,null)
;

-- Nov 4, 2014 8:20:15 PM COT
INSERT INTO t_alter_column values('ad_importtemplate','CSVHeader',null,'NOT NULL',null)
;

-- Nov 4, 2014 8:43:10 PM COT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=203465
;

-- Nov 4, 2014 8:43:10 PM COT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=203460
;

-- Nov 4, 2014 8:43:10 PM COT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=203459
;

-- Nov 4, 2014 8:43:10 PM COT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=203461
;

-- Nov 4, 2014 8:43:10 PM COT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=203462
;

-- Nov 4, 2014 8:43:10 PM COT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=203466
;

-- Nov 4, 2014 8:43:10 PM COT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=203467
;

-- Nov 4, 2014 8:43:10 PM COT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=203468
;

-- Nov 4, 2014 9:07:37 PM COT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutImportTemplate.characterSet',Updated=TO_TIMESTAMP('2014-11-04 21:07:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=211780
;

-- Nov 4, 2014 11:20:18 PM COT
INSERT INTO AD_Message (MsgType,MsgText,AD_Message_ID,AD_Message_UU,Value,IsActive,CreatedBy,UpdatedBy,Created,AD_Client_ID,EntityType,AD_Org_ID,Updated) VALUES ('E','CSV Header doesn''t match template',200327,'49bcc54d-8b87-4227-9382-547517265005','WrongCSVHeader','Y',100,100,TO_TIMESTAMP('2014-11-04 23:20:18','YYYY-MM-DD HH24:MI:SS'),0,'D',0,TO_TIMESTAMP('2014-11-04 23:20:18','YYYY-MM-DD HH24:MI:SS'))
;

SELECT register_migration_script('201411042322_IDEMPIERE-2113.sql') FROM dual
;

