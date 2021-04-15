-- IDEMPIERE-2598 minor dictionary improvements
-- Apr 25, 2015 10:50:33 AM COT
UPDATE AD_Element SET Name='Drop Ship Business Partner', PrintName='Drop Ship Business Partner',Updated=TO_TIMESTAMP('2015-04-25 10:50:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=53458
;

-- Apr 25, 2015 10:50:33 AM COT
UPDATE AD_Column SET ColumnName='DropShip_BPartner_ID', Name='Drop Ship Business Partner', Description='Business Partner to ship to', Help='If empty the business partner will be shipped to.' WHERE AD_Element_ID=53458
;

-- Apr 25, 2015 10:50:33 AM COT
UPDATE AD_Process_Para SET ColumnName='DropShip_BPartner_ID', Name='Drop Ship Business Partner', Description='Business Partner to ship to', Help='If empty the business partner will be shipped to.', AD_Element_ID=53458 WHERE UPPER(ColumnName)='DROPSHIP_BPARTNER_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Apr 25, 2015 10:50:33 AM COT
UPDATE AD_Process_Para SET ColumnName='DropShip_BPartner_ID', Name='Drop Ship Business Partner', Description='Business Partner to ship to', Help='If empty the business partner will be shipped to.' WHERE AD_Element_ID=53458 AND IsCentrallyMaintained='Y'
;

-- Apr 25, 2015 10:50:33 AM COT
UPDATE AD_InfoColumn SET ColumnName='DropShip_BPartner_ID', Name='Drop Ship Business Partner', Description='Business Partner to ship to', Help='If empty the business partner will be shipped to.' WHERE AD_Element_ID=53458 AND IsCentrallyMaintained='Y'
;

-- Apr 25, 2015 10:50:33 AM COT
UPDATE AD_Field SET Name='Drop Ship Business Partner', Description='Business Partner to ship to', Help='If empty the business partner will be shipped to.' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=53458) AND IsCentrallyMaintained='Y'
;

-- Apr 25, 2015 10:50:33 AM COT
UPDATE AD_PrintFormatItem SET PrintName='Drop Ship Business Partner', Name='Drop Ship Business Partner' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=53458)
;

-- Apr 25, 2015 10:52:36 AM COT
UPDATE AD_OrgInfo SET M_Warehouse_ID=103,Updated=TO_TIMESTAMP('2015-04-25 10:52:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Org_ID=11
;

-- Apr 25, 2015 10:52:49 AM COT
UPDATE AD_OrgInfo SET M_Warehouse_ID=50001,Updated=TO_TIMESTAMP('2015-04-25 10:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Org_ID=50000
;

-- Apr 25, 2015 10:52:58 AM COT
UPDATE AD_OrgInfo SET M_Warehouse_ID=50002,Updated=TO_TIMESTAMP('2015-04-25 10:52:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Org_ID=50001
;

-- Apr 25, 2015 11:01:37 AM COT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintType='C',Updated=TO_TIMESTAMP('2015-04-25 11:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=208569
;

-- Apr 25, 2015 11:01:39 AM COT
INSERT INTO t_alter_column values('ad_ctxhelpmsg_trl','AD_CtxHelpMsg_ID','NUMERIC(10)',null,null)
;

-- Apr 25, 2015 11:01:39 AM COT
ALTER TABLE AD_CtxHelpMsg_Trl DROP CONSTRAINT adctxhelpmsg_adctxhelpmsgtrl
;

-- Apr 25, 2015 11:01:39 AM COT
ALTER TABLE AD_CtxHelpMsg_Trl ADD CONSTRAINT adctxhelpmsg_adctxhelpmsgtrl FOREIGN KEY (AD_CtxHelpMsg_ID) REFERENCES ad_ctxhelpmsg(ad_ctxhelpmsg_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- Apr 25, 2015 11:02:18 AM COT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintType='M',Updated=TO_TIMESTAMP('2015-04-25 11:02:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=208566
;

-- Apr 25, 2015 11:04:18 AM COT
UPDATE AD_Field SET DisplayLogic='@Processed@=N',Updated=TO_TIMESTAMP('2015-04-25 11:04:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4244
;

-- Apr 25, 2015 11:04:54 AM COT
UPDATE AD_Field SET DisplayLogic='@Processed@=N',Updated=TO_TIMESTAMP('2015-04-25 11:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4246
;

-- Apr 25, 2015 11:07:45 AM COT
UPDATE AD_Table SET AD_Window_ID=53165,Updated=TO_TIMESTAMP('2015-04-25 11:07:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53325
;

-- Apr 25, 2015 11:08:52 AM COT
UPDATE AD_Table SET AD_Window_ID=139,Updated=TO_TIMESTAMP('2015-04-25 11:08:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=329
;

-- Apr 25, 2015 11:10:22 AM COT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2015-04-25 11:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4922
;

-- Apr 25, 2015 11:11:21 AM COT
UPDATE AD_SysConfig SET Description='Define the start value for C_BPartner_Location.Name (possible values 0 to 4) - complete definition here http://wiki.idempiere.org/en/System_Configurator_(Window_ID-50006)#START_VALUE_BPLOCATION_NAME',Updated=TO_TIMESTAMP('2015-04-25 11:11:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=50017
;

-- Apr 25, 2015 11:13:10 AM COT
UPDATE AD_Column SET FKConstraintType='N',Updated=TO_TIMESTAMP('2015-04-25 11:13:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=6949
;

-- Apr 25, 2015 11:13:44 AM COT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2015-04-25 11:13:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=6949
;

-- Apr 25, 2015 11:13:47 AM COT
INSERT INTO t_alter_column values('ad_printformatitem','AD_Column_ID','NUMERIC(10)',null,'NULL')
;


