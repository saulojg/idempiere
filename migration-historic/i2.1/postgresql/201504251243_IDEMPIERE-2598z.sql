-- Apr 25, 2015 11:13:47 AM COT
ALTER TABLE AD_PrintFormatItem DROP CONSTRAINT adcolumn_adprintformatitem
;

-- Apr 25, 2015 11:13:47 AM COT
ALTER TABLE AD_PrintFormatItem ADD CONSTRAINT adcolumn_adprintformatitem FOREIGN KEY (AD_Column_ID) REFERENCES ad_column(ad_column_id) DEFERRABLE INITIALLY DEFERRED
;

-- Apr 25, 2015 11:20:55 AM COT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2015-04-25 11:20:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=6652
;

-- Apr 25, 2015 11:20:58 AM COT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2015-04-25 11:20:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=6653
;

-- Apr 25, 2015 11:24:36 AM COT
UPDATE AD_Val_Rule SET Code='DocStatus NOT IN (''DR'',''IP'',''IN'')  AND EXISTS (SELECT * FROM C_OrderLine WHERE C_Order.C_Order_ID=C_OrderLine.C_Order_ID AND QtyOrdered <> QtyInvoiced) AND IsSOTrx=''Y'' AND NOT EXISTS (SELECT * FROM C_Invoice i WHERE i.C_Order_ID=C_Order.C_Order_ID AND i.DocStatus IN (''IP'', ''CO'', ''CL''))',Updated=TO_TIMESTAMP('2015-04-25 11:24:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=134
;

-- Apr 25, 2015 11:31:42 AM COT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2015-04-25 11:31:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2919
;

-- Apr 25, 2015 11:32:31 AM COT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2015-04-25 11:32:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=12533
;

-- Apr 25, 2015 11:42:12 AM COT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintType='C',Updated=TO_TIMESTAMP('2015-04-25 11:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=5385
;

-- Apr 25, 2015 11:42:14 AM COT
INSERT INTO t_alter_column values('ad_fieldgroup_trl','AD_FieldGroup_ID','NUMERIC(10)',null,null)
;

-- Apr 25, 2015 11:42:14 AM COT
ALTER TABLE AD_FieldGroup_Trl DROP CONSTRAINT adfieldgroup_trl
;

-- Apr 25, 2015 11:42:14 AM COT
ALTER TABLE AD_FieldGroup_Trl ADD CONSTRAINT adfieldgroup_trl FOREIGN KEY (AD_FieldGroup_ID) REFERENCES ad_fieldgroup(ad_fieldgroup_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Apr 25, 2015 11:46:29 AM COT
UPDATE AD_Field SET IsAdvancedField='Y',Updated=TO_TIMESTAMP('2015-04-25 11:46:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12131
;

-- Apr 25, 2015 11:48:48 AM COT
UPDATE AD_Field SET IsAdvancedField='Y',Updated=TO_TIMESTAMP('2015-04-25 11:48:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8944
;

SELECT register_migration_script('201504251243_IDEMPIERE-2598.sql') FROM dual
;

