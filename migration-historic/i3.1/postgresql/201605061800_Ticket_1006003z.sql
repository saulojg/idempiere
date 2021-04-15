-- May 5, 2016 6:00:14 PM MYT
ALTER TABLE AD_Field ADD COLUMN AD_LabelStyle_ID NUMERIC(10) DEFAULT NULL 
;

-- May 5, 2016 6:00:15 PM MYT
ALTER TABLE AD_Field ADD CONSTRAINT ADLabelStyle_ADField FOREIGN KEY (AD_LabelStyle_ID) REFERENCES ad_style(ad_style_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2016 6:01:10 PM MYT
INSERT INTO AD_Column (AD_Column_ID,SeqNoSelection,IsSyncDatabase,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,Updated,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,IsActive,CreatedBy,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,AD_Org_ID,Created,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID) VALUES (212753,0,'N',0,'N','N','N',0,'N',10,'N','N','N','Y','19bff665-ff23-4833-a825-073718edd435',TO_TIMESTAMP('2016-05-05 18:01:04','YYYY-MM-DD HH24:MI:SS'),'Y','AD_FieldStyle_ID','Field CSS Style ','Field Style','Y','Y',100,100,'N','N',0,0,TO_TIMESTAMP('2016-05-05 18:01:04','YYYY-MM-DD HH24:MI:SS'),'D','N','N','N',203012,18,200121,107)
;

-- May 5, 2016 6:01:17 PM MYT
UPDATE AD_Column SET FKConstraintType='N', FKConstraintName='ADFieldStyle_ADField',Updated=TO_TIMESTAMP('2016-05-05 18:01:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=212753
;

-- May 5, 2016 6:01:17 PM MYT
ALTER TABLE AD_Field ADD COLUMN AD_FieldStyle_ID NUMERIC(10) DEFAULT NULL 
;

-- May 5, 2016 6:01:18 PM MYT
ALTER TABLE AD_Field ADD CONSTRAINT ADFieldStyle_ADField FOREIGN KEY (AD_FieldStyle_ID) REFERENCES ad_style(ad_style_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2016 6:02:29 PM MYT
INSERT INTO AD_Column (AD_Column_ID,SeqNoSelection,IsSyncDatabase,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,Updated,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,IsActive,CreatedBy,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,AD_Org_ID,Created,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID) VALUES (212754,0,'N',0,'N','N','N',0,'N',10,'N','N','N','Y','aa21533a-7a10-4e67-9b5d-97531d242cb3',TO_TIMESTAMP('2016-05-05 18:02:23','YYYY-MM-DD HH24:MI:SS'),'Y','AD_LabelStyle_ID','Label CSS Style','Label Style','Y','Y',100,100,'N','N',0,0,TO_TIMESTAMP('2016-05-05 18:02:23','YYYY-MM-DD HH24:MI:SS'),'D','N','N','N',203011,18,200121,464)
;

-- May 5, 2016 6:02:35 PM MYT
UPDATE AD_Column SET FKConstraintType='N', FKConstraintName='ADLabelStyle_ADUserDefField',Updated=TO_TIMESTAMP('2016-05-05 18:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=212754
;

-- May 5, 2016 6:02:35 PM MYT
ALTER TABLE AD_UserDef_Field ADD COLUMN AD_LabelStyle_ID NUMERIC(10) DEFAULT NULL 
;

-- May 5, 2016 6:02:36 PM MYT
ALTER TABLE AD_UserDef_Field ADD CONSTRAINT ADLabelStyle_ADUserDefField FOREIGN KEY (AD_LabelStyle_ID) REFERENCES ad_style(ad_style_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2016 6:05:20 PM MYT
INSERT INTO AD_Column (AD_Column_ID,SeqNoSelection,IsSyncDatabase,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,Updated,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,IsActive,CreatedBy,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,AD_Org_ID,Created,EntityType,IsEncrypted,IsSecure,FKConstraintType,AD_Element_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID) VALUES (212755,0,'N',0,'N','N','N',0,'N',10,'N','N','N','Y','a3699bf0-2187-457c-857d-e8c28bb91cb4',TO_TIMESTAMP('2016-05-05 18:05:18','YYYY-MM-DD HH24:MI:SS'),'Y','AD_FieldStyle_ID','Field CSS Style ','Field Style','Y','Y',100,100,'N','N',0,0,TO_TIMESTAMP('2016-05-05 18:05:18','YYYY-MM-DD HH24:MI:SS'),'D','N','N','N',203012,18,200121,464)
;

-- May 5, 2016 6:05:32 PM MYT
UPDATE AD_Column SET FKConstraintType='N', FKConstraintName='ADFieldStyle_ADUserDefField',Updated=TO_TIMESTAMP('2016-05-05 18:05:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=212755
;

-- May 5, 2016 6:05:32 PM MYT
ALTER TABLE AD_UserDef_Field ADD COLUMN AD_FieldStyle_ID NUMERIC(10) DEFAULT NULL 
;

-- May 5, 2016 6:05:32 PM MYT
ALTER TABLE AD_UserDef_Field ADD CONSTRAINT ADFieldStyle_ADUserDefField FOREIGN KEY (AD_FieldStyle_ID) REFERENCES ad_style(ad_style_id) DEFERRABLE INITIALLY DEFERRED
;

-- May 5, 2016 6:07:17 PM MYT
INSERT INTO AD_Field (SortNo,AD_Field_ID,IsEncrypted,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,IsReadOnly,AD_Org_ID,Updated,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,CreatedBy,UpdatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,Created,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,EntityType,AD_Tab_ID) VALUES (0,204213,'N',0,'N','N',410,'Y','N',0,TO_TIMESTAMP('2016-05-05 18:07:16','YYYY-MM-DD HH24:MI:SS'),'Label CSS Style','Label Style','d9230bcf-4626-463d-a352-0b599ddae2ea','Y','N',100,100,'Y','Y',400,1,'N',0,TO_TIMESTAMP('2016-05-05 18:07:16','YYYY-MM-DD HH24:MI:SS'),2,1,'N','N',212752,'D',107)
;

-- May 5, 2016 6:07:42 PM MYT
INSERT INTO AD_Field (SortNo,AD_Field_ID,IsEncrypted,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,IsReadOnly,AD_Org_ID,Updated,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,CreatedBy,UpdatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,Created,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,EntityType,AD_Tab_ID) VALUES (0,204214,'N',0,'N','N',420,'Y','N',0,TO_TIMESTAMP('2016-05-05 18:07:41','YYYY-MM-DD HH24:MI:SS'),'Field CSS Style ','Field Style','10a0d3f9-1f8c-4a23-9279-105086672ba8','Y','N',100,100,'Y','Y',410,4,'N',0,TO_TIMESTAMP('2016-05-05 18:07:41','YYYY-MM-DD HH24:MI:SS'),2,1,'N','N',212753,'D',107)
;

-- May 5, 2016 6:09:24 PM MYT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-05-05 18:09:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=141
;

-- May 5, 2016 6:09:25 PM MYT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-05-05 18:09:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200350
;

-- May 5, 2016 6:09:25 PM MYT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-05-05 18:09:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200348
;

-- May 5, 2016 6:09:25 PM MYT
UPDATE AD_Field SET SeqNo=280, IsDisplayed='Y', XPosition=1,Updated=TO_TIMESTAMP('2016-05-05 18:09:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200349
;

-- May 5, 2016 6:09:25 PM MYT
UPDATE AD_Field SET SeqNo=290, IsDisplayed='Y', XPosition=1,Updated=TO_TIMESTAMP('2016-05-05 18:09:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204213
;

-- May 5, 2016 6:09:26 PM MYT
UPDATE AD_Field SET SeqNo=300, IsDisplayed='Y', XPosition=4,Updated=TO_TIMESTAMP('2016-05-05 18:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204214
;

-- May 5, 2016 6:09:26 PM MYT
UPDATE AD_Field SET SeqNo=310,Updated=TO_TIMESTAMP('2016-05-05 18:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13425
;

-- May 5, 2016 6:09:26 PM MYT
UPDATE AD_Field SET SeqNo=320,Updated=TO_TIMESTAMP('2016-05-05 18:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200837
;

-- May 5, 2016 6:09:26 PM MYT
UPDATE AD_Field SET SeqNo=330,Updated=TO_TIMESTAMP('2016-05-05 18:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54402
;

-- May 5, 2016 6:09:26 PM MYT
UPDATE AD_Field SET SeqNo=340,Updated=TO_TIMESTAMP('2016-05-05 18:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54401
;

-- May 5, 2016 6:09:27 PM MYT
UPDATE AD_Field SET SeqNo=350,Updated=TO_TIMESTAMP('2016-05-05 18:09:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200838
;

-- May 5, 2016 6:09:27 PM MYT
UPDATE AD_Field SET SeqNo=360,Updated=TO_TIMESTAMP('2016-05-05 18:09:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200834
;

-- May 5, 2016 6:09:27 PM MYT
UPDATE AD_Field SET SeqNo=370,Updated=TO_TIMESTAMP('2016-05-05 18:09:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13424
;

-- May 5, 2016 6:09:27 PM MYT
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2016-05-05 18:09:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=62468
;

-- May 5, 2016 6:09:27 PM MYT
UPDATE AD_Field SET SeqNo=390,Updated=TO_TIMESTAMP('2016-05-05 18:09:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53280
;

-- May 5, 2016 6:09:28 PM MYT
UPDATE AD_Field SET SeqNo=400,Updated=TO_TIMESTAMP('2016-05-05 18:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200836
;

-- May 5, 2016 6:09:28 PM MYT
UPDATE AD_Field SET SeqNo=410,Updated=TO_TIMESTAMP('2016-05-05 18:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200835
;

-- May 5, 2016 6:09:28 PM MYT
UPDATE AD_Field SET SeqNo=420,Updated=TO_TIMESTAMP('2016-05-05 18:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=136
;

-- May 5, 2016 6:09:28 PM MYT
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2016-05-05 18:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=139
;

-- May 5, 2016 6:10:56 PM MYT
INSERT INTO AD_Field (SortNo,AD_Field_ID,IsEncrypted,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,IsReadOnly,AD_Org_ID,Updated,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,CreatedBy,UpdatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,Created,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,EntityType,AD_Tab_ID) VALUES (0,204215,'N',0,'N','N',280,'Y','N',0,TO_TIMESTAMP('2016-05-05 18:10:56','YYYY-MM-DD HH24:MI:SS'),'Label CSS Style','Label Style','c8cb7dd4-a36d-42cc-ae7f-d0e737ff4a5d','Y','N',100,100,'Y','Y',260,1,'N',0,TO_TIMESTAMP('2016-05-05 18:10:56','YYYY-MM-DD HH24:MI:SS'),2,1,'N','N',212754,'D',395)
;

-- May 5, 2016 6:11:22 PM MYT
INSERT INTO AD_Field (SortNo,AD_Field_ID,IsEncrypted,DisplayLength,IsSameLine,IsHeading,SeqNo,IsCentrallyMaintained,IsReadOnly,AD_Org_ID,Updated,Description,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,CreatedBy,UpdatedBy,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,Created,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Column_ID,EntityType,AD_Tab_ID) VALUES (0,204216,'N',0,'N','N',290,'Y','N',0,TO_TIMESTAMP('2016-05-05 18:11:21','YYYY-MM-DD HH24:MI:SS'),'Field CSS Style ','Field Style','b36dc9cf-96bd-418f-a296-270541b7897c','Y','N',100,100,'Y','Y',270,4,'N',0,TO_TIMESTAMP('2016-05-05 18:11:21','YYYY-MM-DD HH24:MI:SS'),2,1,'N','N',212755,'D',395)
;

-- May 5, 2016 6:12:30 PM MYT
UPDATE AD_Field SET SeqNo=180, IsDisplayed='Y', XPosition=1,Updated=TO_TIMESTAMP('2016-05-05 18:12:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204215
;

-- May 5, 2016 6:12:30 PM MYT
UPDATE AD_Field SET SeqNo=190, IsDisplayed='Y', XPosition=4,Updated=TO_TIMESTAMP('2016-05-05 18:12:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204216
;

-- May 5, 2016 6:12:30 PM MYT
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2016-05-05 18:12:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200858
;

-- May 5, 2016 6:12:31 PM MYT
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2016-05-05 18:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200856
;

-- May 5, 2016 6:12:31 PM MYT
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2016-05-05 18:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200855
;

-- May 5, 2016 6:12:31 PM MYT
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2016-05-05 18:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5054
;

-- May 5, 2016 6:12:31 PM MYT
UPDATE AD_Field SET SeqNo=240,Updated=TO_TIMESTAMP('2016-05-05 18:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200849
;

-- May 5, 2016 6:12:31 PM MYT
UPDATE AD_Field SET SeqNo=250,Updated=TO_TIMESTAMP('2016-05-05 18:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200851
;

-- May 5, 2016 6:12:32 PM MYT
UPDATE AD_Field SET SeqNo=260,Updated=TO_TIMESTAMP('2016-05-05 18:12:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200852
;

-- May 5, 2016 6:12:32 PM MYT
UPDATE AD_Field SET SeqNo=270,Updated=TO_TIMESTAMP('2016-05-05 18:12:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200854
;

-- May 5, 2016 6:12:32 PM MYT
UPDATE AD_Field SET SeqNo=280,Updated=TO_TIMESTAMP('2016-05-05 18:12:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5051
;

-- May 5, 2016 6:12:32 PM MYT
UPDATE AD_Field SET SeqNo=290,Updated=TO_TIMESTAMP('2016-05-05 18:12:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5057
;

CREATE OR REPLACE VIEW ad_field_v AS 
 SELECT t.ad_window_id, f.ad_tab_id, f.ad_field_id, tbl.ad_table_id, f.ad_column_id, f.name, f.description, f.help, f.isdisplayed, f.displaylogic, f.displaylength, f.seqno, f.sortno, f.issameline, f.isheading, f.isfieldonly, f.isreadonly, f.isencrypted AS isencryptedfield, f.obscuretype, c.columnname, c.columnsql, c.fieldlength, c.vformat, COALESCE(f.defaultvalue, c.defaultvalue) AS defaultvalue, c.iskey, c.isparent, COALESCE(f.ismandatory, c.ismandatory) AS ismandatory, c.isidentifier, c.istranslated, COALESCE(f.ad_reference_value_id, c.ad_reference_value_id) AS ad_reference_value_id, c.callout, COALESCE(f.ad_reference_id, c.ad_reference_id) AS ad_reference_id, COALESCE(f.ad_val_rule_id, c.ad_val_rule_id) AS ad_val_rule_id, c.ad_process_id, COALESCE(f.isalwaysupdateable, c.isalwaysupdateable) AS isalwaysupdateable, COALESCE(f.readonlylogic, c.readonlylogic) AS readonlylogic, COALESCE(f.mandatorylogic, c.mandatorylogic) AS mandatorylogic, COALESCE(f.isupdateable, c.isupdateable) AS isupdateable, c.isencrypted AS isencryptedcolumn, c.isselectioncolumn, tbl.tablename, c.valuemin, c.valuemax, fg.name AS fieldgroup, vr.code AS validationcode, f.included_tab_id, fg.fieldgrouptype, fg.iscollapsedbydefault, COALESCE(f.infofactoryclass, c.infofactoryclass) AS infofactoryclass, c.isautocomplete, COALESCE(f.isallowcopy, c.isallowcopy) AS isallowcopy, f.isdisplayedgrid, f.seqnogrid, c.seqnoselection, f.xposition, f.columnspan, f.numlines, COALESCE(f.istoolbarbutton, c.istoolbarbutton) AS istoolbarbutton, c.formatpattern, f.isadvancedfield, f.isdefaultfocus, c.ad_chart_id, f.ad_labelstyle_id, f.ad_fieldstyle_id
   FROM ad_field f
   JOIN ad_tab t ON f.ad_tab_id = t.ad_tab_id
   LEFT JOIN ad_fieldgroup fg ON f.ad_fieldgroup_id = fg.ad_fieldgroup_id
   LEFT JOIN ad_column c ON f.ad_column_id = c.ad_column_id
   JOIN ad_table tbl ON c.ad_table_id = tbl.ad_table_id
   LEFT JOIN ad_val_rule vr ON vr.ad_val_rule_id = COALESCE(f.ad_val_rule_id, c.ad_val_rule_id)
  WHERE f.isactive = 'Y'::bpchar AND c.isactive = 'Y'::bpchar
;

CREATE OR REPLACE VIEW ad_field_vt AS 
 SELECT trl.ad_language, t.ad_window_id, f.ad_tab_id, f.ad_field_id, tbl.ad_table_id, f.ad_column_id, trl.name, trl.description, trl.help, f.isdisplayed, f.displaylogic, f.displaylength, f.seqno, f.sortno, f.issameline, f.isheading, f.isfieldonly, f.isreadonly, f.isencrypted AS isencryptedfield, f.obscuretype, c.columnname, c.columnsql, c.fieldlength, c.vformat, COALESCE(f.defaultvalue, c.defaultvalue) AS defaultvalue, c.iskey, c.isparent, COALESCE(f.ismandatory, c.ismandatory) AS ismandatory, c.isidentifier, c.istranslated, COALESCE(f.ad_reference_value_id, c.ad_reference_value_id) AS ad_reference_value_id, c.callout, COALESCE(f.ad_reference_id, c.ad_reference_id) AS ad_reference_id, COALESCE(f.ad_val_rule_id, c.ad_val_rule_id) AS ad_val_rule_id, c.ad_process_id, COALESCE(f.isalwaysupdateable, c.isalwaysupdateable) AS isalwaysupdateable, COALESCE(f.readonlylogic, c.readonlylogic) AS readonlylogic, COALESCE(f.mandatorylogic, c.mandatorylogic) AS mandatorylogic, COALESCE(f.isupdateable, c.isupdateable) AS isupdateable, c.isencrypted AS isencryptedcolumn, c.isselectioncolumn, tbl.tablename, c.valuemin, c.valuemax, fgt.name AS fieldgroup, vr.code AS validationcode, f.included_tab_id, fg.fieldgrouptype, fg.iscollapsedbydefault, COALESCE(f.infofactoryclass, c.infofactoryclass) AS infofactoryclass, c.isautocomplete, COALESCE(f.isallowcopy, c.isallowcopy) AS isallowcopy, f.isdisplayedgrid, f.seqnogrid, c.seqnoselection, f.xposition, f.columnspan, f.numlines, COALESCE(f.istoolbarbutton, c.istoolbarbutton) AS istoolbarbutton, c.formatpattern, f.isadvancedfield, f.isdefaultfocus, c.ad_chart_id, f.ad_labelstyle_id, f.ad_fieldstyle_id
   FROM ad_field f
   JOIN ad_field_trl trl ON f.ad_field_id = trl.ad_field_id
   JOIN ad_tab t ON f.ad_tab_id = t.ad_tab_id
   LEFT JOIN ad_fieldgroup fg ON f.ad_fieldgroup_id = fg.ad_fieldgroup_id
   LEFT JOIN ad_fieldgroup_trl fgt ON f.ad_fieldgroup_id = fgt.ad_fieldgroup_id AND trl.ad_language::text = fgt.ad_language::text
   LEFT JOIN ad_column c ON f.ad_column_id = c.ad_column_id
   JOIN ad_table tbl ON c.ad_table_id = tbl.ad_table_id
   LEFT JOIN ad_val_rule vr ON vr.ad_val_rule_id = COALESCE(f.ad_val_rule_id, c.ad_val_rule_id)
  WHERE f.isactive = 'Y'::bpchar AND c.isactive = 'Y'::bpchar
;

SELECT register_migration_script('201605061800_Ticket_1006003.sql') FROM dual
;

