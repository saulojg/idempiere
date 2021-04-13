-- Jan 30, 2013 5:47:38 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
ALTER TABLE AD_InfoColumn ADD COLUMN IsIdentifier CHAR(1) DEFAULT 'N' CHECK (IsIdentifier IN ('Y','N')) NOT NULL
;

-- Jan 30, 2013 5:50:05 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_Column (SeqNoSelection,IsSyncDatabase,Version,AD_Table_ID,AD_Column_ID,EntityType,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,AD_Element_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Help,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,AD_Client_ID,IsToolbarButton,IsAlwaysUpdateable,IsEncrypted) VALUES (0,'N',1,897,208445,'D','N','N','N',0,'N',10,'N',11,'N',200096,'N','Y','29bb3f29-299c-46b8-9e08-372083702d1e','Y','SeqNoSelection','Selection Column Sequence','For ordering sequence of selection column','Selection Column Sequence','Y',TO_TIMESTAMP('2013-01-30 17:50:04','YYYY-MM-DD HH24:MI:SS'),100,0,'Y',TO_TIMESTAMP('2013-01-30 17:50:04','YYYY-MM-DD HH24:MI:SS'),100,0,'N','N','N')
;

-- Jan 30, 2013 5:50:13 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
ALTER TABLE AD_InfoColumn ADD COLUMN SeqNoSelection NUMERIC(10) DEFAULT NULL 
;

-- Jan 30, 2013 6:00:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_Field (ColumnSpan,NumLines,SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,AD_Column_ID,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,IsDisplayed,IsFieldOnly,AD_Field_UU,UpdatedBy,AD_Org_ID,Created,AD_Client_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry) VALUES (2,1,0,'N',844,0,'N','N',208444,220,'Y',201719,'N','The Identifier checkbox indicates that this column is part of the identifier or key for this table.  ','@IsQueryCriteria@=Y','D','This column is part of the record identifier','Identifier','Y','N','b79dad18-0a75-4cc3-a8dc-2bcaec0b6e97',100,0,TO_TIMESTAMP('2013-01-30 18:00:52','YYYY-MM-DD HH24:MI:SS'),0,100,TO_TIMESTAMP('2013-01-30 18:00:52','YYYY-MM-DD HH24:MI:SS'),'Y','Y',130,1,'N')
;

-- Jan 30, 2013 6:01:39 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_Field (ColumnSpan,NumLines,SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,AD_Column_ID,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Help,DisplayLogic,EntityType,Description,Name,IsDisplayed,IsFieldOnly,AD_Field_UU,UpdatedBy,AD_Org_ID,Created,AD_Client_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry) VALUES (2,1,0,'N',844,0,'N','N',208445,230,'Y',201720,'N','For ordering sequence of selection column','@IsQueryCriteria@=Y','D','Selection Column Sequence','Selection Column Sequence','Y','N','99b2daa0-13cd-42a9-bc74-fbe704e3c449',100,0,TO_TIMESTAMP('2013-01-30 18:01:37','YYYY-MM-DD HH24:MI:SS'),0,100,TO_TIMESTAMP('2013-01-30 18:01:37','YYYY-MM-DD HH24:MI:SS'),'Y','Y',140,1,'N')
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET SeqNo=150, IsDisplayed='Y', XPosition=2,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201719
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET ColumnSpan=2, SeqNo=160, IsDisplayed='Y', XPosition=4,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201720
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET SeqNo=170,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201625
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET SeqNo=180,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201635
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET SeqNo=190,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201636
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET SeqNo=200,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13603
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET SeqNo=210,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201622
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET SeqNo=220,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201623
;

-- Jan 30, 2013 6:02:54 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Field SET SeqNo=230,Updated=TO_TIMESTAMP('2013-01-30 18:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13597
;

-- Jan 30, 2013 9:58:17 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=20,Updated=TO_TIMESTAMP('2013-01-30 21:58:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200039
;

-- Jan 30, 2013 9:58:21 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=10,Updated=TO_TIMESTAMP('2013-01-30 21:58:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200041
;

-- Jan 30, 2013 9:58:24 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=50,Updated=TO_TIMESTAMP('2013-01-30 21:58:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200044
;

-- Jan 30, 2013 9:58:29 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=60,Updated=TO_TIMESTAMP('2013-01-30 21:58:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200045
;

-- Jan 30, 2013 9:58:33 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=80,Updated=TO_TIMESTAMP('2013-01-30 21:58:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200048
;

-- Jan 30, 2013 9:58:36 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=90,Updated=TO_TIMESTAMP('2013-01-30 21:58:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200049
;

-- Jan 30, 2013 9:58:40 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=30,Updated=TO_TIMESTAMP('2013-01-30 21:58:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200051
;

-- Jan 30, 2013 9:58:43 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=40,Updated=TO_TIMESTAMP('2013-01-30 21:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200043
;

-- Jan 30, 2013 9:58:49 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNoSelection=70,Updated=TO_TIMESTAMP('2013-01-30 21:58:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200046
;

-- Jan 30, 2013 10:00:00 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2013-01-30 22:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=208445
;

-- Jan 30, 2013 10:00:10 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO t_alter_column values('ad_infocolumn','SeqNoSelection','NUMERIC(10)',null,'0')
;

-- Jan 30, 2013 10:08:33 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-01-30 22:08:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200023
;

-- Jan 30, 2013 10:08:40 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-01-30 22:08:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200024
;

-- Jan 30, 2013 10:09:46 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-01-30 22:09:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200000
;

-- Jan 30, 2013 10:09:58 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-01-30 22:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200001
;

-- Jan 30, 2013 10:10:43 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-01-30 22:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200041
;

UPDATE AD_InfoColumn SET SeqNoSelection = 0 WHERE SeqNoSelection IS NULL
;

SELECT register_migration_script('201301301425_IDEMPIERE-325.sql') FROM dual
;

