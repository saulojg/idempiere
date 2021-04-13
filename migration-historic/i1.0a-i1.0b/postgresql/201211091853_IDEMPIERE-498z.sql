-- Nov 1, 2012 2:27:37 PM COT
ALTER TABLE AD_Field ADD COLUMN IsQuickEntry CHAR(1) DEFAULT 'N' CHECK (IsQuickEntry IN ('Y','N')) NOT NULL
;

-- Nov 1, 2012 2:28:01 PM COT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Field_Trl_UU ) SELECT l.AD_Language,t.AD_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=200772 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 1, 2012 2:50:40 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 14:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2156
;

-- Nov 1, 2012 2:51:33 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 14:51:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3261
;

-- Nov 1, 2012 2:52:09 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2145
;

-- Nov 1, 2012 2:52:20 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 14:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=3228
;

-- Nov 1, 2012 3:10:08 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 15:10:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7010
;

-- Nov 1, 2012 3:11:02 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 15:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7020
;

-- Nov 1, 2012 3:12:08 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 15:12:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7028
;

-- Nov 1, 2012 3:12:51 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 15:12:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7017
;

-- Nov 1, 2012 3:13:38 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 15:13:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7024
;

-- Nov 1, 2012 3:13:49 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 15:13:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7021
;

-- Nov 1, 2012 3:14:07 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 15:14:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=7025
;

-- Nov 1, 2012 3:16:56 PM COT
UPDATE AD_Field SET IsQuickEntry='Y',Updated=TO_TIMESTAMP('2012-11-01 15:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=2185
;

-- Nov 2, 2012 3:39:54 PM COT
UPDATE AD_Field SET DisplayLogic='@AD_Tab_ID@=220 || @AD_Tab_ID@=496 || @AD_Tab_ID@=222',Updated=TO_TIMESTAMP('2012-11-02 15:39:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=200772
;

-- Nov 9, 2012 9:25:56 PM COT
UPDATE AD_Column SET Callout='org.adempiere.model.CalloutBPartnerLocation.formatPhone;org.adempiere.model.CalloutBPartnerLocation.quickEntryMandatory',Updated=TO_TIMESTAMP('2012-11-09 21:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2959
;

SELECT register_migration_script('201211091853_IDEMPIERE-498.sql') FROM dual
;

