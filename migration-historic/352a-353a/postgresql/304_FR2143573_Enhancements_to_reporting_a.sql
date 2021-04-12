-- 26/09/2008 17:32:21
-- Financial reporting improvements
ALTER TABLE AD_Column ADD COLUMN FormatPattern VARCHAR(22)
;

-- 26/09/2008 17:33:00
-- Financial reporting improvements
ALTER TABLE AD_PrintFormatItem ADD COLUMN FormatPattern VARCHAR(22)
;

-- 3/10/2008 11:19:23
-- Financial reporting improvements
UPDATE AD_Field SET DisplayLogic='@AD_Reference_ID@=11 | @AD_Reference_ID@=12 | @AD_Reference_ID@=15 | @AD_Reference_ID@=22 | @AD_Reference_ID@=29 | @AD_Reference_ID@=16 | @AD_Reference_ID@=37', SeqNo=165,Updated=TO_TIMESTAMP('2008-10-03 11:19:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56374
;

-- 3/10/2008 12:30:21
-- Financial reporting improvements
INSERT INTO AD_Reference (AD_Org_ID,AD_Client_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53285,TO_TIMESTAMP('2008-10-03 12:30:19','YYYY-MM-DD HH24:MI:SS'),100,'D','Y','Y','Factors',TO_TIMESTAMP('2008-10-03 12:30:19','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 3/10/2008 12:30:21
-- Financial reporting improvements
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53285 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 3/10/2008 12:31:13
-- Financial reporting improvements
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Client_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53285,53436,TO_TIMESTAMP('2008-10-03 12:31:12','YYYY-MM-DD HH24:MI:SS'),100,'Thousand','D','Y','Thousand',TO_TIMESTAMP('2008-10-03 12:31:12','YYYY-MM-DD HH24:MI:SS'),100,'k')
;

-- 3/10/2008 12:31:13
-- Financial reporting improvements
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53436 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 3/10/2008 12:31:28
-- Financial reporting improvements
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Client_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53285,53437,TO_TIMESTAMP('2008-10-03 12:31:27','YYYY-MM-DD HH24:MI:SS'),100,'Million','D','Y','Million',TO_TIMESTAMP('2008-10-03 12:31:27','YYYY-MM-DD HH24:MI:SS'),100,'m')
;

-- 3/10/2008 12:31:28
-- Financial reporting improvements
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53437 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 3/10/2008 12:31:43
-- Financial reporting improvements
UPDATE AD_Reference SET Name='Scaling Factors',Updated=TO_TIMESTAMP('2008-10-03 12:31:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53285
;

-- 3/10/2008 12:31:43
-- Financial reporting improvements
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53285
;

-- 3/10/2008 12:32:44
-- Financial reporting improvements
UPDATE AD_Reference SET Description='Factors for scaling the results of financial reports.', Help='Currently supported: thousand, million.',Updated=TO_TIMESTAMP('2008-10-03 12:32:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53285
;

-- 3/10/2008 12:32:44
-- Financial reporting improvements
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53285
;

-- 3/10/2008 12:33:17
-- Financial reporting improvements
UPDATE AD_Column SET AD_Reference_Value_ID=53285, AD_Reference_ID=17, FieldLength=1, Help='Numbers are divided by the scaling factor for presentation.  E.g. 123,000 with a scaling factor of "Thousand" will display as 123.',Updated=TO_TIMESTAMP('2008-10-03 12:33:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=56354
;

-- 3/10/2008 12:33:17
-- Financial reporting improvements
UPDATE AD_Field SET Name='Factor', Description='Scaling factor.', Help='Numbers are divided by the scaling factor for presentation.  E.g. 123,000 with a scaling factor of "Thousand" will display as 123.' WHERE AD_Column_ID=56354 AND IsCentrallyMaintained='Y'
;

-- 3/10/2008 12:53:38
-- Financial reporting improvements
UPDATE AD_Ref_List SET Value='M',Updated=TO_TIMESTAMP('2008-10-03 12:53:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=53437
;

