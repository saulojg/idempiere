-- Sep 23, 2021 5:21:44 PM MYT
UPDATE AD_Process SET Name='Copy BOM Lines From',Updated=TO_TIMESTAMP('2021-09-23 17:21:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53004
;

-- Sep 23, 2021 5:22:14 PM MYT
UPDATE AD_Process_Para SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2021-09-23 17:22:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53027
;

-- Sep 23, 2021 5:23:00 PM MYT
UPDATE AD_Column SET DefaultValue='A',Updated=TO_TIMESTAMP('2021-09-23 17:23:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=53343
;

-- Sep 23, 2021 5:27:12 PM MYT
UPDATE AD_Window SET Name='Bill of Materials & Formula', Description='Maintain Product Bill of Materials & Formula',Updated=TO_TIMESTAMP('2021-09-23 17:27:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53006
;

-- Sep 23, 2021 5:28:01 PM MYT
UPDATE AD_Field SET IsDisplayed='N', IsDisplayedGrid='N',Updated=TO_TIMESTAMP('2021-09-23 17:28:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53479
;

-- Sep 23, 2021 5:35:38 PM MYT
UPDATE AD_Menu SET IsActive='Y', AD_Window_ID=53006,Updated=TO_TIMESTAMP('2021-09-23 17:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53298
;

-- Sep 23, 2021 5:36:52 PM MYT
UPDATE AD_Table SET IsDeleteable='N', IsView='Y',Updated=TO_TIMESTAMP('2021-09-23 17:36:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=383
;

INSERT INTO PP_PRODUCT_BOM
            (pp_product_bom_id, ad_client_id, ad_org_id, isactive, created,
             createdby, updated, updatedby, m_product_id, bomtype, VALUE,
             NAME, description, help, revision, copyfrom,
             m_changenotice_id, processing, validfrom, validto,
             m_attributesetinstance_id, bomuse, c_uom_id, pp_product_bom_uu)
   SELECT Nextid (53015, 'N'), ad_client_id, ad_org_id, isactive, created,
          createdby, updated, updatedby, m_product_id, 'A', VALUE, 
          cast(NAME as character varying(60)), description, help,
          NULL, NULL, NULL, NULL, created, NULL, NULL, 'A', c_uom_id, generate_uuid()
     FROM M_PRODUCT
    WHERE isbom = 'Y' AND m_product_id > 999999 
	AND NOT EXISTS
	( SELECT x.m_product_id FROM pp_product_bom x WHERE x.m_product_id=m_product.m_product_id AND x.value=m_product.value)
;

INSERT INTO PP_PRODUCT_BOMLINE
            (pp_product_bomline_id, ad_client_id, ad_org_id, isactive,
             created, createdby, updated, updatedby, line, m_product_id,
             pp_product_bom_id, qtybom, description, help, feature, assay,
             backflushgroup, c_uom_id, componenttype, forecast, iscritical,
             isqtypercentage, issuemethod, leadtimeoffset,
             m_attributesetinstance_id, m_changenotice_id, qtybatch, scrap,
             validfrom, validto, pp_product_bomline_uu)
   SELECT Nextid (53016, 'N'), mpb.ad_client_id, mpb.ad_org_id, mpb.isactive,
          mpb.created, mpb.createdby, mpb.updated, mpb.updatedby, mpb.line,
          mpb.m_productbom_id, ppb.pp_product_bom_id, mpb.bomqty,
          mpb.description, NULL, NULL, 0, NULL, mp.c_uom_id, 'CO', 0, 'N',
          'N', '0', 0, NULL, NULL, 0, 0, mpb.created, NULL, mpb.M_PRODUCT_BOM_UU
     FROM M_PRODUCT_BOM mpb, PP_PRODUCT_BOM ppb, M_PRODUCT mp, M_Product pp
    WHERE mpb.m_product_id = ppb.m_product_id
	  AND ppb.m_product_id = pp.m_product_id
	  AND ppb.value = pp.value
      AND mpb.m_productbom_id = mp.m_product_id
      AND mpb.m_product_bom_id > 999999
;

UPDATE PP_PRODUCT_BOMLINE SET PP_PRODUCT_BOMLINE_UU = generate_uuid() WHERE pp_product_bomline_uu IS NULL
;

ALTER TABLE m_product_bom RENAME TO m_product_bom_old
;

CREATE OR REPLACE VIEW m_product_bom
(
		m_product_bom_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, line, m_product_id, m_productbom_id, 
		bomqty, description, bomtype, m_product_bom_uu
) AS
SELECT l.pp_product_bomline_id, l.ad_client_id, l.ad_org_id, l.isactive, l.created, l.createdby, l.updated, l.updatedby, l.line, b.m_product_id, l.m_product_id, 
       l.qtybom, b.description,
       CASE l.componenttype WHEN 'OP' THEN 'O' WHEN 'CO' THEN 'P' WHEN 'PH' THEN 'P' WHEN 'PK' THEN 'P' WHEN 'VA' THEN 
         CASE WHEN l.feature in ('1','2','3','4','5','6','7','8','9') THEN l.feature ELSE 'O' END 
         ELSE 'P' 
       END AS bomtype, l.pp_product_bomline_uu
FROM pp_product_bom b 
JOIN pp_product_bomline l ON b.pp_product_bom_id=l.pp_product_bom_id
WHERE b.bomtype='A' AND b.bomuse='A' AND b.isactive='Y'
;

-- Sep 24, 2021 2:59:59 PM MYT
UPDATE AD_Table SET IsChangeLog='N',Updated=TO_TIMESTAMP('2021-09-24 14:59:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=383
;

-- Sep 24, 2021 3:00:26 PM MYT
UPDATE AD_Column SET IsUpdateable='N', IsAllowLogging='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-09-24 15:00:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4723
;

-- Sep 24, 2021 3:00:42 PM MYT
UPDATE AD_Column SET IsUpdateable='N', IsAllowLogging='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-09-24 15:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=8555
;

-- Sep 24, 2021 3:01:05 PM MYT
UPDATE AD_Column SET IsUpdateable='N', IsAllowLogging='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-09-24 15:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4724
;

-- Sep 24, 2021 3:01:15 PM MYT
UPDATE AD_Column SET IsUpdateable='N', IsAllowLogging='N',Updated=TO_TIMESTAMP('2021-09-24 15:01:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4716
;

-- Sep 24, 2021 3:01:38 PM MYT
UPDATE AD_Column SET IsUpdateable='N', IsAllowLogging='N', IsAllowCopy='N', DefaultValue=NULL,Updated=TO_TIMESTAMP('2021-09-24 15:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4770
;

-- Sep 24, 2021 3:01:57 PM MYT
UPDATE AD_Column SET IsUpdateable='N', IsAllowLogging='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-09-24 15:01:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4722
;

-- Sep 24, 2021 3:02:04 PM MYT
UPDATE AD_Column SET IsUpdateable='N', IsAllowLogging='N',Updated=TO_TIMESTAMP('2021-09-24 15:02:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=60923
;

-- Sep 24, 2021 3:02:15 PM MYT
UPDATE AD_Column SET IsUpdateable='N', IsAllowLogging='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-09-24 15:02:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4721
;

-- Sep 24, 2021 2:22:50 PM MYT
UPDATE AD_Field SET IsDisplayed='N', IsDisplayedGrid='N', IsActive='N',Updated=TO_TIMESTAMP('2021-09-24 14:22:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53470
;

-- Sep 24, 2021 2:23:20 PM MYT
UPDATE AD_Column SET IsActive='N',Updated=TO_TIMESTAMP('2021-09-24 14:23:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=53323
;

-- Sep 24, 2021 2:30:22 PM MYT
INSERT INTO AD_Message (AD_Message_ID,AD_Client_ID,Updated,AD_Org_ID,MsgText,MsgType,Created,EntityType,CreatedBy,UpdatedBy,Value,AD_Message_UU,IsActive) VALUES (200402,0,TO_TIMESTAMP('2021-09-24 14:30:15','YYYY-MM-DD HH24:MI:SS'),0,'You can only set one default BOM ( BOM Type is Current Active and BOM Use is Master ) for a product.','E',TO_TIMESTAMP('2021-09-24 14:30:15','YYYY-MM-DD HH24:MI:SS'),'D',100,100,'OnlyOneCurrentActiveMasterBOM','56bbf336-47fb-4bf1-94fb-9cc643db733c','Y')
;

-- Sep 24, 2021 3:04:31 PM MYT
UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2021-09-24 15:04:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=383
;

-- Sep 25, 2021 5:57:35 PM MYT
UPDATE AD_Field SET DisplayLogic='@ComponentType@=''VA''|@ComponentType@=''OP''',Updated=TO_TIMESTAMP('2021-09-25 17:57:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58125
;

-- Sep 25, 2021 5:58:55 PM MYT
UPDATE AD_Field SET DisplayLogic='@ComponentType@=''VA''|@ComponentType@=''OP''',Updated=TO_TIMESTAMP('2021-09-25 17:58:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53495
;

-- Sep 26, 2021 3:58:50 PM MYT
UPDATE AD_Column SET DefaultValue='-1',Updated=TO_TIMESTAMP('2021-09-26 15:58:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=53364
;

-- Sep 26, 2021 3:59:41 PM MYT
UPDATE AD_Tab SET IsActive='N',Updated=TO_TIMESTAMP('2021-09-26 15:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=317
;

-- Sep 26, 2021 4:00:07 PM MYT
UPDATE AD_Tab SET DisplayLogic='@IsBOM@=''Y''',IsActive='Y',Updated=TO_TIMESTAMP('2021-09-26 16:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53286
;

-- Sep 26, 2021 4:01:23 PM MYT
UPDATE AD_Tab SET DisplayLogic='@IsBOM@=''Y''',IsActive='Y',Updated=TO_TIMESTAMP('2021-09-26 16:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53287
;

-- Sep 26, 2021 4:02:54 PM MYT
UPDATE AD_Tab SET IsSingleRow='Y',Updated=TO_TIMESTAMP('2021-09-26 16:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53287
;

-- Sep 27, 2021 11:36:52 AM MYT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2021-09-27 11:36:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=53338
;

-- Sep 27, 2021 11:36:59 AM MYT
INSERT INTO t_alter_column values('pp_product_bom','ValidFrom','TIMESTAMP',null,'NULL')
;

-- Sep 27, 2021 11:36:59 AM MYT
INSERT INTO t_alter_column values('pp_product_bom','ValidFrom',null,'NULL',null)
;

-- Sep 27, 2021 11:38:02 AM MYT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2021-09-27 11:38:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=53359
;


