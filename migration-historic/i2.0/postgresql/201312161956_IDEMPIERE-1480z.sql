-- Dec 16, 2013 8:36:26 PM COT
ALTER TABLE AD_ToolBarButton ADD COLUMN IsAddSeparator CHAR(1) DEFAULT 'N' CHECK (IsAddSeparator IN ('Y','N')) NOT NULL
;

-- Dec 16, 2013 8:39:00 PM COT
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,AD_Column_ID,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,Name,AD_Field_UU,IsDisplayed,IsFieldOnly,UpdatedBy,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus,AD_Client_ID,AD_Org_ID,EntityType) VALUES (0,'N',200002,0,'N','N',210895,120,'Y',202547,'N','Add Separator','86529d4e-ed27-4c19-8679-683715170f9e','Y','N',100,TO_TIMESTAMP('2013-12-16 20:39:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-12-16 20:39:00','YYYY-MM-DD HH24:MI:SS'),'Y','Y',120,1,'N',1,1,'N','N',0,0,'D')
;

-- Dec 16, 2013 8:39:19 PM COT
UPDATE AD_Field SET SeqNo=120, IsDisplayed='Y', XPosition=5, ColumnSpan=2,Updated=TO_TIMESTAMP('2013-12-16 20:39:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202547
;

-- Dec 16, 2013 8:40:46 PM COT
UPDATE AD_ToolBarButton SET IsAddSeparator='Y',Updated=TO_TIMESTAMP('2013-12-16 20:40:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=200030
;

-- Dec 16, 2013 8:41:03 PM COT
UPDATE AD_ToolBarButton SET IsAddSeparator='Y',Updated=TO_TIMESTAMP('2013-12-16 20:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=200036
;

-- Dec 16, 2013 8:41:28 PM COT
UPDATE AD_ToolBarButton SET IsAddSeparator='Y',Updated=TO_TIMESTAMP('2013-12-16 20:41:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=200058
;

-- Dec 16, 2013 8:41:33 PM COT
UPDATE AD_ToolBarButton SET IsAddSeparator='Y',Updated=TO_TIMESTAMP('2013-12-16 20:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=200044
;

SELECT register_migration_script('201312161956_IDEMPIERE-1480.sql') FROM dual
;

