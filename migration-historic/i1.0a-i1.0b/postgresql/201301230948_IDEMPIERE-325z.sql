-- Jan 22, 2013 5:35:47 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO t_alter_column values('ad_infocolumn','SelectClause','VARCHAR(2000)',null,null)
;

-- Jan 23, 2013 2:03:52 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_InfoColumn (AD_InfoWindow_ID,AD_InfoColumn_UU,AD_Reference_ID,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,DisplayLogic,ColumnName,IsDisplayed,IsActive,SeqNo,QueryOperator,SelectClause) VALUES (200000,'1ef6e0d2-8e90-4b50-8dce-486661a560b3',29,200017,'N','D',TO_TIMESTAMP('2013-01-23 14:03:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-01-23 14:03:50','YYYY-MM-DD HH24:MI:SS'),0,0,100,'Unconfirmed Qty','Y','@1113|M_Warehouse_ID@>0','QtyUnconfirmed','Y','Y',170,'=','(SELECT SUM(c.TargetQty) FROM M_InOutLineConfirm c INNER JOIN M_InOutLine il ON (c.M_InOutLine_ID=il.M_InOutLine_ID) INNER JOIN M_InOut i ON (il.M_InOut_ID=i.M_InOut_ID) WHERE c.Processed=''N'' AND i.M_Warehouse_ID=@1113|M_Warehouse_ID@ AND il.M_Product_ID=p.M_Product_ID) AS QtyUnconfirmed')
;

-- Jan 23, 2013 2:05:02 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_InfoColumn (AD_InfoWindow_ID,AD_InfoColumn_UU,AD_Reference_ID,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,DisplayLogic,ColumnName,IsDisplayed,IsActive,SeqNo,QueryOperator,SelectClause) VALUES (200000,'62e6fcbd-699b-4ba8-ade1-b55cbf1989e6',29,200018,'N','D',TO_TIMESTAMP('2013-01-23 14:05:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-01-23 14:05:01','YYYY-MM-DD HH24:MI:SS'),0,0,100,'Unconfirmed Move','Y','@1113|M_Warehouse_ID@>0','QtyUnconfirmedMove','Y','Y',180,'=','(SELECT SUM(c.TargetQty) FROM M_MovementLineConfirm c INNER JOIN M_MovementLine ml ON (c.M_MovementLine_ID=ml.M_MovementLine_ID) INNER JOIN M_Locator l ON (ml.M_LocatorTo_ID=l.M_Locator_ID) WHERE c.Processed=''N'' AND l.M_Warehouse_ID=@1113|M_Warehouse_ID@ AND ml.M_Product_ID=p.M_Product_ID) AS QtyUnconfirmedMove')
;

-- Jan 23, 2013 2:06:15 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_InfoColumn (AD_InfoWindow_ID,AD_InfoColumn_UU,AD_Reference_ID,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,DisplayLogic,ColumnName,IsDisplayed,IsActive,SeqNo,QueryOperator,SelectClause) VALUES (200000,'4060fb00-411d-4f99-907a-449228286303',37,200019,'N','D',TO_TIMESTAMP('2013-01-23 14:06:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-01-23 14:06:14','YYYY-MM-DD HH24:MI:SS'),0,0,100,'Margin','Y','@1113|M_PriceList_Version_ID@>0','Margin','Y','Y',190,'=','bomPriceStd(p.M_Product_ID, pr.M_PriceList_Version_ID)-bomPriceLimit(p.M_Product_ID, pr.M_PriceList_Version_ID) AS Margin')
;

-- Jan 23, 2013 2:06:47 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_InfoColumn (AD_InfoWindow_ID,AD_InfoColumn_UU,AD_Reference_ID,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,SeqNo,QueryOperator,QueryFunction,SelectClause) VALUES (200000,'a3aaf1bf-1853-42da-9bd1-0c2d4f85a0d7',10,200020,'N','D',TO_TIMESTAMP('2013-01-23 14:06:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-01-23 14:06:46','YYYY-MM-DD HH24:MI:SS'),0,0,100,'Vendor','Y','Vendor','Y','Y',200,'Like','Upper','bp.Name AS Vendor')
;

-- Jan 23, 2013 2:07:36 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_InfoColumn (AD_InfoWindow_ID,Help,AD_InfoColumn_UU,AD_Reference_ID,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,DisplayLogic,ColumnName,IsDisplayed,IsActive,AD_Element_ID,SeqNo,SelectClause) VALUES (200000,'The Price Limit indicates the lowest price for a product stated in the Price List Currency.','683b601b-1e20-46bb-88a0-0e82f2919168',37,200021,'N','D','Lowest price for a product',TO_TIMESTAMP('2013-01-23 14:07:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-01-23 14:07:35','YYYY-MM-DD HH24:MI:SS'),0,0,100,'Limit Price','Y','@1113|M_PriceList_Version_ID@>0','PriceLimit','Y','Y',955,210,'pr.PriceLimit')
;

-- Jan 23, 2013 2:07:52 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
INSERT INTO AD_InfoColumn (AD_InfoWindow_ID,Help,AD_InfoColumn_UU,AD_Reference_ID,AD_InfoColumn_ID,IsQueryCriteria,EntityType,Description,Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,UpdatedBy,Name,IsCentrallyMaintained,ColumnName,IsDisplayed,IsActive,AD_Element_ID,SeqNo,SelectClause) VALUES (200000,'If selected, the individual instance of the product has this attribute - like the individual Serial or Lot Numbers or  Guarantee Date of a product instance.  If not selected, all instances of the product share the attribute (e.g. color=green).','cd4ef8b2-53ed-4f3e-8b29-10c024fdef69',20,200022,'N','D','The product attribute is specific to the instance (like Serial No, Lot or Guarantee Date)',TO_TIMESTAMP('2013-01-23 14:07:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-01-23 14:07:51','YYYY-MM-DD HH24:MI:SS'),0,0,100,'Instance Attribute','Y','IsInstanceAttribute','Y','Y',2012,220,'pa.IsInstanceAttribute')
;

-- Jan 23, 2013 2:08:13 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET IsDisplayed='N',Updated=TO_TIMESTAMP('2013-01-23 14:08:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200005
;

-- Jan 23, 2013 2:08:37 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-01-23 14:08:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200002
;

-- Jan 23, 2013 2:47:09 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET SeqNo=5,Updated=TO_TIMESTAMP('2013-01-23 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200006
;

-- Jan 23, 2013 5:34:13 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET DisplayLogic='@1113|M_PriceList_Version_ID@>0',Updated=TO_TIMESTAMP('2013-01-23 17:34:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200012
;

-- Jan 23, 2013 5:34:17 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoColumn SET DisplayLogic='@1113|M_PriceList_Version_ID@>0',Updated=TO_TIMESTAMP('2013-01-23 17:34:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200013
;

-- Jan 23, 2013 5:58:52 PM MYT
-- IDEMPIERE-325 Complete AD based info window ( AD_InfoWindow ) implementation
UPDATE AD_InfoWindow SET IsValid='Y',Updated=TO_TIMESTAMP('2013-01-23 17:58:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=200000
;

SELECT register_migration_script('201301230948_IDEMPIERE-325.sql') FROM dual
;

