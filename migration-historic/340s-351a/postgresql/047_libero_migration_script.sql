-- Dec 16, 2007 10:20:20 PM CST
-- Reserving ID to Libero Manufacturing Management
INSERT INTO AD_EntityType (ModelPackage,IsActive,Updated,UpdatedBy,Version,Processing,Description,AD_Client_ID,AD_Org_ID,Name,Help,AD_EntityType_ID,Created,CreatedBy,EntityType) VALUES ('org.eevolution.model','Y',TO_TIMESTAMP('2007-12-16 22:20:19','YYYY-MM-DD HH24:MI:SS'),0,'1.00','N','Libero Manufacturing covers all manufacturing activity within the various types of production environments',0,0,'e-Evolution Libero Manufacturing Management','Concept and Foundation

Manufacturing Resource Planning

Towards Operations Management
Planning, Execution to Control
The Planning, Execution and Control of Manufacturing covers the aspects of priority planning, capacity planning, priority control and capacity control.

Priority Planning: It responds the questions of which products, in which amounts and when the material is required (if this does not work any of the other functions work well).
Which Material I need and when I need to receive it.
Tools: MRP.
Capacity Planning: It responds the questions of whichever time is needed and in where.
What time I need and when I need it.
Tools: CRP.

Control of Priorities: It verifies the execution of the planning of priorities.
shows the status of all the operations in each facility.
Tools: Shop Floor Control (Dispatch List).

Control of Capacities: It verifies that the capacities in each center of work stay in the planned levels.
planned Capacity Present VERSUS.
Tools: Control of floor (Input/output Control).

Sponsored Development www.e-evolution.com',50000,TO_TIMESTAMP('2007-12-16 22:20:19','YYYY-MM-DD HH24:MI:SS'),0,'EE01')
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='C_DocType DocBaseType', Description='Base Document Types', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:21:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=183
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=183
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='MXI', Name='Match Invoice', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:21:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=492
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=492
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='APC', Name='AP Credit Memo', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:21:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=361
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=361
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='ARC', Name='AR Credit Memo', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:21:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=362
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=362
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='GLJ', Name='GL Journal', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:21:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=302
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=302
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='GLD', Name='GL Document', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:21:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=303
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=303
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='API', Name='AP Invoice', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:21:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=304
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=304
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='APP', Name='AP Payment', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:22:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=305
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=305
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='ARI', Name='AR Invoice', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:22:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=306
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=306
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='ARR', Name='AR Receipt', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:22:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=307
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=307
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='SOO', Name='Sales Order', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:22:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=308
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=308
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='ARF', Name='AR Pro Forma Invoice', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:22:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=322
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=322
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='MMS', Name='Material Delivery', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:22:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=323
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=323
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='MMR', Name='Material Receipt', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:22:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=324
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=324
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='MMM', Name='Material Movement', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:23:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=328
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=328
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='POO', Name='Purchase Order', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:23:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=329
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=329
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='POR', Name='Purchase Requisition', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:23:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=330
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=330
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='CMB', Name='Bank Statement', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:23:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=465
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=465
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='CMC', Name='Cash Journal', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:23:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=466
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=466
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='CMA', Name='Payment Allocation', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:23:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=467
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=467
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='MMI', Name='Material Physical Inventory', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:23:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=348
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=348
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='MMP', Name='Material Production', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:23:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=491
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=491
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='PJI', Name='Project Issue', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=584
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=584
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=183, Value='MXP', Name='Match PO', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:24:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=493
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=493
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:13','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:13','YYYY-MM-DD HH24:MI:SS'),0,0,53231,183,'MOA','Manufacturing Operation Activity','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53231 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:14','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:14','YYYY-MM-DD HH24:MI:SS'),0,0,53232,183,'MOF','Maintenance Order','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53232 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:16','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:16','YYYY-MM-DD HH24:MI:SS'),0,0,53233,183,'MOI','Manufacturing Order Issue','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53233 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:17','YYYY-MM-DD HH24:MI:SS'),0,0,53234,183,'MOM','Manufacturing Order Method Variation ','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53234 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:17','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:17','YYYY-MM-DD HH24:MI:SS'),0,0,53235,183,'MOP','Manufacturing Order','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53235 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:18','YYYY-MM-DD HH24:MI:SS'),0,0,53236,183,'MOR','Manufacturing Order Receipt','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53236 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:19','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:19','YYYY-MM-DD HH24:MI:SS'),0,0,53237,183,'MOU','Manufacturing Order Use Variation ','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53237 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:20','YYYY-MM-DD HH24:MI:SS'),0,0,53238,183,'MOV','Manufacturing Order Rate Variation ','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53238 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:21','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:21','YYYY-MM-DD HH24:MI:SS'),0,0,53239,183,'MQO','Quality Order','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53239 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Mar 23, 2008 8:42:23 PM CST
-- Human Resource & Payroll
INSERT INTO AD_EntityType (AD_Client_ID,AD_EntityType_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,ModelPackage,Name,Processing,Updated,UpdatedBy,Version) VALUES (0,50005,0,TO_TIMESTAMP('2008-03-23 20:42:22','YYYY-MM-DD HH24:MI:SS'),100,'Libero Human Resource & Payroll','EE02','Project
http://www.adempiere.com/wiki/index.php/Sponsored_Development:_Libero_HR_%26_Payroll
Overview
http://www.adempiere.com/wiki/images/3/32/Payroll.pdf

Sponsored Development www.e-evolution.com','Y','org.eevolution.model','e-Evolution Libero Human Resource & Payroll','N',TO_TIMESTAMP('2008-03-23 20:42:22','YYYY-MM-DD HH24:MI:SS'),100,'1.00')
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:22','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:22','YYYY-MM-DD HH24:MI:SS'),0,0,53240,183,'HRP','HRPayroll','Y',0,'EE02')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53240 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:23','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-16 22:24:23','YYYY-MM-DD HH24:MI:SS'),0,0,53241,183,'DOO','Order Distribution','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53241 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Workflow (Created,IsActive,AD_Client_ID,AD_Workflow_ID,Description,Help,Name,CreatedBy,Updated,AD_Org_ID,UpdatedBy,AccessLevel,WorkflowType,"limit",DurationUnit,WaitingTime,Version,Cost,Author,Priority,PublishStatus,WorkingTime,Duration,IsValid,IsDefault,Value,EntityType) VALUES (TO_TIMESTAMP('2007-12-16 22:24:24','YYYY-MM-DD HH24:MI:SS'),'Y',0,50000,'Setup Manufacturing Management','This workflow defines the Manufacturing Management and the supporting rules.','Manufacturing Management Setup',0,TO_TIMESTAMP('2007-12-16 22:24:24','YYYY-MM-DD HH24:MI:SS'),0,0,'3','G',0,'D',0,0,0,'Victor Perez',0,'R',0,0,'N','N','Setup Manufacturing Management','EE01')
;

INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50000 AND EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Workflow_ID!=t.AD_Workflow_ID)
;

INSERT INTO AD_Workflow_Access (IsActive,Created,AD_Workflow_ID,AD_Org_ID,CreatedBy,AD_Client_ID,Updated,UpdatedBy,AD_Role_ID) VALUES ('Y',TO_TIMESTAMP('2007-12-16 22:24:26','YYYY-MM-DD HH24:MI:SS'),50000,0,0,0,TO_TIMESTAMP('2007-12-16 22:24:26','YYYY-MM-DD HH24:MI:SS'),0,0)
;

INSERT INTO AD_WF_Node (AD_Workflow_ID,IsCentrallyMaintained,Created,Description,IsActive,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,"action",Name,CreatedBy,Updated,UpdatedBy,XPosition,WorkingTime,Value,SplitElement,YPosition,Duration,DocAction,Priority,WaitingTime,JoinElement,WaitTime,Cost,DynPriorityChange,EntityType) VALUES (50000,'N',TO_TIMESTAMP('2007-12-16 22:24:28','YYYY-MM-DD HH24:MI:SS'),'Setup Manufacturing Workflow','Y',0,0,50000,'F','Manufacturing Workflow Setup',0,TO_TIMESTAMP('2007-12-16 22:24:28','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Setup Manufacturing Workflow','X',0,0,'CO',0,0,'X',0,0,0,'EE01')
;

INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50000 AND EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_WF_Node_ID!=t.AD_WF_Node_ID)
;

INSERT INTO AD_WF_Node (AD_Workflow_ID,IsCentrallyMaintained,Created,Description,IsActive,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,"action",Name,CreatedBy,Updated,UpdatedBy,XPosition,WorkingTime,Value,SplitElement,YPosition,Duration,DocAction,Priority,WaitingTime,JoinElement,WaitTime,Cost,DynPriorityChange,EntityType) VALUES (50000,'N',TO_TIMESTAMP('2007-12-16 22:24:29','YYYY-MM-DD HH24:MI:SS'),'Setup Manufacturing Management','Y',0,0,50001,'F','Discrete Manufacturing Setup',0,TO_TIMESTAMP('2007-12-16 22:24:29','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Setup Discrete Manufacturing','X',0,0,'CO',0,0,'X',0,0,0,'EE01')
;

INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50001 AND EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_WF_Node_ID!=t.AD_WF_Node_ID)
;

INSERT INTO AD_WF_Node (AD_Workflow_ID,IsCentrallyMaintained,Created,Description,IsActive,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,"action",Name,CreatedBy,Updated,UpdatedBy,XPosition,WorkingTime,Value,SplitElement,YPosition,Duration,DocAction,Priority,WaitingTime,JoinElement,WaitTime,Cost,DynPriorityChange,EntityType) VALUES (50000,'N',TO_TIMESTAMP('2007-12-16 22:24:31','YYYY-MM-DD HH24:MI:SS'),'Setup Manufacturing Management','Y',0,0,50002,'F','Bill of Material & Formula Setup',0,TO_TIMESTAMP('2007-12-16 22:24:31','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Setup Bill of Material & Formula','X',0,0,'CO',0,0,'X',0,0,0,'EE01')
;

INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50002 AND EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_WF_Node_ID!=t.AD_WF_Node_ID)
;

INSERT INTO AD_WF_NodeNext (UpdatedBy,AD_Org_ID,AD_WF_Node_ID,CreatedBy,Updated,IsActive,AD_WF_Next_ID,AD_Client_ID,Created,IsStdUserWorkflow,SeqNo,AD_WF_NodeNext_ID,EntityType) VALUES (0,0,50002,0,TO_TIMESTAMP('2007-12-16 22:24:32','YYYY-MM-DD HH24:MI:SS'),'Y',50001,0,TO_TIMESTAMP('2007-12-16 22:24:32','YYYY-MM-DD HH24:MI:SS'),'N',10,50000,'EE01')
;

UPDATE AD_Workflow SET AD_WF_Node_ID=50000, IsValid='Y',Updated=TO_TIMESTAMP('2007-12-16 22:24:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Workflow_ID=50000
;

UPDATE AD_Table SET Name='Change Notice', AccessLevel='3', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=355, IsDeleteable='Y', TableName='M_ChangeNotice', Description=NULL, IsHighVolume='N', ImportTable='N', IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:25:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=799
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='String', Description='Character String', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:25:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=10
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=10
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13932
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=13932 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Table Direct', Description='Direct Table Access', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:25:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=19
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=19
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@#AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='AD_Org_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:26:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13926
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=13926 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Date+Time', Description='Date with time', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:26:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=16
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=16
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:26:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13928
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=13928 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Table', Description='Table List', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:26:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=18
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=18
;

UPDATE AD_Reference SET Help=NULL, ValidationType='T', Name='AD_User', Description='User selection', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:26:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=110
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=110
;

UPDATE AD_Ref_Table SET AD_Table_ID = 114, AD_Display = 213, AD_Key = 212, isValueDisplayed = 'N', OrderByClause = 'AD_User.Name', EntityType ='D', WhereClause = '' WHERE AD_Reference_ID = 110
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='CreatedBy', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:27:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13929
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=13929 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13933
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=13933 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Text Long', Description='Text (Long) - Text > 2000 characters', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:27:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=36
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=36
;

UPDATE AD_Column SET Name='Detail Information', IsMandatory='N', IsTranslated='N', Description='Additional Detail Information', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='DetailInfo', FieldLength=0, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=36, AD_Val_Rule_ID=NULL, AD_Element_ID=1670, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:28:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13935
;

UPDATE AD_Field SET Name='Detail Information', Description='Additional Detail Information', Help=NULL WHERE AD_Column_ID=13935 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Text', Description='Character String up to 2000 characters', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:28:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=14
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=14
;

UPDATE AD_Column SET Name='Comment/Help', IsMandatory='N', IsTranslated='N', Description='Comment or Hint', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Help field contains a hint, comment or help about the use of this item.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='Help', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=14, AD_Val_Rule_ID=NULL, AD_Element_ID=326, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:28:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13934
;

UPDATE AD_Field SET Name='Comment/Help', Description='Comment or Hint', Help='The Help field contains a hint, comment or help about the use of this item.' WHERE AD_Column_ID=13934 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Yes-No', Description='CheckBox', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:28:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=20
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=20
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:28:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13927
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=13927 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Approved', IsMandatory='Y', IsTranslated='N', Description='Indicates if this document requires approval', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='N', Help='The Approved checkbox indicates if this document requires approval before it can be processed.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='IsApproved', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=351, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:29:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14003
;

UPDATE AD_Field SET Name='Approved', Description='Indicates if this document requires approval', Help='The Approved checkbox indicates if this document requires approval before it can be processed.' WHERE AD_Column_ID=14003 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='ID', Description='10 Digit Identifier', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:29:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=13
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=13
;

UPDATE AD_Column SET Name='Change Notice', IsMandatory='Y', IsTranslated='N', Description='Bill of Materials (Engineering) Change Notice (Version)', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='M_ChangeNotice_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=2783, IsUpdateable='N', IsKey='Y', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:29:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13924
;

UPDATE AD_Field SET Name='Change Notice', Description='Bill of Materials (Engineering) Change Notice (Version)', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.' WHERE AD_Column_ID=13924 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Processed', IsMandatory='Y', IsTranslated='N', Description='The document has been processed', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Processed checkbox indicates that a document has been processed.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='Processed', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1047, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:30:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14002
;

UPDATE AD_Field SET Name='Processed', Description='The document has been processed', Help='The Processed checkbox indicates that a document has been processed.' WHERE AD_Column_ID=14002 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Button', Description='Command Button - starts a process', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:30:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=28
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=28
;

UPDATE AD_Column SET Name='Process Now', IsMandatory='N', IsTranslated='N', Description=NULL, IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='Processing', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=28, AD_Val_Rule_ID=NULL, AD_Element_ID=524, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:30:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13936
;

UPDATE AD_Field SET Name='Process Now', Description=NULL, Help=NULL WHERE AD_Column_ID=13936 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13930
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=13930 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@#AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='AD_Client_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:31:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13925
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=13925 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=799, ColumnName='UpdatedBy', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:32:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13931
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=13931 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Tab SET Description='(Engineering) Change Note (Version)', Help=NULL, OrderByClause=NULL, IsTranslationTab='N', Name='Change Notice', SeqNo=10, AD_Table_ID=799, AD_Window_ID=356, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='N', ImportFields=NULL, Processing='N', TabLevel=0, IsInsertRecord='Y', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:32:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=741
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=741
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Materials (Engineering) Change Notice (Version)', DisplayLength=14, AD_Column_ID=13924, IsFieldOnly='N', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', Name='Change Notice', AD_Tab_ID=741, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:32:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12008
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=13925, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=741, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:32:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12009
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=13926, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=741, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:33:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12010
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Alphanumeric identifier of the entity', DisplayLength=60, AD_Column_ID=13932, IsFieldOnly='N', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', Name='Name', AD_Tab_ID=741, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:33:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12011
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Optional short description of the record', DisplayLength=60, AD_Column_ID=13933, IsFieldOnly='N', Help='A description is limited to 255 characters.', Name='Description', AD_Tab_ID=741, IsSameLine='N', IsHeading='N', SeqNo=40, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:33:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12012
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Comment or Hint', DisplayLength=60, AD_Column_ID=13934, IsFieldOnly='N', Help='The Help field contains a hint, comment or help about the use of this item.', Name='Comment/Help', AD_Tab_ID=741, IsSameLine='N', IsHeading='N', SeqNo=50, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:34:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12013
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=13927, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=741, IsSameLine='N', IsHeading='N', SeqNo=60, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:34:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12014
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Additional Detail Information', DisplayLength=60, AD_Column_ID=13935, IsFieldOnly='N', Help=NULL, Name='Detail Information', AD_Tab_ID=741, IsSameLine='N', IsHeading='N', SeqNo=70, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:34:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12015
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12015
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description=NULL, DisplayLength=23, AD_Column_ID=13936, IsFieldOnly='N', Help=NULL, Name='Process Now', AD_Tab_ID=741, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:34:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12016
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12016
;

UPDATE AD_Table SET Name='Change Request', AccessLevel='3', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=355, IsDeleteable='Y', TableName='M_ChangeRequest', Description=NULL, IsHighVolume='N', ImportTable='N', IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=800
;

UPDATE AD_Column SET Name='Document No', IsMandatory='Y', IsTranslated='N', Description='Document sequence number of the document', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='DocumentNo', FieldLength=30, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=290, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:35:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13947
;

UPDATE AD_Field SET Name='Document No', Description='Document sequence number of the document', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).' WHERE AD_Column_ID=13947 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=2, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13948
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=13948 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13941
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=13941 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='CreatedBy', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:36:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13942
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=13942 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:36:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13949
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=13949 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Detail Information', IsMandatory='N', IsTranslated='N', Description='Additional Detail Information', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='DetailInfo', FieldLength=0, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=36, AD_Val_Rule_ID=NULL, AD_Element_ID=1670, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:37:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13951
;

UPDATE AD_Field SET Name='Detail Information', Description='Additional Detail Information', Help=NULL WHERE AD_Column_ID=13951 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Comment/Help', IsMandatory='N', IsTranslated='N', Description='Comment or Hint', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Help field contains a hint, comment or help about the use of this item.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='Help', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=14, AD_Val_Rule_ID=NULL, AD_Element_ID=326, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:37:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13950
;

UPDATE AD_Field SET Name='Comment/Help', Description='Comment or Hint', Help='The Help field contains a hint, comment or help about the use of this item.' WHERE AD_Column_ID=13950 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:37:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13940
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=13940 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Approved', IsMandatory='Y', IsTranslated='N', Description='Indicates if this document requires approval', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='N', Help='The Approved checkbox indicates if this document requires approval before it can be processed.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='IsApproved', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=351, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14005
;

UPDATE AD_Field SET Name='Approved', Description='Indicates if this document requires approval', Help='The Approved checkbox indicates if this document requires approval before it can be processed.' WHERE AD_Column_ID=14005 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='BOM', IsMandatory='N', IsTranslated='N', Description='Bill of Material', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The composition of the Product', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='M_BOM_ID', FieldLength=10, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2782, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:38:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13945
;

UPDATE AD_Field SET Name='BOM', Description='Bill of Material', Help='The composition of the Product' WHERE AD_Column_ID=13945 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Change Notice', IsMandatory='N', IsTranslated='N', Description='Bill of Materials (Engineering) Change Notice (Version)', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='M_ChangeNotice_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2783, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13946
;

UPDATE AD_Field SET Name='Change Notice', Description='Bill of Materials (Engineering) Change Notice (Version)', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.' WHERE AD_Column_ID=13946 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Change Request', IsMandatory='Y', IsTranslated='N', Description='BOM (Engineering) Change Request', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='M_ChangeRequest_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=2785, IsUpdateable='N', IsKey='Y', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13937
;

UPDATE AD_Field SET Name='Change Request', Description='BOM (Engineering) Change Request', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials' WHERE AD_Column_ID=13937 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='T', Name='M_ChangeNotice', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:39:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=351
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=351
;

UPDATE AD_Ref_Table SET AD_Table_ID = 799, AD_Display = 13932, AD_Key = 13924, isValueDisplayed = 'N', OrderByClause = '', EntityType ='D', WhereClause = '' WHERE AD_Reference_ID = 351
;

UPDATE AD_Column SET Name='Fixed in', IsMandatory='N', IsTranslated='N', Description='Fixed in Change Notice', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=351, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='M_FixChangeNotice_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=2797, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:39:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14001
;

UPDATE AD_Field SET Name='Fixed in', Description='Fixed in Change Notice', Help=NULL WHERE AD_Column_ID=14001 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Processed', IsMandatory='Y', IsTranslated='N', Description='The document has been processed', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Processed checkbox indicates that a document has been processed.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='Processed', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1047, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:40:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14004
;

UPDATE AD_Field SET Name='Processed', Description='The document has been processed', Help='The Processed checkbox indicates that a document has been processed.' WHERE AD_Column_ID=14004 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:40:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13943
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=13943 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='AD_Client_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13938
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=13938 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='UpdatedBy', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13944
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=13944 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=800, ColumnName='AD_Org_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:41:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13939
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=13939 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Tab SET Description='Change Request of Change Notice', Help=NULL, OrderByClause=NULL, IsTranslationTab='N', Name='Change Request', SeqNo=20, AD_Table_ID=800, AD_Window_ID=356, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='N', AD_Column_ID=13946, ImportFields=NULL, Processing='N', TabLevel=1, IsInsertRecord='Y', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:41:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=742
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=742
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Materials (Engineering) Change Notice (Version)', DisplayLength=14, AD_Column_ID=13946, IsFieldOnly='N', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', Name='Change Notice', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:42:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12018
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=13938, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:42:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12019
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=13939, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=742, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:42:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12020
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='BOM (Engineering) Change Request', DisplayLength=14, AD_Column_ID=13937, IsFieldOnly='N', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', Name='Change Request', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:43:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12017
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Material', DisplayLength=14, AD_Column_ID=13945, IsFieldOnly='N', Help='The composition of the Product', Name='BOM', AD_Tab_ID=742, IsSameLine='Y', IsHeading='N', SeqNo=40, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:43:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12021
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Document sequence number of the document', DisplayLength=20, AD_Column_ID=13947, IsFieldOnly='N', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', Name='Document No', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=50, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:43:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12022
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Alphanumeric identifier of the entity', DisplayLength=60, AD_Column_ID=13948, IsFieldOnly='N', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', Name='Name', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=60, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:43:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12023
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Optional short description of the record', DisplayLength=60, AD_Column_ID=13949, IsFieldOnly='N', Help='A description is limited to 255 characters.', Name='Description', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=70, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:44:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12024
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Comment or Hint', DisplayLength=60, AD_Column_ID=13950, IsFieldOnly='N', Help='The Help field contains a hint, comment or help about the use of this item.', Name='Comment/Help', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:44:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12025
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=13940, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=90, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:44:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12026
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Additional Detail Information', DisplayLength=60, AD_Column_ID=13951, IsFieldOnly='N', Help=NULL, Name='Detail Information', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=100, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:44:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12027
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12027
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Fixed in Change Notice', DisplayLength=10, AD_Column_ID=14001, IsFieldOnly='N', Help=NULL, Name='Fixed in', AD_Tab_ID=742, IsSameLine='N', IsHeading='N', SeqNo=110, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:46:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12028
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12028
;

UPDATE AD_Table SET Name='Request', AccessLevel='7', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=232, IsDeleteable='Y', TableName='R_Request', Description='Request from a Business Partner or Prospect', IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:47:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=417
;

UPDATE AD_Column SET Name='Self-Service', IsMandatory='Y', IsTranslated='N', Description='This is a Self-Service entry or this entry can be changed via Self-Service', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='N', Help='Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='IsSelfService', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=2063, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8774
;

UPDATE AD_Field SET Name='Self-Service', Description='This is a Self-Service entry or this entry can be changed via Self-Service', Help='Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.' WHERE AD_Column_ID=8774 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Request Type', IsMandatory='Y', IsTranslated='N', Description='Type of request (e.g. Inquiry, Complaint, ..)', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Request Types are used for processing and categorizing requests. Options are Account Inquiry, Warranty Issue, etc.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='R_RequestType_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=1894, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout='org.compiere.model.CalloutRequest.type', ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=7791
;

UPDATE AD_Field SET Name='Request Type', Description='Type of request (e.g. Inquiry, Complaint, ..)', Help='Request Types are used for processing and categorizing requests. Options are Account Inquiry, Warranty Issue, etc.' WHERE AD_Column_ID=7791 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Search', Description='Search Field', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=30
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=30
;

UPDATE AD_Column SET Name='Asset', IsMandatory='N', IsTranslated='N', Description='Asset used internally or by customers', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='A_Asset_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=1884, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:48:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10580
;

UPDATE AD_Field SET Name='Asset', Description='Asset used internally or by customers', Help='An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.' WHERE AD_Column_ID=10580 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Last Alert', IsMandatory='N', IsTranslated='N', Description='Date when last alert were sent', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The last alert date is updated when a reminder email is sent', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='DateLastAlert', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=2629, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:48:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=12927
;

UPDATE AD_Field SET Name='Last Alert', Description='Date when last alert were sent', Help='The last alert date is updated when a reminder email is sent' WHERE AD_Column_ID=12927 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Table', IsMandatory='N', IsTranslated='N', Description='Database Table information', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Database Table provides the information of the table definition', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='AD_Table_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=126, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13078
;

UPDATE AD_Field SET Name='Table', Description='Database Table information', Help='The Database Table provides the information of the table definition' WHERE AD_Column_ID=13078 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Project', IsMandatory='N', IsTranslated='N', Description='Financial Project', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A Project allows you to track and control internal or external activities.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='C_Project_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=208, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:49:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5799
;

UPDATE AD_Field SET Name='Project', Description='Financial Project', Help='A Project allows you to track and control internal or external activities.' WHERE AD_Column_ID=5799 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Record ID', IsMandatory='N', IsTranslated='N', Description='Direct internal record ID', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Record ID is the internal unique identifier of a record. Please note that zooming to the record may not be successful for Orders, Invoices and Shipment/Receipts as sometimes the Sales Order type is not known.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='Record_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=28, AD_Val_Rule_ID=NULL, AD_Element_ID=538, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:49:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13079
;

UPDATE AD_Field SET Name='Record ID', Description='Direct internal record ID', Help='The Record ID is the internal unique identifier of a record. Please note that zooming to the record may not be successful for Orders, Invoices and Shipment/Receipts as sometimes the Sales Order type is not known.' WHERE AD_Column_ID=13079 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Document No', IsMandatory='Y', IsTranslated='N', Description='Document sequence number of the document', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='DocumentNo', FieldLength=30, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=290, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:49:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5423
;

UPDATE AD_Field SET Name='Document No', Description='Document sequence number of the document', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).' WHERE AD_Column_ID=5423 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Invoice', IsMandatory='N', IsTranslated='N', Description='Invoice Identifier', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Invoice Document.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='C_Invoice_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=1008, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5437
;

UPDATE AD_Field SET Name='Invoice', Description='Invoice Identifier', Help='The Invoice Document.' WHERE AD_Column_ID=5437 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Order', IsMandatory='N', IsTranslated='N', Description='Order', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you cloase an order, unshipped (backordered) quantities are cancelled.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='C_Order_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=558, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:50:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5436
;

UPDATE AD_Field SET Name='Order', Description='Order', Help='The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you cloase an order, unshipped (backordered) quantities are cancelled.' WHERE AD_Column_ID=5436 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Payment', IsMandatory='N', IsTranslated='N', Description='Payment identifier', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Payment is a unique identifier of this payment.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='C_Payment_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=1384, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:51:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5438
;

UPDATE AD_Field SET Name='Payment', Description='Payment identifier', Help='The Payment is a unique identifier of this payment.' WHERE AD_Column_ID=5438 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Close Date', IsMandatory='N', IsTranslated='N', Description='Close Date', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Start Date indicates the last or final date', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='CloseDate', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=2721, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:51:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13576
;

UPDATE AD_Field SET Name='Close Date', Description='Close Date', Help='The Start Date indicates the last or final date' WHERE AD_Column_ID=13576 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='List', Description='Reference List', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:51:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=17
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=17
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='R_Request Confidential', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=340
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=340
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=340, Value='I', Name='Internal', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:51:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=758
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=758
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=340, Value='A', Name='Public Information', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:52:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=724
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=724
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=340, Value='C', Name='Partner Confidential', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:52:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=726
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=726
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=340, Value='P', Name='Private Information', IsActive='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=883
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=883
;

UPDATE AD_Column SET Name='Confidentiality', IsMandatory='Y', IsTranslated='N', Description='Type of Confidentiality', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='C', Help=NULL, AD_Reference_Value_ID=340, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='ConfidentialType', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=2709, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:52:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13487
;

UPDATE AD_Field SET Name='Confidentiality', Description='Type of Confidentiality', Help=NULL WHERE AD_Column_ID=13487 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Entry Confidentiality', IsMandatory='Y', IsTranslated='N', Description='Confidentiality of the individual entry', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='C', Help=NULL, AD_Reference_Value_ID=340, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='ConfidentialTypeEntry', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=2711, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13491
;

UPDATE AD_Field SET Name='Entry Confidentiality', Description='Confidentiality of the individual entry', Help=NULL WHERE AD_Column_ID=13491 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:53:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5419
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=5419 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5420
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=5420 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Date', Description='Date mm/dd/yyyy', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=15
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=15
;

UPDATE AD_Column SET Name='Complete Plan', IsMandatory='N', IsTranslated='N', Description='Planned Completion Date', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Date when the task is planned to be complete', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='DateCompletePlan', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=15, AD_Val_Rule_ID=NULL, AD_Element_ID=2899, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:54:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14726
;

UPDATE AD_Field SET Name='Complete Plan', Description='Planned Completion Date', Help='Date when the task is planned to be complete' WHERE AD_Column_ID=14726 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Date last action', IsMandatory='N', IsTranslated='N', Description='Date this request was last acted on', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Date Last Action indicates that last time that the request was acted on.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='DateLastAction', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=1502, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:54:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5430
;

UPDATE AD_Field SET Name='Date last action', Description='Date this request was last acted on', Help='The Date Last Action indicates that last time that the request was acted on.' WHERE AD_Column_ID=5430 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Date next action', IsMandatory='N', IsTranslated='N', Description='Date that this request should be acted on', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Date Next Action indicates the next scheduled date for an action to occur for this request.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='DateNextAction', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=1503, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:55:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5445
;

UPDATE AD_Field SET Name='Date next action', Description='Date that this request should be acted on', Help='The Date Next Action indicates the next scheduled date for an action to occur for this request.' WHERE AD_Column_ID=5445 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Start Plan', IsMandatory='N', IsTranslated='N', Description='Planned Start Date', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Date when you plan to start', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='DateStartPlan', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=15, AD_Val_Rule_ID=NULL, AD_Element_ID=2901, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:55:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14734
;

UPDATE AD_Field SET Name='Start Plan', Description='Planned Start Date', Help='Date when you plan to start' WHERE AD_Column_ID=14734 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='R_Request Due Type', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:55:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=222
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=222
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=222, Value='3', Name='Overdue', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:55:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=442
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=442
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=222, Value='5', Name='Due', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=443
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=443
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=222, Value='7', Name='Scheduled', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:56:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=444
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=444
;

UPDATE AD_Column SET Name='Due type', IsMandatory='Y', IsTranslated='N', Description='Status of the next action for this Request', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='5', Help='The Due Type indicates if this request is Due, Overdue or Scheduled.', AD_Reference_Value_ID=222, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='DueType', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=1504, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:56:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5427
;

UPDATE AD_Field SET Name='Due type', Description='Status of the next action for this Request', Help='The Due Type indicates if this request is Due, Overdue or Scheduled.' WHERE AD_Column_ID=5427 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='End Time', IsMandatory='N', IsTranslated='N', Description='End of the time span', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='EndTime', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=2714, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13494
;

UPDATE AD_Field SET Name='End Time', Description='End of the time span', Help=NULL WHERE AD_Column_ID=13494 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:57:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5418
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=5418 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Escalated', IsMandatory='Y', IsTranslated='N', Description='This request has been escalated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Escalated checkbox indicates that this request has been escalated or raised in importance.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='IsEscalated', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1509, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:57:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5429
;

UPDATE AD_Field SET Name='Escalated', Description='This request has been escalated', Help='The Escalated checkbox indicates that this request has been escalated or raised in importance.' WHERE AD_Column_ID=5429 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Invoiced', IsMandatory='Y', IsTranslated='N', Description='Is this invoiced?', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='If selected, invoices are created', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='IsInvoiced', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=387, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:58:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13489
;

UPDATE AD_Field SET Name='Invoiced', Description='Is this invoiced?', Help='If selected, invoices are created' WHERE AD_Column_ID=13489 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Last Result', IsMandatory='N', IsTranslated='N', Description='Result of last contact', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Last Result identifies the result of the last contact made.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='LastResult', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=431, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5431
;

UPDATE AD_Field SET Name='Last Result', Description='Result of last contact', Help='The Last Result identifies the result of the last contact made.' WHERE AD_Column_ID=5431 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Change Request', IsMandatory='N', IsTranslated='N', Description='BOM (Engineering) Change Request', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='M_ChangeRequest_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=2785, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:58:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13952
;

UPDATE AD_Field SET Name='Change Request', Description='BOM (Engineering) Change Request', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials' WHERE AD_Column_ID=13952 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Fixed in', IsMandatory='N', IsTranslated='N', Description='Fixed in Change Notice', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=351, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='M_FixChangeNotice_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=2797, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:59:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14981
;

UPDATE AD_Field SET Name='Fixed in', Description='Fixed in Change Notice', Help=NULL WHERE AD_Column_ID=14981 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Shipment/Receipt', IsMandatory='N', IsTranslated='N', Description='Material Shipment Document', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Material Shipment / Receipt ', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='M_InOut_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=1025, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:59:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13573
;

UPDATE AD_Field SET Name='Shipment/Receipt', Description='Material Shipment Document', Help='The Material Shipment / Receipt ' WHERE AD_Column_ID=13573 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='T', Name='M_Product (no summary)', Description='Product selection no summary', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:59:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=162
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=162
;

UPDATE AD_Ref_Table SET AD_Table_ID = 208, AD_Display = 1410, AD_Key = 1402, isValueDisplayed = 'N', OrderByClause = 'M_Product.Value', EntityType ='D', WhereClause = 'M_Product.IsSummary=''N''' WHERE AD_Reference_ID = 162
;

UPDATE AD_Column SET Name='Product Used', IsMandatory='N', IsTranslated='N', Description='Product/Resource/Service used in Request', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Invoicing uses the Product used.', AD_Reference_Value_ID=162, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='M_ProductSpent_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=2716, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 22:59:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13497
;

UPDATE AD_Field SET Name='Product Used', Description='Product/Resource/Service used in Request', Help='Invoicing uses the Product used.' WHERE AD_Column_ID=13497 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Val_Rule SET IsActive='Y', Code='M_Product.IsSummary=''N'' AND M_Product.IsActive=''Y''', Name='M_Product (Trx)', Description=NULL, Type='S', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=231
;

UPDATE AD_Column SET Name='Product', IsMandatory='N', IsTranslated='N', Description='Product, Service, Item', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Identifies an item which is either purchased or sold in this organization.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='M_Product_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=231, AD_Element_ID=454, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:02:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5439
;

UPDATE AD_Field SET Name='Product', Description='Product, Service, Item', Help='Identifies an item which is either purchased or sold in this organization.' WHERE AD_Column_ID=5439 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='RMA', IsMandatory='N', IsTranslated='N', Description='Return Material Authorization', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A Return Material Authorization may be required to accept returns and to create Credit Memos', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='M_RMA_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=2412, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13574
;

UPDATE AD_Field SET Name='RMA', Description='Return Material Authorization', Help='A Return Material Authorization may be required to accept returns and to create Credit Memos' WHERE AD_Column_ID=13574 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='R_Request Next Action', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=219
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=219
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=219, Value='N', Name='None', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=420
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=420
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=219, Value='F', Name='Follow up', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=421
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=421
;

UPDATE AD_Column SET Name='Next action', IsMandatory='N', IsTranslated='N', Description='Next Action to be taken', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='F', Help='The Next Action indicates the next action to be taken on this request.', AD_Reference_Value_ID=219, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='NextAction', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=1513, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:07:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5444
;

UPDATE AD_Field SET Name='Next action', Description='Next Action to be taken', Help='The Next Action indicates the next action to be taken on this request.' WHERE AD_Column_ID=5444 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='_PriorityRule', Description='Priority scale list', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=154
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=154
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=154, Value='1', Name='Urgent', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:08:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=759
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=759
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=154, Value='9', Name='Minor', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=760
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=760
;

UPDATE AD_Column SET Name='Priority', IsMandatory='Y', IsTranslated='N', Description='Indicates if this request is of a high, medium or low priority.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='5', Help='The Priority indicates the importance of this request.', AD_Reference_Value_ID=154, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='Priority', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=1514, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:10:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5426
;

UPDATE AD_Field SET Name='Priority', Description='Indicates if this request is of a high, medium or low priority.', Help='The Priority indicates the importance of this request.' WHERE AD_Column_ID=5426 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='User Importance', IsMandatory='N', IsTranslated='N', Description='Priority of the issue for the User', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='5', Help=NULL, AD_Reference_Value_ID=154, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='PriorityUser', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=2708, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13486
;

UPDATE AD_Field SET Name='User Importance', Description='Priority of the issue for the User', Help=NULL WHERE AD_Column_ID=13486 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Processed', IsMandatory='Y', IsTranslated='N', Description='The document has been processed', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Processed checkbox indicates that a document has been processed.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='Processed', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1047, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5447
;

UPDATE AD_Field SET Name='Processed', Description='The document has been processed', Help='The Processed checkbox indicates that a document has been processed.' WHERE AD_Column_ID=5447 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Quantity', Description='Quantity data type', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=29
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=29
;

UPDATE AD_Column SET Name='Quantity Invoiced', IsMandatory='N', IsTranslated='N', Description='Invoiced Quantity', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Invoiced Quantity indicates the quantity of a product that have been invoiced.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='QtyInvoiced', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=29, AD_Val_Rule_ID=NULL, AD_Element_ID=529, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:11:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13496
;

UPDATE AD_Field SET Name='Quantity Invoiced', Description='Invoiced Quantity', Help='The Invoiced Quantity indicates the quantity of a product that have been invoiced.' WHERE AD_Column_ID=13496 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Quantity Plan', IsMandatory='N', IsTranslated='N', Description='Planned Quantity', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Planned Quantity', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='QtyPlan', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=29, AD_Val_Rule_ID=NULL, AD_Element_ID=2900, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14727
;

UPDATE AD_Field SET Name='Quantity Plan', Description='Planned Quantity', Help='Planned Quantity' WHERE AD_Column_ID=14727 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Quantity Used', IsMandatory='N', IsTranslated='N', Description='Quantity used for this event', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='QtySpent', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=29, AD_Val_Rule_ID=NULL, AD_Element_ID=2715, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:12:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13495
;

UPDATE AD_Field SET Name='Quantity Used', Description='Quantity used for this event', Help=NULL WHERE AD_Column_ID=13495 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Category', IsMandatory='N', IsTranslated='N', Description='Request Category', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Category or Topic of the Request ', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='R_Category_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2705, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:12:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13483
;

UPDATE AD_Field SET Name='Category', Description='Request Category', Help='Category or Topic of the Request ' WHERE AD_Column_ID=13483 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Group', IsMandatory='N', IsTranslated='N', Description='Request Group', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Group of requests (e.g. version numbers, responsibility, ...)', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='R_Group_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2704, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13482
;

UPDATE AD_Field SET Name='Group', Description='Request Group', Help='Group of requests (e.g. version numbers, responsibility, ...)' WHERE AD_Column_ID=13482 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Mail Template', IsMandatory='N', IsTranslated='N', Description='Text templates for mailings', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='R_MailText_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=1515, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout='org.compiere.model.CalloutRequest.copyMail', ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5441
;

UPDATE AD_Field SET Name='Mail Template', Description='Text templates for mailings', Help='The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.' WHERE AD_Column_ID=5441 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='T', Name='R_Request', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:13:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=341
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=341
;

UPDATE AD_Ref_Table SET AD_Table_ID = 417, AD_Display = 5423, AD_Key = 5415, isValueDisplayed = 'N', OrderByClause = '', EntityType ='D', WhereClause = '' WHERE AD_Reference_ID = 341
;

UPDATE AD_Column SET Name='Related Request', IsMandatory='N', IsTranslated='N', Description='Related Request (Master Issue, ..)', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Request related to this request', AD_Reference_Value_ID=341, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='R_RequestRelated_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=2710, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:14:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13490
;

UPDATE AD_Field SET Name='Related Request', Description='Related Request (Master Issue, ..)', Help='Request related to this request' WHERE AD_Column_ID=13490 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Request', IsMandatory='Y', IsTranslated='N', Description='Request from a Business Partner or Prospect', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Request identifies a unique request from a Business Partner or Prospect.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='R_Request_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=1516, IsUpdateable='N', IsKey='Y', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:14:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5415
;

UPDATE AD_Field SET Name='Request', Description='Request from a Business Partner or Prospect', Help='The Request identifies a unique request from a Business Partner or Prospect.' WHERE AD_Column_ID=5415 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Resolution', IsMandatory='N', IsTranslated='N', Description='Request Resolution', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Resolution status (e.g. Fixed, Rejected, ..)', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='R_Resolution_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2707, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:14:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13485
;

UPDATE AD_Field SET Name='Resolution', Description='Request Resolution', Help='Resolution status (e.g. Fixed, Rejected, ..)' WHERE AD_Column_ID=13485 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Standard Response', IsMandatory='N', IsTranslated='N', Description='Request Standard Response ', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Text blocks to be copied into request response text', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='R_StandardResponse_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2712, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout='org.compiere.model.CalloutRequest.copyResponse', ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:15:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13492
;

UPDATE AD_Field SET Name='Standard Response', Description='Request Standard Response ', Help='Text blocks to be copied into request response text' WHERE AD_Column_ID=13492 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Val_Rule SET IsActive='Y', Code='EXISTS (SELECT * FROM R_RequestType rt 
INNER JOIN R_StatusCategory sc ON (rt.R_StatusCategory_ID=sc.R_StatusCategory_ID)
WHERE R_Status.R_StatusCategory_ID=sc.R_StatusCategory_ID
AND rt.R_RequestType_ID=@R_RequestType_ID@)', Name='R_Status of Request Type', Description=NULL, Type='S', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:15:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=261
;

UPDATE AD_Column SET Name='Status', IsMandatory='N', IsTranslated='N', Description='Request Status', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Status if the request (open, closed, investigating, ..)', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='R_Status_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=261, AD_Element_ID=2706, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:15:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13484
;

UPDATE AD_Field SET Name='Status', Description='Request Status', Help='Status if the request (open, closed, investigating, ..)' WHERE AD_Column_ID=13484 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Amount', Description='Number with 4 decimals', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=12
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=12
;

UPDATE AD_Column SET Name='Request Amount', IsMandatory='Y', IsTranslated='N', Description='Amount associated with this request', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Request Amount indicates any amount that is associated with this request.  For example, a warranty amount or refund amount.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='RequestAmt', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=12, AD_Val_Rule_ID=NULL, AD_Element_ID=1520, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5425
;

UPDATE AD_Field SET Name='Request Amount', Description='Amount associated with this request', Help='The Request Amount indicates any amount that is associated with this request.  For example, a warranty amount or refund amount.' WHERE AD_Column_ID=5425 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Result', IsMandatory='N', IsTranslated='N', Description='Result of the action taken', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Result indicates the result of any action taken on this request.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='Result', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=14, AD_Val_Rule_ID=NULL, AD_Element_ID=546, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:16:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5443
;

UPDATE AD_Field SET Name='Result', Description='Result of the action taken', Help='The Result indicates the result of any action taken on this request.' WHERE AD_Column_ID=5443 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='T', Name='AD_User - Internal', Description='Employee or SalesRep', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:16:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=286
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=286
;

UPDATE AD_Ref_Table SET AD_Table_ID = 114, AD_Display = 213, AD_Key = 212, isValueDisplayed = 'N', OrderByClause = '', EntityType ='D', WhereClause = 'EXISTS (SELECT * FROM C_BPartner bp WHERE AD_User.C_BPartner_ID=bp.C_BPartner_ID AND (bp.IsEmployee=''Y'' OR bp.IsSalesRep=''Y''))' WHERE AD_Reference_ID = 286
;

UPDATE AD_Column SET Name='Sales Representative', IsMandatory='Y', IsTranslated='N', Description='Sales Representative or Company Agent', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_User_ID@', Help='The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.', AD_Reference_Value_ID=286, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='SalesRep_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=1063, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:16:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5432
;

UPDATE AD_Field SET Name='Sales Representative', Description='Sales Representative or Company Agent', Help='The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.' WHERE AD_Column_ID=5432 AND IsCentrallyMaintained='Y'
;

insert into t_alter_column values('r_request','SalesRep_ID','NUMERIC(10)',null,'NULL')
;

insert into t_alter_column values('r_request','SalesRep_ID',null,'NOT NULL',null)
;

UPDATE AD_Column SET Name='Start Date', IsMandatory='N', IsTranslated='N', Description='First effective day (inclusive)', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Start Date indicates the first or starting date', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='StartDate', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=574, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:17:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13575
;

UPDATE AD_Field SET Name='Start Date', Description='First effective day (inclusive)', Help='The Start Date indicates the first or starting date' WHERE AD_Column_ID=13575 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Start Time', IsMandatory='N', IsTranslated='N', Description='Time started', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='StartTime', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=2713, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:17:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13493
;

UPDATE AD_Field SET Name='Start Time', Description='Time started', Help=NULL WHERE AD_Column_ID=13493 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Summary', IsMandatory='Y', IsTranslated='N', Description='Textual summary of this request', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Summary allows free form text entry of a recap of this request.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='Summary', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=14, AD_Val_Rule_ID=NULL, AD_Element_ID=1521, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5428
;

UPDATE AD_Field SET Name='Summary', Description='Textual summary of this request', Help='The Summary allows free form text entry of a recap of this request.' WHERE AD_Column_ID=5428 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='R_Request TaskStatus', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=366
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=366
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='0', Name=' 0% Not Started', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:18:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=815
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=815
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='D', Name='100% Complete', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:18:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=816
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=816
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='2', Name=' 20% Started', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:18:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=817
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=817
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='8', Name=' 80% Nearly Done', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:18:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=818
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=818
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='4', Name=' 40% Busy', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:18:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=819
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=819
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='6', Name=' 60% Good Progress', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:18:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=820
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=820
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='9', Name=' 90% Finishing', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=821
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=821
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='A', Name=' 95% Almost Done', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:19:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=822
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=822
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=366, Value='C', Name=' 99% Cleaning up', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=823
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=823
;

UPDATE AD_Column SET Name='Task Status', IsMandatory='N', IsTranslated='N', Description='Status of the Task', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Completion Rate and Status of the Task', AD_Reference_Value_ID=366, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='TaskStatus', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=2898, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:19:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=14725
;

UPDATE AD_Field SET Name='Task Status', Description='Status of the Task', Help='Completion Rate and Status of the Task' WHERE AD_Column_ID=14725 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:20:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5421
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=5421 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@#AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5416
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=5416 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:20:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5422
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=5422 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@#AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:21:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5417
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=5417 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Role', IsMandatory='N', IsTranslated='N', Description='Responsibility Role', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='-1', Help='The Role determines security and access a user who has this Role will have in the System.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='AD_Role_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=123, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:21:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13488
;

UPDATE AD_Field SET Name='Role', Description='Responsibility Role', Help='The Role determines security and access a user who has this Role will have in the System.' WHERE AD_Column_ID=13488 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Val_Rule SET IsActive='Y', Code='AD_User.C_BPartner_ID=@C_BPartner_ID@', Name='AD_User BPartner', Description=NULL, Type='S', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:21:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=123
;

UPDATE AD_Column SET Name='User/Contact', IsMandatory='N', IsTranslated='N', Description='User within the system - Internal or Business Partner Contact', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='-1', Help='The User identifies a unique user in the system. This could be an internal user or a business partner contact', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='AD_User_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=123, AD_Element_ID=138, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:21:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5434
;

UPDATE AD_Field SET Name='User/Contact', Description='User within the system - Internal or Business Partner Contact', Help='The User identifies a unique user in the system. This could be an internal user or a business partner contact' WHERE AD_Column_ID=5434 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Activity', IsMandatory='N', IsTranslated='N', Description='Business Activity', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Activities indicate tasks that are performed and used to utilize Activity based Costing', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='C_Activity_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=1005, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:22:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13498
;

UPDATE AD_Field SET Name='Activity', Description='Business Activity', Help='Activities indicate tasks that are performed and used to utilize Activity based Costing' WHERE AD_Column_ID=13498 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Business Partner ', IsMandatory='N', IsTranslated='N', Description='Identifies a Business Partner', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='C_BPartner_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=187, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:22:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5433
;

UPDATE AD_Field SET Name='Business Partner ', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson' WHERE AD_Column_ID=5433 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Campaign', IsMandatory='N', IsTranslated='N', Description='Marketing Campaign', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.', AD_Reference_Value_ID=NULL, Version=1, IsActive='Y', AD_Table_ID=417, ColumnName='C_Campaign_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=550, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:22:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5435
;

UPDATE AD_Field SET Name='Campaign', Description='Marketing Campaign', Help='The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.' WHERE AD_Column_ID=5435 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='T', Name='C_Invoice', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=336
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=336
;

UPDATE AD_Ref_Table SET AD_Table_ID = 318, AD_Display = 3492, AD_Key = 3484, isValueDisplayed = 'N', OrderByClause = 'C_Invoice.DocumentNo', EntityType ='D', WhereClause = '' WHERE AD_Reference_ID = 336
;

UPDATE AD_Column SET Name='Request Invoice', IsMandatory='N', IsTranslated='N', Description='The generated invoice for this request', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The optionally generated invoice for the request', AD_Reference_Value_ID=336, Version=0, IsActive='Y', AD_Table_ID=417, ColumnName='C_InvoiceRequest_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=NULL, AD_Element_ID=2717, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:23:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13499
;

UPDATE AD_Field SET Name='Request Invoice', Description='The generated invoice for this request', Help='The optionally generated invoice for the request' WHERE AD_Column_ID=13499 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Tab SET Description='User Requests with reference to change request', Help=NULL, OrderByClause=NULL, IsTranslationTab='N', Name='Requests (source)', SeqNo=30, AD_Table_ID=417, AD_Window_ID=356, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='N', AD_Column_ID=13952, ImportFields=NULL, Processing='N', TabLevel=2, IsInsertRecord='Y', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:24:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=743
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=743
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Standard Response ', DisplayLength=14, AD_Column_ID=13492, IsFieldOnly='N', Help='Text blocks to be copied into request response text', Name='Standard Response', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12038
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Next Action to be taken', DisplayLength=14, AD_Column_ID=5444, IsFieldOnly='N', Help='The Next Action indicates the next action to be taken on this request.', Name='Next action', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:24:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12036
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='The document has been processed', DisplayLength=1, AD_Column_ID=5447, IsFieldOnly='N', Help='The Processed checkbox indicates that a document has been processed.', Name='Processed', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:24:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12058
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Financial Project', DisplayLength=14, AD_Column_ID=5799, IsFieldOnly='N', Help='A Project allows you to track and control internal or external activities.', Name='Project', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:25:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12037
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='This is a Self-Service entry or this entry can be changed via Self-Service', DisplayLength=1, AD_Column_ID=8774, IsFieldOnly='N', Help='Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.', Name='Self-Service', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:25:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12046
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Asset used internally or by customers', DisplayLength=26, AD_Column_ID=10580, IsFieldOnly='N', Help='An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.', Name='Asset', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:25:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12045
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Date when last alert were sent', DisplayLength=14, AD_Column_ID=12927, IsFieldOnly='N', Help='The last alert date is updated when a reminder email is sent', Name='Last Alert', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:26:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12044
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Database Table information', DisplayLength=14, AD_Column_ID=13078, IsFieldOnly='N', Help='The Database Table provides the information of the table definition', Name='Table', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:26:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12043
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Direct internal record ID', DisplayLength=23, AD_Column_ID=13079, IsFieldOnly='N', Help='The Record ID is the internal unique identifier of a record. Please note that zooming to the record may not be successful for Orders, Invoices and Shipment/Receipts as sometimes the Sales Order type is not known.', Name='Record ID', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:26:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12042
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Responsibility Role', DisplayLength=14, AD_Column_ID=13488, IsFieldOnly='N', Help='The Role determines security and access a user who has this Role will have in the System.', Name='Role', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:26:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12041
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Is this invoiced?', DisplayLength=1, AD_Column_ID=13489, IsFieldOnly='N', Help='If selected, invoices are created', Name='Invoiced', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:27:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12040
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Confidentiality of the individual entry', DisplayLength=14, AD_Column_ID=13491, IsFieldOnly='N', Help=NULL, Name='Entry Confidentiality', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:27:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12039
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12039
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Time started', DisplayLength=20, AD_Column_ID=13493, IsFieldOnly='N', Help=NULL, Name='Start Time', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:28:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12055
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12055
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='End of the time span', DisplayLength=20, AD_Column_ID=13494, IsFieldOnly='N', Help=NULL, Name='End Time', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:28:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12054
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12054
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Quantity used for this event', DisplayLength=26, AD_Column_ID=13495, IsFieldOnly='N', Help=NULL, Name='Quantity Used', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:28:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12053
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12053
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Invoiced Quantity', DisplayLength=26, AD_Column_ID=13496, IsFieldOnly='N', Help='The Invoiced Quantity indicates the quantity of a product that have been invoiced.', Name='Quantity Invoiced', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:28:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12052
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Product/Resource/Service used in Request', DisplayLength=26, AD_Column_ID=13497, IsFieldOnly='N', Help='Invoicing uses the Product used.', Name='Product Used', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:29:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12051
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Business Activity', DisplayLength=14, AD_Column_ID=13498, IsFieldOnly='N', Help='Activities indicate tasks that are performed and used to utilize Activity based Costing', Name='Activity', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:29:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12050
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='The generated invoice for this request', DisplayLength=14, AD_Column_ID=13499, IsFieldOnly='N', Help='The optionally generated invoice for the request', Name='Request Invoice', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:30:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12049
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Material Shipment Document', DisplayLength=26, AD_Column_ID=13573, IsFieldOnly='N', Help='The Material Shipment / Receipt ', Name='Shipment/Receipt', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12048
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Return Material Authorization', DisplayLength=26, AD_Column_ID=13574, IsFieldOnly='N', Help='A Return Material Authorization may be required to accept returns and to create Credit Memos', Name='RMA', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:30:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12047
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='First effective day (inclusive)', DisplayLength=20, AD_Column_ID=13575, IsFieldOnly='N', Help='The Start Date indicates the first or starting date', Name='Start Date', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:31:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12057
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Close Date', DisplayLength=20, AD_Column_ID=13576, IsFieldOnly='N', Help='The Start Date indicates the last or final date', Name='Close Date', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:31:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12056
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=5418, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:33:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12029
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Amount associated with this request', DisplayLength=26, AD_Column_ID=5425, IsFieldOnly='N', Help='The Request Amount indicates any amount that is associated with this request.  For example, a warranty amount or refund amount.', Name='Request Amount', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12030
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Status of the next action for this Request', DisplayLength=14, AD_Column_ID=5427, IsFieldOnly='N', Help='The Due Type indicates if this request is Due, Overdue or Scheduled.', Name='Due type', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:34:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12031
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='This request has been escalated', DisplayLength=1, AD_Column_ID=5429, IsFieldOnly='N', Help='The Escalated checkbox indicates that this request has been escalated or raised in importance.', Name='Escalated', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12032
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Marketing Campaign', DisplayLength=14, AD_Column_ID=5435, IsFieldOnly='N', Help='The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.', Name='Campaign', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12033
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Order', DisplayLength=26, AD_Column_ID=5436, IsFieldOnly='N', Help='The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you cloase an order, unshipped (backordered) quantities are cancelled.', Name='Order', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:37:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12061
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Invoice Identifier', DisplayLength=26, AD_Column_ID=5437, IsFieldOnly='N', Help='The Invoice Document.', Name='Invoice', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:37:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12034
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Payment identifier', DisplayLength=26, AD_Column_ID=5438, IsFieldOnly='N', Help='The Payment is a unique identifier of this payment.', Name='Payment', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:38:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12060
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Text templates for mailings', DisplayLength=14, AD_Column_ID=5441, IsFieldOnly='N', Help='The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.', Name='Mail Template', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12035
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Result of the action taken', DisplayLength=60, AD_Column_ID=5443, IsFieldOnly='N', Help='The Result indicates the result of any action taken on this request.', Name='Result', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:40:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12059
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=5416, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:40:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12062
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=5417, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:41:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12063
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='BOM (Engineering) Change Request', DisplayLength=26, AD_Column_ID=13952, IsFieldOnly='N', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', Name='Change Request', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:42:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12064
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request from a Business Partner or Prospect', DisplayLength=14, AD_Column_ID=5415, IsFieldOnly='N', Help='The Request identifies a unique request from a Business Partner or Prospect.', Name='Request', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=40, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:43:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12065
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Document sequence number of the document', DisplayLength=20, AD_Column_ID=5423, IsFieldOnly='N', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', Name='Document No', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=50, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12066
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Type of request (e.g. Inquiry, Complaint, ..)', DisplayLength=14, AD_Column_ID=7791, IsFieldOnly='N', Help='Request Types are used for processing and categorizing requests. Options are Account Inquiry, Warranty Issue, etc.', Name='Request Type', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=60, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:43:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12067
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Group', DisplayLength=14, AD_Column_ID=13482, IsFieldOnly='N', Help='Group of requests (e.g. version numbers, responsibility, ...)', Name='Group', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=70, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:44:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12068
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Category', DisplayLength=14, AD_Column_ID=13483, IsFieldOnly='N', Help='Category or Topic of the Request ', Name='Category', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:44:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12069
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Related Request (Master Issue, ..)', DisplayLength=14, AD_Column_ID=13490, IsFieldOnly='N', Help='Request related to this request', Name='Related Request', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=90, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:44:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12070
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Status', DisplayLength=14, AD_Column_ID=13484, IsFieldOnly='N', Help='Status if the request (open, closed, investigating, ..)', Name='Status', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=100, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12071
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Resolution', DisplayLength=14, AD_Column_ID=13485, IsFieldOnly='N', Help='Resolution status (e.g. Fixed, Rejected, ..)', Name='Resolution', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=110, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:45:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12072
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Indicates if this request is of a high, medium or low priority.', DisplayLength=14, AD_Column_ID=5426, IsFieldOnly='N', Help='The Priority indicates the importance of this request.', Name='Priority', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=120, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:45:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12073
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Priority of the issue for the User', DisplayLength=14, AD_Column_ID=13486, IsFieldOnly='N', Help=NULL, Name='User Importance', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=130, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12074
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12074
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Textual summary of this request', DisplayLength=60, AD_Column_ID=5428, IsFieldOnly='N', Help='The Summary allows free form text entry of a recap of this request.', Name='Summary', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=140, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12075
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Sales Representative or Company Agent', DisplayLength=14, AD_Column_ID=5432, IsFieldOnly='N', Help='The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.', Name='Sales Representative', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=150, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12076
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Type of Confidentiality', DisplayLength=14, AD_Column_ID=13487, IsFieldOnly='N', Help=NULL, Name='Confidentiality', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=160, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:48:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12077
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12077
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Identifies a Business Partner', DisplayLength=26, AD_Column_ID=5433, IsFieldOnly='N', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', Name='Business Partner ', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=170, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:49:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12078
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='User within the system - Internal or Business Partner Contact', DisplayLength=14, AD_Column_ID=5434, IsFieldOnly='N', Help='The User identifies a unique user in the system. This could be an internal user or a business partner contact', Name='User/Contact', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=180, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:50:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12079
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Date this request was last acted on', DisplayLength=20, AD_Column_ID=5430, IsFieldOnly='N', Help='The Date Last Action indicates that last time that the request was acted on.', Name='Date last action', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=190, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12080
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Date that this request should be acted on', DisplayLength=20, AD_Column_ID=5445, IsFieldOnly='N', Help='The Date Next Action indicates the next scheduled date for an action to occur for this request.', Name='Date next action', AD_Tab_ID=743, IsSameLine='Y', IsHeading='N', SeqNo=200, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12081
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Result of last contact', DisplayLength=60, AD_Column_ID=5431, IsFieldOnly='N', Help='The Last Result identifies the result of the last contact made.', Name='Last Result', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=210, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:52:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12082
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Product, Service, Item', DisplayLength=26, AD_Column_ID=5439, IsFieldOnly='N', Help='Identifies an item which is either purchased or sold in this organization.', Name='Product', AD_Tab_ID=743, IsSameLine='N', IsHeading='N', SeqNo=220, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:53:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12083
;

UPDATE AD_Tab SET Description='Fixed Change Requests of this Change Notice', Help=NULL, OrderByClause=NULL, IsTranslationTab='N', Name='Fixed Change Requests', SeqNo=40, AD_Table_ID=800, AD_Window_ID=356, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='Y', AD_Column_ID=14001, ImportFields=NULL, Processing='N', TabLevel=1, IsInsertRecord='N', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:54:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=744
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=744
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Fixed in Change Notice', DisplayLength=10, AD_Column_ID=14001, IsFieldOnly='N', Help=NULL, Name='Fixed in', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12085
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12085
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=13938, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:56:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12086
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=13939, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=744, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:57:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12087
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Materials (Engineering) Change Notice (Version)', DisplayLength=14, AD_Column_ID=13946, IsFieldOnly='N', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', Name='Change Notice', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12088
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Document sequence number of the document', DisplayLength=20, AD_Column_ID=13947, IsFieldOnly='N', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', Name='Document No', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=40, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:58:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12089
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='BOM (Engineering) Change Request', DisplayLength=14, AD_Column_ID=13937, IsFieldOnly='N', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', Name='Change Request', AD_Tab_ID=744, IsSameLine='Y', IsHeading='N', SeqNo=50, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:58:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12091
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Material', DisplayLength=14, AD_Column_ID=13945, IsFieldOnly='N', Help='The composition of the Product', Name='BOM', AD_Tab_ID=744, IsSameLine='Y', IsHeading='N', SeqNo=60, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:58:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12090
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Alphanumeric identifier of the entity', DisplayLength=60, AD_Column_ID=13948, IsFieldOnly='N', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', Name='Name', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=70, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:59:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12092
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Optional short description of the record', DisplayLength=60, AD_Column_ID=13949, IsFieldOnly='N', Help='A description is limited to 255 characters.', Name='Description', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:59:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12093
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Comment or Hint', DisplayLength=60, AD_Column_ID=13950, IsFieldOnly='N', Help='The Help field contains a hint, comment or help about the use of this item.', Name='Comment/Help', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=90, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-16 23:59:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12094
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=13940, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=100, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:00:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12095
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Additional Detail Information', DisplayLength=60, AD_Column_ID=13951, IsFieldOnly='N', Help=NULL, Name='Detail Information', AD_Tab_ID=744, IsSameLine='N', IsHeading='N', SeqNo=110, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:00:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12096
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12096
;

UPDATE AD_Window SET IsActive='Y', Name='BOM Change Notice', WindowType='M', Help='Change notices can be linked to BOMs or be stand alone.', Description='Maintain Bill of Materials (Engineering) Change Notice (Version)', IsSOTrx='Y', IsDefault='N', Processing='N', IsBetaFunctionality='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=355
;

UPDATE AD_Tab SET Description='Fixed Change Request of this Change Notice', Help=NULL, OrderByClause=NULL, IsTranslationTab='N', Name='Fixed Change Requests', SeqNo=50, AD_Table_ID=800, AD_Window_ID=355, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='Y', AD_Column_ID=14001, ImportFields=NULL, Processing='N', TabLevel=1, IsInsertRecord='N', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:01:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=736
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=736
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Fixed in Change Notice', DisplayLength=10, AD_Column_ID=14001, IsFieldOnly='N', Help=NULL, Name='Fixed in', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:01:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12084
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12084
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=13938, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:02:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11872
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=13939, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=736, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:02:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11877
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Materials (Engineering) Change Notice (Version)', DisplayLength=14, AD_Column_ID=13946, IsFieldOnly='N', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', Name='Change Notice', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:02:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11870
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Document sequence number of the document', DisplayLength=20, AD_Column_ID=13947, IsFieldOnly='N', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', Name='Document No', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=40, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:03:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11875
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Material', DisplayLength=14, AD_Column_ID=13945, IsFieldOnly='N', Help='The composition of the Product', Name='BOM', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=50, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:03:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11869
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='BOM (Engineering) Change Request', DisplayLength=14, AD_Column_ID=13937, IsFieldOnly='N', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', Name='Change Request', AD_Tab_ID=736, IsSameLine='Y', IsHeading='N', SeqNo=60, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:03:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11871
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Alphanumeric identifier of the entity', DisplayLength=60, AD_Column_ID=13948, IsFieldOnly='N', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', Name='Name', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=70, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:04:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11876
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Optional short description of the record', DisplayLength=60, AD_Column_ID=13949, IsFieldOnly='N', Help='A description is limited to 255 characters.', Name='Description', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:04:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11874
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Comment or Hint', DisplayLength=60, AD_Column_ID=13950, IsFieldOnly='N', Help='The Help field contains a hint, comment or help about the use of this item.', Name='Comment/Help', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=90, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:04:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11873
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=13940, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=100, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:05:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11868
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Additional Detail Information', DisplayLength=60, AD_Column_ID=13951, IsFieldOnly='N', Help=NULL, Name='Detail Information', AD_Tab_ID=736, IsSameLine='N', IsHeading='N', SeqNo=110, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:07:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11878
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11878
;

UPDATE AD_Tab SET Description='User Requests with reference to change request', Help=NULL, OrderByClause=NULL, IsTranslationTab='N', Name='Requests (source)', SeqNo=40, AD_Table_ID=417, AD_Window_ID=355, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='N', AD_Column_ID=13952, ImportFields=NULL, Processing='N', TabLevel=3, IsInsertRecord='Y', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:10:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=737
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=737
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Standard Response ', DisplayLength=14, AD_Column_ID=13492, IsFieldOnly='N', Help='Text blocks to be copied into request response text', Name='Standard Response', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:10:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11929
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Next Action to be taken', DisplayLength=14, AD_Column_ID=5444, IsFieldOnly='N', Help='The Next Action indicates the next action to be taken on this request.', Name='Next action', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:11:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11906
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='The document has been processed', DisplayLength=1, AD_Column_ID=5447, IsFieldOnly='N', Help='The Processed checkbox indicates that a document has been processed.', Name='Processed', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:14:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11912
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Financial Project', DisplayLength=14, AD_Column_ID=5799, IsFieldOnly='N', Help='A Project allows you to track and control internal or external activities.', Name='Project', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:15:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11915
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='This is a Self-Service entry or this entry can be changed via Self-Service', DisplayLength=1, AD_Column_ID=8774, IsFieldOnly='N', Help='Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.', Name='Self-Service', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:18:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11927
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Asset used internally or by customers', DisplayLength=26, AD_Column_ID=10580, IsFieldOnly='N', Help='An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.', Name='Asset', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11882
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Date when last alert were sent', DisplayLength=14, AD_Column_ID=12927, IsFieldOnly='N', Help='The last alert date is updated when a reminder email is sent', Name='Last Alert', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:23:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11902
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Database Table information', DisplayLength=14, AD_Column_ID=13078, IsFieldOnly='N', Help='The Database Table provides the information of the table definition', Name='Table', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:24:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11934
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Direct internal record ID', DisplayLength=23, AD_Column_ID=13079, IsFieldOnly='N', Help='The Record ID is the internal unique identifier of a record. Please note that zooming to the record may not be successful for Orders, Invoices and Shipment/Receipts as sometimes the Sales Order type is not known.', Name='Record ID', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:26:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11918
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Responsibility Role', DisplayLength=14, AD_Column_ID=13488, IsFieldOnly='N', Help='The Role determines security and access a user who has this Role will have in the System.', Name='Role', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:29:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11925
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Is this invoiced?', DisplayLength=1, AD_Column_ID=13489, IsFieldOnly='N', Help='If selected, invoices are created', Name='Invoiced', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:31:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11900
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Confidentiality of the individual entry', DisplayLength=14, AD_Column_ID=13491, IsFieldOnly='N', Help=NULL, Name='Entry Confidentiality', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:33:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11895
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11895
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Time started', DisplayLength=20, AD_Column_ID=13493, IsFieldOnly='N', Help=NULL, Name='Start Time', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11931
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11931
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='End of the time span', DisplayLength=20, AD_Column_ID=13494, IsFieldOnly='N', Help=NULL, Name='End Time', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:38:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11894
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11894
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Quantity used for this event', DisplayLength=26, AD_Column_ID=13495, IsFieldOnly='N', Help=NULL, Name='Quantity Used', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:40:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11916
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11916
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Invoiced Quantity', DisplayLength=26, AD_Column_ID=13496, IsFieldOnly='N', Help='The Invoiced Quantity indicates the quantity of a product that have been invoiced.', Name='Quantity Invoiced', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:42:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11901
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Product/Resource/Service used in Request', DisplayLength=26, AD_Column_ID=13497, IsFieldOnly='N', Help='Invoicing uses the Product used.', Name='Product Used', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:45:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11914
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Business Activity', DisplayLength=14, AD_Column_ID=13498, IsFieldOnly='N', Help='Activities indicate tasks that are performed and used to utilize Activity based Costing', Name='Activity', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11881
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='The generated invoice for this request', DisplayLength=14, AD_Column_ID=13499, IsFieldOnly='N', Help='The optionally generated invoice for the request', Name='Request Invoice', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11899
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Material Shipment Document', DisplayLength=26, AD_Column_ID=13573, IsFieldOnly='N', Help='The Material Shipment / Receipt ', Name='Shipment/Receipt', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:48:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11928
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Return Material Authorization', DisplayLength=26, AD_Column_ID=13574, IsFieldOnly='N', Help='A Return Material Authorization may be required to accept returns and to create Credit Memos', Name='RMA', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:48:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11917
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='First effective day (inclusive)', DisplayLength=20, AD_Column_ID=13575, IsFieldOnly='N', Help='The Start Date indicates the first or starting date', Name='Start Date', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:49:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11930
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Close Date', DisplayLength=20, AD_Column_ID=13576, IsFieldOnly='N', Help='The Start Date indicates the last or final date', Name='Close Date', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11888
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=5418, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:49:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11880
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Amount associated with this request', DisplayLength=26, AD_Column_ID=5425, IsFieldOnly='N', Help='The Request Amount indicates any amount that is associated with this request.  For example, a warranty amount or refund amount.', Name='Request Amount', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11921
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Status of the next action for this Request', DisplayLength=14, AD_Column_ID=5427, IsFieldOnly='N', Help='The Due Type indicates if this request is Due, Overdue or Scheduled.', Name='Due type', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:50:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11893
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='This request has been escalated', DisplayLength=1, AD_Column_ID=5429, IsFieldOnly='N', Help='The Escalated checkbox indicates that this request has been escalated or raised in importance.', Name='Escalated', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:51:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11896
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Marketing Campaign', DisplayLength=14, AD_Column_ID=5435, IsFieldOnly='N', Help='The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.', Name='Campaign', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:51:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11884
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Order', DisplayLength=26, AD_Column_ID=5436, IsFieldOnly='N', Help='The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you cloase an order, unshipped (backordered) quantities are cancelled.', Name='Order', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:52:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11907
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Invoice Identifier', DisplayLength=26, AD_Column_ID=5437, IsFieldOnly='N', Help='The Invoice Document.', Name='Invoice', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:52:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11898
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Payment identifier', DisplayLength=26, AD_Column_ID=5438, IsFieldOnly='N', Help='The Payment is a unique identifier of this payment.', Name='Payment', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:52:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11909
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Text templates for mailings', DisplayLength=14, AD_Column_ID=5441, IsFieldOnly='N', Help='The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.', Name='Mail Template', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:53:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11905
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Result of the action taken', DisplayLength=60, AD_Column_ID=5443, IsFieldOnly='N', Help='The Result indicates the result of any action taken on this request.', Name='Result', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:53:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11924
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=5416, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:53:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11887
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=5417, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:54:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11908
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='BOM (Engineering) Change Request', DisplayLength=26, AD_Column_ID=13952, IsFieldOnly='N', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', Name='Change Request', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:54:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11886
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request from a Business Partner or Prospect', DisplayLength=14, AD_Column_ID=5415, IsFieldOnly='N', Help='The Request identifies a unique request from a Business Partner or Prospect.', Name='Request', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=40, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:54:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11920
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Document sequence number of the document', DisplayLength=20, AD_Column_ID=5423, IsFieldOnly='N', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', Name='Document No', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=50, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11892
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Type of request (e.g. Inquiry, Complaint, ..)', DisplayLength=14, AD_Column_ID=7791, IsFieldOnly='N', Help='Request Types are used for processing and categorizing requests. Options are Account Inquiry, Warranty Issue, etc.', Name='Request Type', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=60, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:55:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11922
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Group', DisplayLength=14, AD_Column_ID=13482, IsFieldOnly='N', Help='Group of requests (e.g. version numbers, responsibility, ...)', Name='Group', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=70, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:55:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11897
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Category', DisplayLength=14, AD_Column_ID=13483, IsFieldOnly='N', Help='Category or Topic of the Request ', Name='Category', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11885
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Related Request (Master Issue, ..)', DisplayLength=14, AD_Column_ID=13490, IsFieldOnly='N', Help='Request related to this request', Name='Related Request', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=90, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:56:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11919
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Status', DisplayLength=14, AD_Column_ID=13484, IsFieldOnly='N', Help='Status if the request (open, closed, investigating, ..)', Name='Status', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=100, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:57:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11932
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Request Resolution', DisplayLength=14, AD_Column_ID=13485, IsFieldOnly='N', Help='Resolution status (e.g. Fixed, Rejected, ..)', Name='Resolution', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=110, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:57:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11923
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Indicates if this request is of a high, medium or low priority.', DisplayLength=14, AD_Column_ID=5426, IsFieldOnly='N', Help='The Priority indicates the importance of this request.', Name='Priority', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=120, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:57:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11910
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Priority of the issue for the User', DisplayLength=14, AD_Column_ID=13486, IsFieldOnly='N', Help=NULL, Name='User Importance', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=130, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11935
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11935
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Textual summary of this request', DisplayLength=60, AD_Column_ID=5428, IsFieldOnly='N', Help='The Summary allows free form text entry of a recap of this request.', Name='Summary', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=140, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:58:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11933
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Sales Representative or Company Agent', DisplayLength=14, AD_Column_ID=5432, IsFieldOnly='N', Help='The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.', Name='Sales Representative', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=150, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:58:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11926
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Type of Confidentiality', DisplayLength=14, AD_Column_ID=13487, IsFieldOnly='N', Help=NULL, Name='Confidentiality', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=160, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:58:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11889
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11889
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Identifies a Business Partner', DisplayLength=26, AD_Column_ID=5433, IsFieldOnly='N', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', Name='Business Partner ', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=170, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:59:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11883
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='User within the system - Internal or Business Partner Contact', DisplayLength=14, AD_Column_ID=5434, IsFieldOnly='N', Help='The User identifies a unique user in the system. This could be an internal user or a business partner contact', Name='User/Contact', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=180, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:59:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11936
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Date this request was last acted on', DisplayLength=20, AD_Column_ID=5430, IsFieldOnly='N', Help='The Date Last Action indicates that last time that the request was acted on.', Name='Date last action', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=190, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 00:59:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11890
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Date that this request should be acted on', DisplayLength=20, AD_Column_ID=5445, IsFieldOnly='N', Help='The Date Next Action indicates the next scheduled date for an action to occur for this request.', Name='Date next action', AD_Tab_ID=737, IsSameLine='Y', IsHeading='N', SeqNo=200, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:00:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11891
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Result of last contact', DisplayLength=60, AD_Column_ID=5431, IsFieldOnly='N', Help='The Last Result identifies the result of the last contact made.', Name='Last Result', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=210, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11903
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Product, Service, Item', DisplayLength=26, AD_Column_ID=5439, IsFieldOnly='N', Help='Identifies an item which is either purchased or sold in this organization.', Name='Product', AD_Tab_ID=737, IsSameLine='N', IsHeading='N', SeqNo=220, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:01:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11913
;

UPDATE AD_Tab SET Description='Bill of Materials (Engineering) Change Notice (Version)', Help=NULL, OrderByClause=NULL, IsTranslationTab='N', Name='Change Notice', SeqNo=10, AD_Table_ID=799, AD_Window_ID=355, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='N', ImportFields=NULL, Processing='N', TabLevel=0, IsInsertRecord='Y', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=733
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=733
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Materials (Engineering) Change Notice (Version)', DisplayLength=14, AD_Column_ID=13924, IsFieldOnly='N', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', Name='Change Notice', AD_Tab_ID=733, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:01:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11938
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=13925, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=733, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11939
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=13926, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=733, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:02:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11943
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Alphanumeric identifier of the entity', DisplayLength=60, AD_Column_ID=13932, IsFieldOnly='N', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', Name='Name', AD_Tab_ID=733, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:02:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11942
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Optional short description of the record', DisplayLength=60, AD_Column_ID=13933, IsFieldOnly='N', Help='A description is limited to 255 characters.', Name='Description', AD_Tab_ID=733, IsSameLine='N', IsHeading='N', SeqNo=40, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:03:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11941
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Comment or Hint', DisplayLength=60, AD_Column_ID=13934, IsFieldOnly='N', Help='The Help field contains a hint, comment or help about the use of this item.', Name='Comment/Help', AD_Tab_ID=733, IsSameLine='N', IsHeading='N', SeqNo=50, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11940
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=13927, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=733, IsSameLine='N', IsHeading='N', SeqNo=60, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:06:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11937
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Additional Detail Information', DisplayLength=60, AD_Column_ID=13935, IsFieldOnly='N', Help=NULL, Name='Detail Information', AD_Tab_ID=733, IsSameLine='N', IsHeading='N', SeqNo=70, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:07:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11944
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11944
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description=NULL, DisplayLength=23, AD_Column_ID=13936, IsFieldOnly='N', Help=NULL, Name='Process Now', AD_Tab_ID=733, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:08:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11945
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11945
;

UPDATE AD_Table SET Name='BOM', AccessLevel='3', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=354, IsDeleteable='Y', TableName='M_BOM', Description='Bill of Material', IsHighVolume='N', ImportTable='N', IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:08:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=798
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:09:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13920
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=13920 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='AD_Org_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13910
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=13910 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='M_BOM Type', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:10:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=347
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=347
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=347, Value='A', Name='Current Active', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:10:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=742
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=742
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=347, Value='O', Name='Make-To-Order', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:10:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=743
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=743
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=347, Value='P', Name='Previous', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=744
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=744
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=347, Value='S', Name='Previous, Spare', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:11:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=745
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=745
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=347, Value='F', Name='Future', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=746
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=746
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=347, Value='M', Name='Maintenance', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:11:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=747
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=747
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=347, Value='R', Name='Repair', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:11:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=748
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=748
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 01:11:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:11:49','YYYY-MM-DD HH24:MI:SS'),0,0,53242,347,'C','Product Configure','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53242 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

UPDATE AD_Column SET Name='BOM Type', IsMandatory='Y', IsTranslated='N', Description='Type of BOM', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='A', Help='The type of Bills of Materials determines the state', AD_Reference_Value_ID=347, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='BOMType', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=2030, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:12:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13918
;

UPDATE AD_Field SET Name='BOM Type', Description='Type of BOM', Help='The type of Bills of Materials determines the state' WHERE AD_Column_ID=13918 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='M_BOM Use', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:12:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=348
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=348
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=348, Value='A', Name='Master', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=749
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=749
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=348, Value='E', Name='Engineering', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:12:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=750
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=750
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=348, Value='M', Name='Manufacturing', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=751
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=751
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=348, Value='P', Name='Planning', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:13:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=752
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=752
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 01:13:05','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:13:05','YYYY-MM-DD HH24:MI:SS'),0,0,53243,348,'Q','Quality','Y',0,'D')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53243 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

UPDATE AD_Column SET Name='BOM Use', IsMandatory='Y', IsTranslated='N', Description='The use of the Bill of Material', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='A', Help='By default the Master BOM is used, if the alternatives are not defined', AD_Reference_Value_ID=348, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='BOMUse', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=2784, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13919
;

UPDATE AD_Field SET Name='BOM Use', Description='The use of the Bill of Material', Help='By default the Master BOM is used, if the alternatives are not defined' WHERE AD_Column_ID=13919 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:13:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13912
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=13912 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='CreatedBy', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:14:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13913
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=13913 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:14:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13921
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=13921 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Comment/Help', IsMandatory='N', IsTranslated='N', Description='Comment or Hint', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Help field contains a hint, comment or help about the use of this item.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='Help', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=14, AD_Val_Rule_ID=NULL, AD_Element_ID=326, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13922
;

UPDATE AD_Field SET Name='Comment/Help', Description='Comment or Hint', Help='The Help field contains a hint, comment or help about the use of this item.' WHERE AD_Column_ID=13922 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:15:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13911
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=13911 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='BOM', IsMandatory='Y', IsTranslated='N', Description='Bill of Material', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The composition of the Product', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='M_BOM_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=2782, IsUpdateable='N', IsKey='Y', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:15:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13908
;

UPDATE AD_Field SET Name='BOM', Description='Bill of Material', Help='The composition of the Product' WHERE AD_Column_ID=13908 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Change Notice', IsMandatory='N', IsTranslated='N', Description='Bill of Materials (Engineering) Change Notice (Version)', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='M_ChangeNotice_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2783, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:16:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13917
;

UPDATE AD_Field SET Name='Change Notice', Description='Bill of Materials (Engineering) Change Notice (Version)', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.' WHERE AD_Column_ID=13917 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Product', IsMandatory='Y', IsTranslated='N', Description='Product, Service, Item', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Identifies an item which is either purchased or sold in this organization.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='M_Product_ID', FieldLength=10, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=30, AD_Val_Rule_ID=231, AD_Element_ID=454, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:16:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13916
;

UPDATE AD_Field SET Name='Product', Description='Product, Service, Item', Help='Identifies an item which is either purchased or sold in this organization.' WHERE AD_Column_ID=13916 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Process Now', IsMandatory='N', IsTranslated='N', Description=NULL, IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='Processing', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=28, AD_Val_Rule_ID=NULL, AD_Element_ID=524, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:17:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13923
;

UPDATE AD_Field SET Name='Process Now', Description=NULL, Help=NULL WHERE AD_Column_ID=13923 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:17:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13914
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=13914 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='AD_Client_ID', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13909
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=13909 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=798, ColumnName='UpdatedBy', FieldLength=10, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:18:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=13915
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=13915 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Tab SET Description='Bill of Material of Change Notice', Help=NULL, OrderByClause=NULL, IsTranslationTab='N', Name='BOM', SeqNo=20, AD_Table_ID=798, AD_Window_ID=355, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='Y', AD_Column_ID=13917, ImportFields=NULL, Processing='N', TabLevel=1, IsInsertRecord='N', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=734
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=734
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description=NULL, DisplayLength=23, AD_Column_ID=13923, IsFieldOnly='N', Help=NULL, Name='Process Now', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:19:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11855
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11855
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=13909, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:19:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11849
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=13910, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=734, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11854
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Materials (Engineering) Change Notice (Version)', DisplayLength=14, AD_Column_ID=13917, IsFieldOnly='N', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', Name='Change Notice', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:20:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11848
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Product, Service, Item', DisplayLength=14, AD_Column_ID=13916, IsFieldOnly='N', Help='Identifies an item which is either purchased or sold in this organization.', Name='Product', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=40, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11856
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Material', DisplayLength=14, AD_Column_ID=13908, IsFieldOnly='N', Help='The composition of the Product', Name='BOM', AD_Tab_ID=734, IsSameLine='Y', IsHeading='N', SeqNo=50, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11852
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Alphanumeric identifier of the entity', DisplayLength=60, AD_Column_ID=13920, IsFieldOnly='N', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', Name='Name', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=60, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:20:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11853
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Optional short description of the record', DisplayLength=60, AD_Column_ID=13921, IsFieldOnly='N', Help='A description is limited to 255 characters.', Name='Description', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=70, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11851
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Comment or Hint', DisplayLength=60, AD_Column_ID=13922, IsFieldOnly='N', Help='The Help field contains a hint, comment or help about the use of this item.', Name='Comment/Help', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:21:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11850
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=13911, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=90, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:21:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11845
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Type of BOM', DisplayLength=14, AD_Column_ID=13918, IsFieldOnly='N', Help='The type of Bills of Materials determines the state', Name='BOM Type', AD_Tab_ID=734, IsSameLine='N', IsHeading='N', SeqNo=100, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:21:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11846
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The use of the Bill of Material', DisplayLength=14, AD_Column_ID=13919, IsFieldOnly='N', Help='By default the Master BOM is used, if the alternatives are not defined', Name='BOM Use', AD_Tab_ID=734, IsSameLine='Y', IsHeading='N', SeqNo=110, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:22:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11847
;

UPDATE AD_Tab SET Description='BOM (Engineering) Change Requests', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', OrderByClause=NULL, IsTranslationTab='N', Name='BOM Change Request', SeqNo=30, AD_Table_ID=800, AD_Window_ID=355, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='N', AD_Column_ID=13945, ImportFields=NULL, Processing='N', TabLevel=2, IsInsertRecord='Y', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=735
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=735
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description='BOM (Engineering) Change Request', DisplayLength=14, AD_Column_ID=13937, IsFieldOnly='N', Help='Change requests for a Bill of Materials. They can be automatically created from Requests, if enabled in the Request Type and the Request Group referres to a Bill of Materials', Name='Change Request', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=0, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:22:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11860
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=13938, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:23:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11861
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=13939, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=735, IsSameLine='Y', IsHeading='N', SeqNo=20, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:23:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11866
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Material', DisplayLength=14, AD_Column_ID=13945, IsFieldOnly='N', Help='The composition of the Product', Name='BOM', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:23:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11858
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Bill of Materials (Engineering) Change Notice (Version)', DisplayLength=14, AD_Column_ID=13946, IsFieldOnly='N', Help='Engineering Change Document number you can track the modifications made to the BOM. The sequence of the ECD is allocated by the system using the Sequence entered for this Document Type.', Name='Change Notice', AD_Tab_ID=735, IsSameLine='Y', IsHeading='N', SeqNo=40, IsReadOnly='Y', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:23:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11859
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Document sequence number of the document', DisplayLength=20, AD_Column_ID=13947, IsFieldOnly='N', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', Name='Document No', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=50, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:24:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11864
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Alphanumeric identifier of the entity', DisplayLength=60, AD_Column_ID=13948, IsFieldOnly='N', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', Name='Name', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=60, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:24:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11865
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Optional short description of the record', DisplayLength=60, AD_Column_ID=13949, IsFieldOnly='N', Help='A description is limited to 255 characters.', Name='Description', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=70, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11863
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Comment or Hint', DisplayLength=60, AD_Column_ID=13950, IsFieldOnly='N', Help='The Help field contains a hint, comment or help about the use of this item.', Name='Comment/Help', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:25:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11862
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=13940, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=90, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:25:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11857
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Additional Detail Information', DisplayLength=60, AD_Column_ID=13951, IsFieldOnly='N', Help=NULL, Name='Detail Information', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=100, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:25:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=11867
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=11867
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Fixed in Change Notice', DisplayLength=10, AD_Column_ID=14001, IsFieldOnly='N', Help=NULL, Name='Fixed in', AD_Tab_ID=735, IsSameLine='N', IsHeading='N', SeqNo=110, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:25:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=12007
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=12007
;

INSERT INTO AD_Window (IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Window_ID,WindowType,Help,AD_Client_ID,AD_Org_ID,Description,IsSOTrx,IsDefault,Processing,IsBetaFunctionality,EntityType) VALUES ('Y',TO_TIMESTAMP('2007-12-17 01:26:00','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:26:00','YYYY-MM-DD HH24:MI:SS'),0,'Manufacturing Resource',53004,'M','A Manufacturing Resource is defined as anything required for production and its unavailability can affect the Production Plan. Manufacturing Resources can be: Plants, Production lines, Work Centers and Work Stations.

It mainly answers the question: Where is the product made?

A Specific production facility consisting of one or more people and/or machines which can be considered as one unit for purposes of capacity requiremets planning and detailed scheduling.',0,0,'Manufacturing Resource','N','N','N','N','EE01')
;

INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53004 AND EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Window_ID!=t.AD_Window_ID)
;

INSERT INTO AD_Window_Access (Updated,UpdatedBy,CreatedBy,Created,AD_Window_ID,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (TO_TIMESTAMP('2007-12-17 01:26:01','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2007-12-17 01:26:01','YYYY-MM-DD HH24:MI:SS'),53004,'Y',0,0,0)
;

INSERT INTO AD_Window_Access (Updated,UpdatedBy,CreatedBy,Created,AD_Window_ID,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (TO_TIMESTAMP('2007-12-17 01:26:01','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2007-12-17 01:26:01','YYYY-MM-DD HH24:MI:SS'),53004,'Y',0,0,102)
;

INSERT INTO AD_Window_Access (Updated,UpdatedBy,CreatedBy,Created,AD_Window_ID,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (TO_TIMESTAMP('2007-12-17 01:26:01','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2007-12-17 01:26:01','YYYY-MM-DD HH24:MI:SS'),53004,'Y',0,0,103)
;

INSERT INTO AD_Window_Access (Updated,UpdatedBy,CreatedBy,Created,AD_Window_ID,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (TO_TIMESTAMP('2007-12-17 01:26:01','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2007-12-17 01:26:01','YYYY-MM-DD HH24:MI:SS'),53004,'Y',0,0,50001)
;

UPDATE AD_Table SET Name='Resource', AccessLevel='3', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=236, IsDeleteable='Y', TableName='S_Resource', Description='Resource', IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:26:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=487
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@#AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:26:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6861
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=6861 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@#AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6860
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=6860 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='User/Contact', IsMandatory='N', IsTranslated='N', Description='User within the system - Internal or Business Partner Contact', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The User identifies a unique user in the system. This could be an internal user or a business partner contact', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='AD_User_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=164, AD_Element_ID=138, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:27:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8839
;

UPDATE AD_Field SET Name='User/Contact', Description='User within the system - Internal or Business Partner Contact', Help='The User identifies a unique user in the system. This could be an internal user or a business partner contact' WHERE AD_Column_ID=8839 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Chargeable Quantity', IsMandatory='N', IsTranslated='N', Description=NULL, IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='ChargeableQty', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=29, AD_Val_Rule_ID=NULL, AD_Element_ID=2076, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:28:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8840
;

UPDATE AD_Field SET Name='Chargeable Quantity', Description=NULL, Help=NULL WHERE AD_Column_ID=8840 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:28:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6858
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=6858 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:28:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6857
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=6857 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Available', IsMandatory='Y', IsTranslated='N', Description='Resource is available', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='Resource is available for assignments', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='IsAvailable', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1762, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:29:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6849
;

UPDATE AD_Field SET Name='Available', Description='Resource is available', Help='Resource is available for assignments' WHERE AD_Column_ID=6849 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Warehouse', IsMandatory='Y', IsTranslated='N', Description='Storage Warehouse and Service Point', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Warehouse identifies a unique Warehouse where products are stored or Services are provided.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='M_Warehouse_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=459, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:29:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6850
;

UPDATE AD_Field SET Name='Warehouse', Description='Storage Warehouse and Service Point', Help='The Warehouse identifies a unique Warehouse where products are stored or Services are provided.' WHERE AD_Column_ID=6850 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Resource Type', IsMandatory='Y', IsTranslated='N', Description=NULL, IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='S_ResourceType_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=1779, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:29:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6851
;

UPDATE AD_Field SET Name='Resource Type', Description=NULL, Help=NULL WHERE AD_Column_ID=6851 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Resource', IsMandatory='Y', IsTranslated='N', Description='Resource', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='S_Resource_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=1777, IsUpdateable='N', IsKey='Y', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:30:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6862
;

UPDATE AD_Field SET Name='Resource', Description='Resource', Help=NULL WHERE AD_Column_ID=6862 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:31:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6856
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=6856 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:31:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6855
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=6855 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Search Key', IsMandatory='Y', IsTranslated='N', Description='Search key for the record in the format required - must be unique', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='Value', FieldLength=40, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=620, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:32:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6854
;

UPDATE AD_Field SET Name='Search Key', Description='Search key for the record in the format required - must be unique', Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).' WHERE AD_Column_ID=6854 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:32:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6852
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=6852 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:32:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6859
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=6859 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=487, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:33:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6853
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=6853 AND IsCentrallyMaintained='Y'
;

INSERT INTO AD_Element (AD_Element_ID,Name,ColumnName,AD_Client_ID,AD_Org_ID,UpdatedBy,CreatedBy,PrintName,Created,Updated,IsActive,EntityType) VALUES (53230,'PercentUtilization','PercentUtilization',0,0,0,0,'PercentUtilization',TO_TIMESTAMP('2007-12-17 01:33:26','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2007-12-17 01:33:26','YYYY-MM-DD HH24:MI:SS'),'Y','EE01')
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53230 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,IsIdentifier,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('PercentUtilization','N','N','N',0,'Y',487,53272,'PercentUtilization',0,0,10,'N',TO_TIMESTAMP('2007-12-17 01:33:26','YYYY-MM-DD HH24:MI:SS'),'Y',29,0,TO_TIMESTAMP('2007-12-17 01:33:26','YYYY-MM-DD HH24:MI:SS'),53230,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53272 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE S_Resource ADD COLUMN PercentUtilization NUMERIC
;

INSERT INTO AD_Element (AD_Element_ID,Name,ColumnName,AD_Client_ID,AD_Org_ID,UpdatedBy,CreatedBy,PrintName,Created,Updated,IsActive,EntityType) VALUES (53231,'DailyCapacity','DailyCapacity',0,0,0,0,'DailyCapacity',TO_TIMESTAMP('2007-12-17 01:33:28','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2007-12-17 01:33:28','YYYY-MM-DD HH24:MI:SS'),'Y','EE01')
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53231 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,IsIdentifier,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('DailyCapacity','N','N','N',0,'Y',487,53273,'DailyCapacity',0,0,10,'N',TO_TIMESTAMP('2007-12-17 01:33:28','YYYY-MM-DD HH24:MI:SS'),'Y',29,0,TO_TIMESTAMP('2007-12-17 01:33:28','YYYY-MM-DD HH24:MI:SS'),53231,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53273 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE S_Resource ADD COLUMN DailyCapacity NUMERIC
;

INSERT INTO AD_Element (AD_Element_ID,Name,ColumnName,AD_Client_ID,AD_Org_ID,UpdatedBy,CreatedBy,PrintName,Created,Updated,IsActive,EntityType) VALUES (53232,'IsManufacturingResource','IsManufacturingResource',0,0,0,0,'IsManufacturingResource',TO_TIMESTAMP('2007-12-17 01:33:30','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2007-12-17 01:33:30','YYYY-MM-DD HH24:MI:SS'),'Y','EE01')
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53232 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,IsIdentifier,DefaultValue,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('IsManufacturingResource','N','N','N','N',0,'Y',487,53274,'IsManufacturingResource',0,0,1,'N',TO_TIMESTAMP('2007-12-17 01:33:30','YYYY-MM-DD HH24:MI:SS'),'Y',20,0,TO_TIMESTAMP('2007-12-17 01:33:30','YYYY-MM-DD HH24:MI:SS'),53232,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53274 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE S_Resource ADD COLUMN IsManufacturingResource CHAR(1) DEFAULT 'N' CHECK (IsManufacturingResource IN ('Y','N'))
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Waiting Time','N','N','Workflow Simulation Waiting time','N','Amount of time needed to prepare the performance of the task on Duration Units',0,'Y',487,53275,'WaitingTime',0,0,10,'N',TO_TIMESTAMP('2007-12-17 01:33:34','YYYY-MM-DD HH24:MI:SS'),'Y',29,0,TO_TIMESTAMP('2007-12-17 01:33:34','YYYY-MM-DD HH24:MI:SS'),2331,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53275 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE S_Resource ADD COLUMN WaitingTime NUMERIC
;

INSERT INTO AD_Reference (AD_Reference_ID,ValidationType,Name,Description,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,UpdatedBy,IsActive,Created,EntityType) VALUES (53223,'L','S_Resource MFG Type','Manufacturing Resource Type',0,TO_TIMESTAMP('2007-12-17 01:33:36','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',TO_TIMESTAMP('2007-12-17 01:33:36','YYYY-MM-DD HH24:MI:SS'),'EE01')
;

INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Help,Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Help,t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53223 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

INSERT INTO AD_Ref_List (Description,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES ('Production Line',TO_TIMESTAMP('2007-12-17 01:33:37','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:33:37','YYYY-MM-DD HH24:MI:SS'),0,0,53244,53223,'PL','Production Line','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53244 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 01:33:39','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:33:39','YYYY-MM-DD HH24:MI:SS'),0,0,53245,53223,'PT','Plant','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53245 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 01:33:42','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:33:42','YYYY-MM-DD HH24:MI:SS'),0,0,53246,53223,'WC','Work Center','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53246 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Ref_List (Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Value,Name,IsActive,AD_Client_ID,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 01:33:43','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:33:43','YYYY-MM-DD HH24:MI:SS'),0,0,53247,53223,'WS','Work Station','Y',0,'EE01')
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53247 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

INSERT INTO AD_Element (AD_Element_ID,Name,ColumnName,AD_Client_ID,AD_Org_ID,UpdatedBy,CreatedBy,PrintName,Created,Updated,IsActive,EntityType) VALUES (53233,'ManufacturingResourceType','ManufacturingResourceType',0,0,0,0,'ManufacturingResourceType',TO_TIMESTAMP('2007-12-17 01:33:44','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2007-12-17 01:33:44','YYYY-MM-DD HH24:MI:SS'),'Y','EE01')
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53233 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_Value_ID,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('ManufacturingResourceType','N','N','N',53223,0,'Y',487,53276,'ManufacturingResourceType',0,0,2,'N',TO_TIMESTAMP('2007-12-17 01:33:44','YYYY-MM-DD HH24:MI:SS'),'Y',17,0,TO_TIMESTAMP('2007-12-17 01:33:44','YYYY-MM-DD HH24:MI:SS'),53233,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53276 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE S_Resource ADD COLUMN ManufacturingResourceType CHAR(2)
;

INSERT INTO AD_Element (AD_Element_ID,Name,ColumnName,AD_Client_ID,AD_Org_ID,UpdatedBy,CreatedBy,PrintName,Created,Updated,IsActive,EntityType) VALUES (53234,'QueuingTime','QueuingTime',0,0,0,0,'QueuingTime',TO_TIMESTAMP('2007-12-17 01:33:47','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2007-12-17 01:33:47','YYYY-MM-DD HH24:MI:SS'),'Y','EE01')
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53234 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,IsIdentifier,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('QueuingTime','N','N','N',0,'Y',487,53277,'QueuingTime',0,0,10,'N',TO_TIMESTAMP('2007-12-17 01:33:47','YYYY-MM-DD HH24:MI:SS'),'Y',29,0,TO_TIMESTAMP('2007-12-17 01:33:47','YYYY-MM-DD HH24:MI:SS'),53234,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53277 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE S_Resource ADD COLUMN QueuingTime NUMERIC
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,OrderByClause,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,WhereClause,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 01:33:49','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:33:49','YYYY-MM-DD HH24:MI:SS'),0,0,'Name','N','Manufacturing Resource',10,487,53015,53004,'IsManufacturingResource=''Y''','N','N','Y','Y','N',NULL,'N','N',0,0,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53015 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'N','Y','Y',TO_TIMESTAMP('2007-12-17 01:33:50','YYYY-MM-DD HH24:MI:SS'),0,53287,26,8840,'N',0,TO_TIMESTAMP('2007-12-17 01:33:50','YYYY-MM-DD HH24:MI:SS'),'Chargeable Quantity',53015,'N','N',0,'N','D')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53287 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'N','Y','Y',TO_TIMESTAMP('2007-12-17 01:33:51','YYYY-MM-DD HH24:MI:SS'),0,53288,'Resource',14,6862,'N',0,TO_TIMESTAMP('2007-12-17 01:33:51','YYYY-MM-DD HH24:MI:SS'),'Resource',53015,'N','N',0,'N','D')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53288 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:33:52','YYYY-MM-DD HH24:MI:SS'),0,53289,'Client/Tenant for this installation.',14,6861,'N',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',TO_TIMESTAMP('2007-12-17 01:33:52','YYYY-MM-DD HH24:MI:SS'),'Client',53015,'N','N',10,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53289 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:33:53','YYYY-MM-DD HH24:MI:SS'),0,53290,'Organizational entity within client',14,6860,'N',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',TO_TIMESTAMP('2007-12-17 01:33:53','YYYY-MM-DD HH24:MI:SS'),'Organization',53015,'Y','N',20,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53290 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:33:54','YYYY-MM-DD HH24:MI:SS'),0,53291,'The record is active in the system',1,6859,'N',0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',TO_TIMESTAMP('2007-12-17 01:33:54','YYYY-MM-DD HH24:MI:SS'),'Active',53015,'N','N',30,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53291 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:33:55','YYYY-MM-DD HH24:MI:SS'),0,53292,'Optional short description of the record',60,6852,'N',0,'A description is limited to 255 characters.',TO_TIMESTAMP('2007-12-17 01:33:55','YYYY-MM-DD HH24:MI:SS'),'Description',53015,'N','N',40,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53292 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:33:55','YYYY-MM-DD HH24:MI:SS'),0,53293,'Alphanumeric identifier of the entity',60,6853,'N',0,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',TO_TIMESTAMP('2007-12-17 01:33:55','YYYY-MM-DD HH24:MI:SS'),'Name',53015,'N','N',40,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53293 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:02','YYYY-MM-DD HH24:MI:SS'),0,53294,'User within the system - Internal or Business Partner Contact',14,8839,'N',0,'The User identifies a unique user in the system. This could be an internal user or a business partner contact',TO_TIMESTAMP('2007-12-17 01:34:02','YYYY-MM-DD HH24:MI:SS'),'User/Contact',53015,'N','N',50,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53294 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:04','YYYY-MM-DD HH24:MI:SS'),0,53295,14,6851,'N',0,TO_TIMESTAMP('2007-12-17 01:34:04','YYYY-MM-DD HH24:MI:SS'),'Resource Type',53015,'N','N',70,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53295 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (1,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:07','YYYY-MM-DD HH24:MI:SS'),0,53296,'Search key for the record in the format required - must be unique',40,6854,'N',0,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',TO_TIMESTAMP('2007-12-17 01:34:07','YYYY-MM-DD HH24:MI:SS'),'Search Key',53015,'N','N',80,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53296 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:08','YYYY-MM-DD HH24:MI:SS'),0,53297,'Storage Warehouse and Service Point',14,6850,'N',0,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',TO_TIMESTAMP('2007-12-17 01:34:08','YYYY-MM-DD HH24:MI:SS'),'Warehouse',53015,'N','N',90,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53297 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:09','YYYY-MM-DD HH24:MI:SS'),0,53298,'Resource is available',1,6849,'N',0,'Resource is available for assignments',TO_TIMESTAMP('2007-12-17 01:34:09','YYYY-MM-DD HH24:MI:SS'),'Available',53015,'N','N',100,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53298 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:10','YYYY-MM-DD HH24:MI:SS'),0,53299,1,53274,'N',0,TO_TIMESTAMP('2007-12-17 01:34:10','YYYY-MM-DD HH24:MI:SS'),'IsManufacturingResource',53015,'N','N',110,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53299 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,DisplayLogic,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:12','YYYY-MM-DD HH24:MI:SS'),0,53300,2,53276,'N',0,TO_TIMESTAMP('2007-12-17 01:34:12','YYYY-MM-DD HH24:MI:SS'),'ManufacturingResourceType',53015,'N','N',120,'N','@IsManufacturingResource@ = ''Y''','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53300 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,DisplayLogic,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:13','YYYY-MM-DD HH24:MI:SS'),0,53301,10,53273,'N',0,TO_TIMESTAMP('2007-12-17 01:34:13','YYYY-MM-DD HH24:MI:SS'),'DailyCapacity',53015,'N','N',130,'N','@IsManufacturingResource@ = ''Y''','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53301 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,DisplayLogic,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:15','YYYY-MM-DD HH24:MI:SS'),0,53302,10,53272,'N',0,TO_TIMESTAMP('2007-12-17 01:34:15','YYYY-MM-DD HH24:MI:SS'),'PercentUtilization',53015,'Y','N',140,'N','@IsManufacturingResource@ = ''Y''','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53302 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,DisplayLogic,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:16','YYYY-MM-DD HH24:MI:SS'),0,53303,10,53277,'N',0,TO_TIMESTAMP('2007-12-17 01:34:16','YYYY-MM-DD HH24:MI:SS'),'QueuingTime',53015,'N','N',150,'N','@IsManufacturingResource@ = ''Y''','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53303 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,DisplayLogic,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:34:16','YYYY-MM-DD HH24:MI:SS'),0,53304,'Workflow Simulation Waiting time',10,53275,'N',0,'Amount of time needed to prepare the performance of the task on Duration Units',TO_TIMESTAMP('2007-12-17 01:34:16','YYYY-MM-DD HH24:MI:SS'),'Waiting Time',53015,'Y','N',160,'N','@IsManufacturingResource@ = ''Y''','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53304 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Preference (AD_Preference_ID,AD_Client_ID,AD_Org_ID,UpdatedBy,IsActive,Created,Updated,Value,AD_Window_ID,Attribute,CreatedBy) VALUES (50000,0,0,0,'Y',TO_TIMESTAMP('2007-12-17 01:34:17','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2007-12-17 01:34:17','YYYY-MM-DD HH24:MI:SS'),'0',53004,'AD_Org_ID',0)
;

UPDATE AD_Window SET IsActive='Y', Name='Resource Type', WindowType='M', Help='Maintain Resource types and their principal availability. it is used to calculate the available time in a resource. It allows input of starting time and end time for the slot according to the working days.', Description='Maintain Resource Types', IsSOTrx='Y', IsDefault='N', Processing='N', IsBetaFunctionality='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Window_ID=237
;

UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=237
;

UPDATE AD_Table SET Name='Resource Type', AccessLevel='3', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=237, IsDeleteable='Y', TableName='S_ResourceType', Description=NULL, IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:34:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=480
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@#AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:35:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6890
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=6890 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@#AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:35:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6891
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=6891 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Allow UoM Fractions', IsMandatory='Y', IsTranslated='N', Description='Allow Unit of Measure Fractions', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='N', Help='If allowed, you can enter UoM Fractions', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='AllowUoMFractions', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1753, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6901
;

UPDATE AD_Field SET Name='Allow UoM Fractions', Description='Allow Unit of Measure Fractions', Help='If allowed, you can enter UoM Fractions' WHERE AD_Column_ID=6901 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Tax Category', IsMandatory='Y', IsTranslated='N', Description='Tax Category', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='C_TaxCategory_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=211, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:36:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6932
;

UPDATE AD_Field SET Name='Tax Category', Description='Tax Category', Help='The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.' WHERE AD_Column_ID=6932 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='UOM', IsMandatory='Y', IsTranslated='N', Description='Unit of Measure', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The UOM defines a unique non monetary Unit of Measure', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='C_UOM_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=215, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:36:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6900
;

UPDATE AD_Field SET Name='UOM', Description='Unit of Measure', Help='The UOM defines a unique non monetary Unit of Measure' WHERE AD_Column_ID=6900 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Integer', Description='10 Digit numeric', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=11
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=11
;

UPDATE AD_Column SET Name='Chargeable Quantity', IsMandatory='N', IsTranslated='N', Description=NULL, IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='ChargeableQty', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=11, AD_Val_Rule_ID=NULL, AD_Element_ID=2076, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:37:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8837
;

UPDATE AD_Field SET Name='Chargeable Quantity', Description=NULL, Help=NULL WHERE AD_Column_ID=8837 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:38:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6893
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=6893 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:38:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6894
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=6894 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6899
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=6899 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:39:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6892
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=6892 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Day Slot', IsMandatory='Y', IsTranslated='N', Description='Resource has day slot availability', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Resource is only available on certain days', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='IsDateSlot', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1764, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:40:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6930
;

UPDATE AD_Field SET Name='Day Slot', Description='Resource has day slot availability', Help='Resource is only available on certain days' WHERE AD_Column_ID=6930 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Single Assignment only', IsMandatory='Y', IsTranslated='N', Description='Only one assignment at a time (no double-booking or overlapping)', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='If selected, you can only have one assignment for the resource at a single point in time.   It is also  not possible to have overlapping assignments.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='IsSingleAssignment', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1785, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:40:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6925
;

UPDATE AD_Field SET Name='Single Assignment only', Description='Only one assignment at a time (no double-booking or overlapping)', Help='If selected, you can only have one assignment for the resource at a single point in time.   It is also  not possible to have overlapping assignments.' WHERE AD_Column_ID=6925 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Time Slot', IsMandatory='Y', IsTranslated='N', Description='Resource has time slot availability', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Resource is only available at certain times', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='IsTimeSlot', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1768, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:41:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6922
;

UPDATE AD_Field SET Name='Time Slot', Description='Resource has time slot availability', Help='Resource is only available at certain times' WHERE AD_Column_ID=6922 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Product Category', IsMandatory='Y', IsTranslated='N', Description='Category of a Product', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='M_Product_Category_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=453, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:41:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6931
;

UPDATE AD_Field SET Name='Product Category', Description='Category of a Product', Help='Identifies the category which this product belongs to.  Product categories are used for pricing and selection.' WHERE AD_Column_ID=6931 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Search Key', IsMandatory='Y', IsTranslated='N', Description='Search key for the record in the format required - must be unique', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='Value', FieldLength=40, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=620, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6897
;

UPDATE AD_Field SET Name='Search Key', Description='Search key for the record in the format required - must be unique', Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).' WHERE AD_Column_ID=6897 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Friday', IsMandatory='Y', IsTranslated='N', Description='Available on Fridays', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='OnFriday', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1769, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:42:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6924
;

UPDATE AD_Field SET Name='Friday', Description='Available on Fridays', Help=NULL WHERE AD_Column_ID=6924 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Monday', IsMandatory='Y', IsTranslated='N', Description='Available on Mondays', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='OnMonday', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1770, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:42:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6929
;

UPDATE AD_Field SET Name='Monday', Description='Available on Mondays', Help=NULL WHERE AD_Column_ID=6929 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Saturday', IsMandatory='Y', IsTranslated='N', Description='Available on Saturday', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='OnSaturday', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1771, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6921
;

UPDATE AD_Field SET Name='Saturday', Description='Available on Saturday', Help=NULL WHERE AD_Column_ID=6921 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Sunday', IsMandatory='Y', IsTranslated='N', Description='Available on Sundays', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='OnSunday', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1772, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6920
;

UPDATE AD_Field SET Name='Sunday', Description='Available on Sundays', Help=NULL WHERE AD_Column_ID=6920 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Thursday', IsMandatory='Y', IsTranslated='N', Description='Available on Thursdays', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='OnThursday', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1773, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:43:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6926
;

UPDATE AD_Field SET Name='Thursday', Description='Available on Thursdays', Help=NULL WHERE AD_Column_ID=6926 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Tuesday', IsMandatory='Y', IsTranslated='N', Description='Available on Tuesdays', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='OnTuesday', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1774, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:44:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6919
;

UPDATE AD_Field SET Name='Tuesday', Description='Available on Tuesdays', Help=NULL WHERE AD_Column_ID=6919 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Wednesday', IsMandatory='Y', IsTranslated='N', Description='Available on Wednesdays', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='OnWednesday', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=1775, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6927
;

UPDATE AD_Field SET Name='Wednesday', Description='Available on Wednesdays', Help=NULL WHERE AD_Column_ID=6927 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Resource Type', IsMandatory='Y', IsTranslated='N', Description=NULL, IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='S_ResourceType_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=1779, IsUpdateable='N', IsKey='Y', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:44:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6889
;

UPDATE AD_Field SET Name='Resource Type', Description=NULL, Help=NULL WHERE AD_Column_ID=6889 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Time', Description='Time', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:44:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=24
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=24
;

UPDATE AD_Column SET Name='Slot End', IsMandatory='N', IsTranslated='N', Description='Time when timeslot ends', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Ending time for time slots', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='TimeSlotEnd', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=24, AD_Val_Rule_ID=NULL, AD_Element_ID=1759, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:45:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6923
;

UPDATE AD_Field SET Name='Slot End', Description='Time when timeslot ends', Help='Ending time for time slots' WHERE AD_Column_ID=6923 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Slot Start', IsMandatory='N', IsTranslated='N', Description='Time when timeslot starts', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Starting time for time slots', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='TimeSlotStart', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=24, AD_Val_Rule_ID=NULL, AD_Element_ID=1760, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:45:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6928
;

UPDATE AD_Field SET Name='Slot Start', Description='Time when timeslot starts', Help='Starting time for time slots' WHERE AD_Column_ID=6928 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:45:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6895
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=6895 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:46:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6896
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=6896 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=480, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:46:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6898
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=6898 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Tab SET Description='Maintain Resource Types', Help='Maintain Resource types and their principal availability.', OrderByClause=NULL, IsTranslationTab='N', Name='Resource Type', SeqNo=10, AD_Table_ID=480, AD_Window_ID=237, WhereClause=NULL, HasTree='N', IsSortTab='N', IsSingleRow='N', IsActive='Y', IsInfoTab='N', CommitWarning=NULL, IsReadOnly='N', ImportFields=NULL, Processing='N', TabLevel=0, IsInsertRecord='Y', IsAdvancedTab='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:47:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=418
;

UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=418
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description=NULL, DisplayLength=14, AD_Column_ID=6889, IsFieldOnly='N', Help=NULL, Name='Resource Type', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=10, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5539
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=5539
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='N', IsCentrallyMaintained='Y', IsActive='Y', Description=NULL, DisplayLength=11, AD_Column_ID=8837, IsFieldOnly='N', Help=NULL, Name='Chargeable Quantity', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=20, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=6569
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=6569
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Client/Tenant for this installation.', DisplayLength=14, AD_Column_ID=6890, IsFieldOnly='N', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', Name='Client', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=30, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5540
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Organizational entity within client', DisplayLength=14, AD_Column_ID=6891, IsFieldOnly='N', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', Name='Organization', AD_Tab_ID=418, IsSameLine='Y', IsHeading='N', SeqNo=40, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5541
;

UPDATE AD_Field SET SortNo=1, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Search key for the record in the format required - must be unique', DisplayLength=40, AD_Column_ID=6897, IsFieldOnly='N', Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', Name='Search Key', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=50, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:48:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5543
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Alphanumeric identifier of the entity', DisplayLength=60, AD_Column_ID=6898, IsFieldOnly='N', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', Name='Name', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=60, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:48:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5544
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Optional short description of the record', DisplayLength=60, AD_Column_ID=6899, IsFieldOnly='N', Help='A description is limited to 255 characters.', Name='Description', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=70, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5545
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='The record is active in the system', DisplayLength=1, AD_Column_ID=6892, IsFieldOnly='N', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', Name='Active', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=80, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:49:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5542
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Unit of Measure', DisplayLength=14, AD_Column_ID=6900, IsFieldOnly='N', Help='The UOM defines a unique non monetary Unit of Measure', Name='UOM', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=90, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5546
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Allow Unit of Measure Fractions', DisplayLength=1, AD_Column_ID=6901, IsFieldOnly='N', Help='If allowed, you can enter UoM Fractions', Name='Allow UoM Fractions', AD_Tab_ID=418, IsSameLine='Y', IsHeading='N', SeqNo=100, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:49:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5547
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Category of a Product', DisplayLength=14, AD_Column_ID=6931, IsFieldOnly='N', Help='Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', Name='Product Category', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=110, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:50:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5588
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Tax Category', DisplayLength=14, AD_Column_ID=6932, IsFieldOnly='N', Help='The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.', Name='Tax Category', AD_Tab_ID=418, IsSameLine='Y', IsHeading='N', SeqNo=120, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:50:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5587
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Only one assignment at a time (no double-booking or overlapping)', DisplayLength=1, AD_Column_ID=6925, IsFieldOnly='N', Help='If selected, you can only have one assignment for the resource at a single point in time.   It is also  not possible to have overlapping assignments.', Name='Single Assignment only', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=130, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:50:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5581
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Resource has time slot availability', DisplayLength=1, AD_Column_ID=6922, IsFieldOnly='N', Help='Resource is only available at certain times', Name='Time Slot', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=140, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:51:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5578
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Time when timeslot starts', DisplayLength=1, AD_Column_ID=6928, IsFieldOnly='N', Help='Starting time for time slots', Name='Slot Start', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=150, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsTimeSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:51:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5584
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Time when timeslot ends', DisplayLength=1, AD_Column_ID=6923, IsFieldOnly='N', Help='Ending time for time slots', Name='Slot End', AD_Tab_ID=418, IsSameLine='Y', IsHeading='N', SeqNo=160, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsTimeSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:51:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5579
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Resource has day slot availability', DisplayLength=1, AD_Column_ID=6930, IsFieldOnly='N', Help='Resource is only available on certain days', Name='Day Slot', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=170, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic=NULL, EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5586
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Available on Sundays', DisplayLength=1, AD_Column_ID=6920, IsFieldOnly='N', Help=NULL, Name='Sunday', AD_Tab_ID=418, IsSameLine='Y', IsHeading='N', SeqNo=180, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsDateSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5576
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=5576
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Available on Mondays', DisplayLength=1, AD_Column_ID=6929, IsFieldOnly='N', Help=NULL, Name='Monday', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=190, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsDateSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:52:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5585
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=5585
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Available on Tuesdays', DisplayLength=1, AD_Column_ID=6919, IsFieldOnly='N', Help=NULL, Name='Tuesday', AD_Tab_ID=418, IsSameLine='Y', IsHeading='N', SeqNo=200, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsDateSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:52:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5575
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=5575
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Available on Wednesdays', DisplayLength=1, AD_Column_ID=6927, IsFieldOnly='N', Help=NULL, Name='Wednesday', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=210, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsDateSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5583
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=5583
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Available on Thursdays', DisplayLength=1, AD_Column_ID=6926, IsFieldOnly='N', Help=NULL, Name='Thursday', AD_Tab_ID=418, IsSameLine='Y', IsHeading='N', SeqNo=220, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsDateSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:53:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5582
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=5582
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Available on Fridays', DisplayLength=1, AD_Column_ID=6924, IsFieldOnly='N', Help=NULL, Name='Friday', AD_Tab_ID=418, IsSameLine='N', IsHeading='N', SeqNo=230, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsDateSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5580
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=5580
;

UPDATE AD_Field SET SortNo=0, IsDisplayed='Y', IsCentrallyMaintained='Y', IsActive='Y', Description='Available on Saturday', DisplayLength=1, AD_Column_ID=6921, IsFieldOnly='N', Help=NULL, Name='Saturday', AD_Tab_ID=418, IsSameLine='Y', IsHeading='N', SeqNo=240, IsReadOnly='N', AD_FieldGroup_ID=NULL, DisplayLogic='@IsDateSlot@=Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:53:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=5577
;

UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=5577
;

INSERT INTO AD_Window (IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Window_ID,WindowType,Help,AD_Client_ID,AD_Org_ID,Description,IsSOTrx,IsDefault,Processing,IsBetaFunctionality,EntityType) VALUES ('Y',TO_TIMESTAMP('2007-12-17 01:53:56','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:53:56','YYYY-MM-DD HH24:MI:SS'),0,'Manufacturing Workflows',53005,'M','Manufacturing Workflows (Routing) is a set of information detailing the method of manufacture of a particular item .It includes the operations to be performed their sequence the various work centers to be involved and the standards for setup and run. In some companies routing also includes information on tooling operator skill levels inspection operationstesting requirements etc.',0,0,'Maintain Manufacturing Workflows (Routing)','N','N','N','N','EE01')
;

INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53005 AND EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Window_ID!=t.AD_Window_ID)
;

INSERT INTO AD_Window_Access (Updated,UpdatedBy,CreatedBy,Created,AD_Window_ID,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),53005,'Y',0,0,0)
;

INSERT INTO AD_Window_Access (Updated,UpdatedBy,CreatedBy,Created,AD_Window_ID,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),53005,'Y',0,0,102)
;

INSERT INTO AD_Window_Access (Updated,UpdatedBy,CreatedBy,Created,AD_Window_ID,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),53005,'Y',0,0,103)
;

INSERT INTO AD_Window_Access (Updated,UpdatedBy,CreatedBy,Created,AD_Window_ID,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),53005,'Y',0,0,50001)
;

INSERT INTO AD_Table (AD_Org_ID,AD_Client_ID,Name,AccessLevel,IsActive,IsSecurityEnabled,IsDeleteable,TableName,Created,AD_Table_ID,CreatedBy,Updated,UpdatedBy,IsHighVolume,ImportTable,IsView,IsChangeLog,ReplicationType,EntityType) VALUES (0,0,'Node Tools','3','Y','N','N','PP_WF_Node_Product',TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),53016,0,TO_TIMESTAMP('2007-12-17 01:53:57','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','L','EE01')
;

INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53016 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

INSERT INTO AD_Sequence (IncrementNo,StartNewYear,AD_Org_ID,StartNo,IsAutoSequence,Description,AD_Client_ID,CreatedBy,Name,CurrentNextSys,CurrentNext,IsTableID,AD_Sequence_ID,Updated,UpdatedBy,Created,IsAudited,IsActive) VALUES (1,'N',0,1000000,'Y','Table PP_WF_Node_Product',0,0,'PP_WF_Node_Product',50000,1000000,'Y',53013,TO_TIMESTAMP('2007-12-17 01:53:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:53:58','YYYY-MM-DD HH24:MI:SS'),'N','Y')
;

UPDATE AD_Reference SET Help=NULL, ValidationType='T', Name='_EntityTypeNew', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=389
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=389
;

UPDATE AD_Ref_Table SET AD_Table_ID = 882, AD_Display = 15601, AD_Key = 15592, isValueDisplayed = 'N', OrderByClause = '', EntityType ='D', WhereClause = '' WHERE AD_Reference_ID = 389
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,DefaultValue,Help,AD_Reference_Value_ID,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,ReadOnlyLogic,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Entity Type','Y','N','Dictionary Entity Type; Determines ownership and synchronization','N','U','The Entity Types "Dictionary", "Adempiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.  

For customizations, copy the entity and select "User"!',389,1.000000000000,'Y',53016,53278,'EntityType',0,0,40,'N',TO_TIMESTAMP('2007-12-17 01:54:06','YYYY-MM-DD HH24:MI:SS'),'Y',18,0,TO_TIMESTAMP('2007-12-17 01:54:06','YYYY-MM-DD HH24:MI:SS'),1682,'Y','N','N',0,'@EntityType@=D','N','N','D')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53278 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

CREATE TABLE PP_WF_Node_Product (EntityType VARCHAR(40) DEFAULT 'U' NOT NULL)
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='AD_SysConfig ConfigurationLevel', Description='Configuration Level', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:54:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=53222
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53222
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,DefaultValue,Help,AD_Reference_Value_ID,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Configuration Level','N','N','Configuration Level for this parameter','N','S','Configuration Level for this parameter
S - just allowed system configuration
C - client configurable parameter
O - org configurable parameter',53222,0,'Y',53016,53279,'ConfigurationLevel',0,0,1,'N',TO_TIMESTAMP('2007-12-17 01:54:35','YYYY-MM-DD HH24:MI:SS'),'Y',17,0,TO_TIMESTAMP('2007-12-17 01:54:35','YYYY-MM-DD HH24:MI:SS'),53229,'Y','N','N',0,'N','N','D')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53279 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN ConfigurationLevel CHAR(1) DEFAULT 'S' 
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Node','Y','N','Workflow Node (activity), step or process','N','The Workflow Node indicates a unique step or process in a Workflow.',0,'Y',53016,53280,'AD_WF_Node_ID',0,0,22,'Y',TO_TIMESTAMP('2007-12-17 01:54:37','YYYY-MM-DD HH24:MI:SS'),'Y',19,0,TO_TIMESTAMP('2007-12-17 01:54:37','YYYY-MM-DD HH24:MI:SS'),142,'N','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53280 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN AD_WF_Node_ID NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Created','Y','N','Date this record was created','N','The Created field indicates the date that this record was created.',0,'Y',53016,53281,'Created',0,0,7,'N',TO_TIMESTAMP('2007-12-17 01:54:40','YYYY-MM-DD HH24:MI:SS'),'Y',15,0,TO_TIMESTAMP('2007-12-17 01:54:40','YYYY-MM-DD HH24:MI:SS'),245,'N','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53281 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN Created TIMESTAMP NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,AD_Reference_Value_ID,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Created By','Y','N','User who created this records','N','The Created By field indicates the user who created this record.',110,0,'Y',53016,53282,'CreatedBy',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:54:41','YYYY-MM-DD HH24:MI:SS'),'Y',18,0,TO_TIMESTAMP('2007-12-17 01:54:41','YYYY-MM-DD HH24:MI:SS'),246,'N','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53282 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Active','Y','N','The record is active in the system','N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',0,'Y',53016,53283,'IsActive',0,0,1,'N',TO_TIMESTAMP('2007-12-17 01:54:43','YYYY-MM-DD HH24:MI:SS'),'Y',20,0,TO_TIMESTAMP('2007-12-17 01:54:43','YYYY-MM-DD HH24:MI:SS'),348,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53283 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Product','Y','N','Product, Service, Item','N','Identifies an item which is either purchased or sold in this organization.',0,'Y',53016,53284,'M_Product_ID',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:54:44','YYYY-MM-DD HH24:MI:SS'),'Y',30,0,TO_TIMESTAMP('2007-12-17 01:54:44','YYYY-MM-DD HH24:MI:SS'),454,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53284 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN M_Product_ID NUMERIC(10) NOT NULL
;

INSERT INTO AD_Element (AD_Element_ID,Name,ColumnName,AD_Client_ID,AD_Org_ID,UpdatedBy,CreatedBy,PrintName,Created,Updated,IsActive,EntityType) VALUES (53235,'PP_WF_Node_Product_ID','PP_WF_Node_Product_ID',0,0,0,0,'PP_WF_Node_Product_ID',TO_TIMESTAMP('2007-12-17 01:54:46','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2007-12-17 01:54:46','YYYY-MM-DD HH24:MI:SS'),'Y','EE01')
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53235 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,IsIdentifier,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('PP_WF_Node_Product_ID','Y','N','N',0,'Y',53016,53285,'PP_WF_Node_Product_ID',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:54:46','YYYY-MM-DD HH24:MI:SS'),'Y',13,0,TO_TIMESTAMP('2007-12-17 01:54:46','YYYY-MM-DD HH24:MI:SS'),53235,'N','Y','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53285 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN PP_WF_Node_Product_ID NUMERIC(10) NOT NULL
;

ALTER TABLE PP_WF_Node_Product ADD CONSTRAINT PP_WF_Node_Product_Key PRIMARY KEY (PP_WF_Node_Product_ID)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Quantity','N','N','Quantity','N','The Quantity indicates the number of a specific product or item for this document.',0,'Y',53016,53286,'Qty',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:54:48','YYYY-MM-DD HH24:MI:SS'),'Y',29,0,TO_TIMESTAMP('2007-12-17 01:54:48','YYYY-MM-DD HH24:MI:SS'),526,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53286 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN Qty NUMERIC
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Sequence','N','N','Method of ordering records; lowest number comes first','N','The Sequence indicates the order of records',0,'Y',53016,53287,'SeqNo',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:54:50','YYYY-MM-DD HH24:MI:SS'),'Y',11,0,TO_TIMESTAMP('2007-12-17 01:54:50','YYYY-MM-DD HH24:MI:SS'),566,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53287 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN SeqNo NUMERIC(10)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Updated','Y','N','Date this record was updated','N','The Updated field indicates the date that this record was updated.',0,'Y',53016,53288,'Updated',0,0,7,'N',TO_TIMESTAMP('2007-12-17 01:54:51','YYYY-MM-DD HH24:MI:SS'),'Y',15,0,TO_TIMESTAMP('2007-12-17 01:54:51','YYYY-MM-DD HH24:MI:SS'),607,'N','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53288 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN Updated TIMESTAMP NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Client','Y','N','Client/Tenant for this installation.','N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',0,'Y',53016,53289,'AD_Client_ID',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:54:52','YYYY-MM-DD HH24:MI:SS'),'Y',19,0,TO_TIMESTAMP('2007-12-17 01:54:52','YYYY-MM-DD HH24:MI:SS'),102,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53289 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,AD_Reference_Value_ID,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Updated By','Y','N','User who updated this records','N','The Updated By field indicates the user who updated this record.',110,0,'Y',53016,53290,'UpdatedBy',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:54:54','YYYY-MM-DD HH24:MI:SS'),'Y',18,0,TO_TIMESTAMP('2007-12-17 01:54:54','YYYY-MM-DD HH24:MI:SS'),608,'N','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53290 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,AD_Val_Rule_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Organization','Y','N','Organizational entity within client','N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',0,'Y',53016,53291,'AD_Org_ID',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:55:02','YYYY-MM-DD HH24:MI:SS'),'Y',19,117,0,TO_TIMESTAMP('2007-12-17 01:55:02','YYYY-MM-DD HH24:MI:SS'),113,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53291 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Product ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,AD_Column_ID,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 01:55:03','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:55:03','YYYY-MM-DD HH24:MI:SS'),0,0,'N','Product',55,53016,53016,53005,'N','N','Y','Y','N',NULL,'N',53280,'N',0,2,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53016 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'N','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:04','YYYY-MM-DD HH24:MI:SS'),0,53305,22,53285,'N',0,TO_TIMESTAMP('2007-12-17 01:55:04','YYYY-MM-DD HH24:MI:SS'),'PP_WF_Node_Product_ID',53016,'N','N',0,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53305 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:05','YYYY-MM-DD HH24:MI:SS'),0,53306,'Client/Tenant for this installation.',22,53289,'N',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',TO_TIMESTAMP('2007-12-17 01:55:05','YYYY-MM-DD HH24:MI:SS'),'Client',53016,'N','N',10,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53306 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:06','YYYY-MM-DD HH24:MI:SS'),0,53307,'Organizational entity within client',22,53291,'N',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',TO_TIMESTAMP('2007-12-17 01:55:06','YYYY-MM-DD HH24:MI:SS'),'Organization',53016,'Y','N',20,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53307 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:07','YYYY-MM-DD HH24:MI:SS'),0,53308,'Workflow Node (activity), step or process',22,53280,'N',0,'The Workflow Node indicates a unique step or process in a Workflow.',TO_TIMESTAMP('2007-12-17 01:55:07','YYYY-MM-DD HH24:MI:SS'),'Node',53016,'N','N',40,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53308 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:08','YYYY-MM-DD HH24:MI:SS'),0,53309,'The record is active in the system',1,53283,'N',0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',TO_TIMESTAMP('2007-12-17 01:55:08','YYYY-MM-DD HH24:MI:SS'),'Active',53016,'N','N',50,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53309 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:09','YYYY-MM-DD HH24:MI:SS'),0,53310,'Method of ordering records; lowest number comes first',22,53287,'N',0,'The Sequence indicates the order of records',TO_TIMESTAMP('2007-12-17 01:55:09','YYYY-MM-DD HH24:MI:SS'),'Sequence',53016,'N','N',60,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53310 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:09','YYYY-MM-DD HH24:MI:SS'),0,53311,'Product, Service, Item',22,53284,'N',0,'Identifies an item which is either purchased or sold in this organization.',TO_TIMESTAMP('2007-12-17 01:55:09','YYYY-MM-DD HH24:MI:SS'),'Product',53016,'Y','N',70,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53311 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:10','YYYY-MM-DD HH24:MI:SS'),0,53312,'Quantity',22,53286,'N',0,'The Quantity indicates the number of a specific product or item for this document.',TO_TIMESTAMP('2007-12-17 01:55:10','YYYY-MM-DD HH24:MI:SS'),'Quantity',53016,'N','N',80,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53312 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Table (AD_Org_ID,AD_Client_ID,Name,AccessLevel,IsActive,IsSecurityEnabled,IsDeleteable,TableName,Created,AD_Table_ID,CreatedBy,Updated,UpdatedBy,IsHighVolume,ImportTable,IsView,IsChangeLog,ReplicationType,EntityType) VALUES (0,0,'Node Asset','3','Y','N','N','PP_WF_Node_Asset',TO_TIMESTAMP('2007-12-17 01:55:11','YYYY-MM-DD HH24:MI:SS'),53017,0,TO_TIMESTAMP('2007-12-17 01:55:11','YYYY-MM-DD HH24:MI:SS'),0,'N','N','N','N','L','EE01')
;

INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53017 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

INSERT INTO AD_Sequence (IncrementNo,StartNewYear,AD_Org_ID,StartNo,IsAutoSequence,Description,AD_Client_ID,CreatedBy,Name,CurrentNextSys,CurrentNext,IsTableID,AD_Sequence_ID,Updated,UpdatedBy,Created,IsAudited,IsActive) VALUES (1,'N',0,1000000,'Y','Table PP_WF_Node_Asset',0,0,'PP_WF_Node_Asset',50000,1000000,'Y',53014,TO_TIMESTAMP('2007-12-17 01:55:12','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:55:12','YYYY-MM-DD HH24:MI:SS'),'N','Y')
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Client','Y','N','Client/Tenant for this installation.','N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',0,'Y',53017,53292,'AD_Client_ID',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:55:12','YYYY-MM-DD HH24:MI:SS'),'Y',19,0,TO_TIMESTAMP('2007-12-17 01:55:12','YYYY-MM-DD HH24:MI:SS'),102,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53292 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

CREATE TABLE PP_WF_Node_Asset (AD_Client_ID NUMERIC(10) NOT NULL)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,AD_Val_Rule_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Organization','Y','N','Organizational entity within client','N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',0,'Y',53017,53293,'AD_Org_ID',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:55:17','YYYY-MM-DD HH24:MI:SS'),'Y',19,104,0,TO_TIMESTAMP('2007-12-17 01:55:17','YYYY-MM-DD HH24:MI:SS'),113,'N','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53293 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Node','Y','N','Workflow Node (activity), step or process','N','The Workflow Node indicates a unique step or process in a Workflow.',0,'Y',53017,53294,'AD_WF_Node_ID',0,0,22,'Y',TO_TIMESTAMP('2007-12-17 01:55:18','YYYY-MM-DD HH24:MI:SS'),'Y',19,0,TO_TIMESTAMP('2007-12-17 01:55:18','YYYY-MM-DD HH24:MI:SS'),142,'N','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53294 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN AD_WF_Node_ID NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Asset','Y','N','Asset used internally or by customers','N','An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.',0,'Y',53017,53295,'A_Asset_ID',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:55:20','YYYY-MM-DD HH24:MI:SS'),'Y',19,0,TO_TIMESTAMP('2007-12-17 01:55:20','YYYY-MM-DD HH24:MI:SS'),1884,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53295 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN A_Asset_ID NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Created','Y','N','Date this record was created','N','The Created field indicates the date that this record was created.',0,'Y',53017,53296,'Created',0,0,7,'N',TO_TIMESTAMP('2007-12-17 01:55:21','YYYY-MM-DD HH24:MI:SS'),'Y',15,0,TO_TIMESTAMP('2007-12-17 01:55:21','YYYY-MM-DD HH24:MI:SS'),245,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53296 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN Created TIMESTAMP NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,AD_Reference_Value_ID,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Created By','Y','N','User who created this records','N','The Created By field indicates the user who created this record.',110,0,'Y',53017,53297,'CreatedBy',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:55:23','YYYY-MM-DD HH24:MI:SS'),'Y',18,0,TO_TIMESTAMP('2007-12-17 01:55:23','YYYY-MM-DD HH24:MI:SS'),246,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53297 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Active','Y','N','The record is active in the system','N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',0,'Y',53017,53298,'IsActive',0,0,1,'N',TO_TIMESTAMP('2007-12-17 01:55:24','YYYY-MM-DD HH24:MI:SS'),'Y',20,0,TO_TIMESTAMP('2007-12-17 01:55:24','YYYY-MM-DD HH24:MI:SS'),348,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53298 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL
;

INSERT INTO AD_Element (AD_Element_ID,Name,ColumnName,AD_Client_ID,AD_Org_ID,UpdatedBy,CreatedBy,PrintName,Created,Updated,IsActive,EntityType) VALUES (53236,'PP_WF_Node_Asset_ID','PP_WF_Node_Asset_ID',0,0,0,0,'PP_WF_Node_Asset_ID',TO_TIMESTAMP('2007-12-17 01:55:25','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2007-12-17 01:55:25','YYYY-MM-DD HH24:MI:SS'),'Y','EE01')
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53236 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,IsIdentifier,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('PP_WF_Node_Asset_ID','Y','N','N',0,'Y',53017,53299,'PP_WF_Node_Asset_ID',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:55:25','YYYY-MM-DD HH24:MI:SS'),'Y',13,0,TO_TIMESTAMP('2007-12-17 01:55:25','YYYY-MM-DD HH24:MI:SS'),53236,'N','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53299 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN PP_WF_Node_Asset_ID NUMERIC(10) NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Sequence','N','N','Method of ordering records; lowest number comes first','N','The Sequence indicates the order of records',0,'Y',53017,53300,'SeqNo',0,0,10,'N',TO_TIMESTAMP('2007-12-17 01:55:27','YYYY-MM-DD HH24:MI:SS'),'Y',11,0,TO_TIMESTAMP('2007-12-17 01:55:27','YYYY-MM-DD HH24:MI:SS'),566,'N','Y','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53300 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN SeqNo NUMERIC(10)
;

ALTER TABLE PP_WF_Node_Asset ADD CONSTRAINT PP_WF_Node_Asset_Key PRIMARY KEY (SeqNo)
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Updated','Y','N','Date this record was updated','N','The Updated field indicates the date that this record was updated.',0,'Y',53017,53301,'Updated',0,0,7,'N',TO_TIMESTAMP('2007-12-17 01:55:29','YYYY-MM-DD HH24:MI:SS'),'Y',15,0,TO_TIMESTAMP('2007-12-17 01:55:29','YYYY-MM-DD HH24:MI:SS'),607,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53301 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN Updated TIMESTAMP NOT NULL
;

INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,Help,AD_Reference_Value_ID,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Updated By','Y','N','User who updated this records','N','The Updated By field indicates the user who updated this record.',110,0,'Y',53017,53302,'UpdatedBy',0,0,22,'N',TO_TIMESTAMP('2007-12-17 01:55:30','YYYY-MM-DD HH24:MI:SS'),'Y',18,0,TO_TIMESTAMP('2007-12-17 01:55:30','YYYY-MM-DD HH24:MI:SS'),608,'Y','N','N',0,'N','N','EE01')
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=53302 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

ALTER TABLE PP_WF_Node_Asset ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,AD_Column_ID,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 01:55:31','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 01:55:31','YYYY-MM-DD HH24:MI:SS'),0,0,'N','Tools',56,53017,53017,53005,'N','N','N','Y','N',NULL,'N',53294,'N',0,2,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53017 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'N','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:32','YYYY-MM-DD HH24:MI:SS'),0,53313,22,53299,'N',0,TO_TIMESTAMP('2007-12-17 01:55:32','YYYY-MM-DD HH24:MI:SS'),'PP_WF_Node_Asset_ID',53017,'N','N',0,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53313 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:33','YYYY-MM-DD HH24:MI:SS'),0,53314,'Client/Tenant for this installation.',22,53292,'N',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',TO_TIMESTAMP('2007-12-17 01:55:33','YYYY-MM-DD HH24:MI:SS'),'Client',53017,'N','N',10,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53314 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:34','YYYY-MM-DD HH24:MI:SS'),0,53315,'Organizational entity within client',22,53293,'N',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',TO_TIMESTAMP('2007-12-17 01:55:34','YYYY-MM-DD HH24:MI:SS'),'Organization',53017,'Y','N',20,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53315 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:35','YYYY-MM-DD HH24:MI:SS'),0,53316,'Workflow Node (activity), step or process',22,53294,'N',0,'The Workflow Node indicates a unique step or process in a Workflow.',TO_TIMESTAMP('2007-12-17 01:55:35','YYYY-MM-DD HH24:MI:SS'),'Node',53017,'N','N',30,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53316 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:36','YYYY-MM-DD HH24:MI:SS'),0,53317,'The record is active in the system',1,53298,'N',0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',TO_TIMESTAMP('2007-12-17 01:55:36','YYYY-MM-DD HH24:MI:SS'),'Active',53017,'N','N',40,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53317 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:37','YYYY-MM-DD HH24:MI:SS'),0,53318,'Method of ordering records; lowest number comes first',10,53300,'N',0,'The Sequence indicates the order of records',TO_TIMESTAMP('2007-12-17 01:55:37','YYYY-MM-DD HH24:MI:SS'),'Sequence',53017,'N','N',50,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53318 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 01:55:38','YYYY-MM-DD HH24:MI:SS'),0,53319,'Asset used internally or by customers',22,53295,'N',0,'An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.',TO_TIMESTAMP('2007-12-17 01:55:38','YYYY-MM-DD HH24:MI:SS'),'Asset',53017,'Y','N',60,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53319 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

UPDATE AD_Table SET Name='Workbench Trl', AccessLevel='4', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=231, IsDeleteable='Y', TableName='AD_Workbench_Trl', Description='Collection of windows, reports', IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:55:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=470
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6443
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=6443 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='T', Name='AD_Language', Description='Language selection', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:56:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=106
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=106
;

UPDATE AD_Ref_Table SET AD_Table_ID = 111, AD_Display = 204, AD_Key = 203, isValueDisplayed = 'N', OrderByClause = '', EntityType ='D', WhereClause = '' WHERE AD_Reference_ID = 106
;

UPDATE AD_Column SET Name='Language', IsMandatory='Y', IsTranslated='N', Description='Language for this entity', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Language identifies the language to use for display and formatting', AD_Reference_Value_ID=106, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='AD_Language', FieldLength=6, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=109, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:56:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6436
;

UPDATE AD_Field SET Name='Language', Description='Language for this entity', Help='The Language identifies the language to use for display and formatting' WHERE AD_Column_ID=6436 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6438
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=6438 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Workbench', IsMandatory='Y', IsTranslated='N', Description='Collection of windows, reports', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='AD_Workbench_ID', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=1646, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:57:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6435
;

UPDATE AD_Field SET Name='Workbench', Description='Collection of windows, reports', Help=NULL WHERE AD_Column_ID=6435 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:57:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6440
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=6440 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:58:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6441
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=6441 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:58:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6445
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=6445 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Comment/Help', IsMandatory='N', IsTranslated='N', Description='Comment or Hint', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Help field contains a hint, comment or help about the use of this item.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='Help', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=14, AD_Val_Rule_ID=NULL, AD_Element_ID=326, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6446
;

UPDATE AD_Field SET Name='Comment/Help', Description='Comment or Hint', Help='The Help field contains a hint, comment or help about the use of this item.' WHERE AD_Column_ID=6446 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:59:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6439
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=6439 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Translated', IsMandatory='Y', IsTranslated='N', Description='This column is translated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Translated checkbox indicates if this column is translated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='IsTranslated', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=420, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:59:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6447
;

UPDATE AD_Field SET Name='Translated', Description='This column is translated', Help='The Translated checkbox indicates if this column is translated.' WHERE AD_Column_ID=6447 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 01:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6437
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=6437 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6442
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=6442 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=470, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:00:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=6444
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=6444 AND IsCentrallyMaintained='Y'
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 02:00:20','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 02:00:20','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','Workflow Translation',15,470,53018,53005,'N','N','N','Y','N',NULL,'N','N',0,0,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53018 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'N','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:21','YYYY-MM-DD HH24:MI:SS'),0,53320,'Collection of windows, reports',22,6435,'N',0,TO_TIMESTAMP('2007-12-17 02:00:21','YYYY-MM-DD HH24:MI:SS'),'Workbench',53018,'N','N',0,'N','D')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53320 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:22','YYYY-MM-DD HH24:MI:SS'),0,53321,'Client/Tenant for this installation.',22,6437,'N',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',TO_TIMESTAMP('2007-12-17 02:00:22','YYYY-MM-DD HH24:MI:SS'),'Client',53018,'N','N',10,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53321 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:23','YYYY-MM-DD HH24:MI:SS'),0,53322,'Organizational entity within client',22,6438,'N',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',TO_TIMESTAMP('2007-12-17 02:00:23','YYYY-MM-DD HH24:MI:SS'),'Organization',53018,'Y','N',20,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53322 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:24','YYYY-MM-DD HH24:MI:SS'),0,53323,'Language for this entity',6,6436,'N',0,'The Language identifies the language to use for display and formatting',TO_TIMESTAMP('2007-12-17 02:00:24','YYYY-MM-DD HH24:MI:SS'),'Language',53018,'N','N',30,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53323 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:25','YYYY-MM-DD HH24:MI:SS'),0,53324,'Alphanumeric identifier of the entity',60,6444,'N',0,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',TO_TIMESTAMP('2007-12-17 02:00:25','YYYY-MM-DD HH24:MI:SS'),'Name',53018,'N','N',40,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53324 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:25','YYYY-MM-DD HH24:MI:SS'),0,53325,'Optional short description of the record',255,6445,'N',0,'A description is limited to 255 characters.',TO_TIMESTAMP('2007-12-17 02:00:25','YYYY-MM-DD HH24:MI:SS'),'Description',53018,'N','N',50,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53325 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:26','YYYY-MM-DD HH24:MI:SS'),0,53326,'Comment or Hint',2000,6446,'N',0,'The Help field contains a hint, comment or help about the use of this item.',TO_TIMESTAMP('2007-12-17 02:00:26','YYYY-MM-DD HH24:MI:SS'),'Comment/Help',53018,'N','N',60,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53326 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:27','YYYY-MM-DD HH24:MI:SS'),0,53327,'The record is active in the system',1,6439,'N',0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',TO_TIMESTAMP('2007-12-17 02:00:27','YYYY-MM-DD HH24:MI:SS'),'Active',53018,'N','N',70,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53327 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:00:28','YYYY-MM-DD HH24:MI:SS'),0,53328,'This column is translated',1,6447,'N',0,'The Translated checkbox indicates if this column is translated.',TO_TIMESTAMP('2007-12-17 02:00:28','YYYY-MM-DD HH24:MI:SS'),'Translated',53018,'N','N',80,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53328 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

UPDATE AD_Table SET Name='Workflow Trl', AccessLevel='6', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=113, IsDeleteable='Y', TableName='AD_Workflow_Trl', Description='Workflow or combination of tasks', IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=133
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:01:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=314
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=314 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Language', IsMandatory='Y', IsTranslated='N', Description='Language for this entity', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Language identifies the language to use for display and formatting', AD_Reference_Value_ID=106, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='AD_Language', FieldLength=6, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=109, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=313
;

UPDATE AD_Field SET Name='Language', Description='Language for this entity', Help='The Language identifies the language to use for display and formatting' WHERE AD_Column_ID=313 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:01:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1214
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=1214 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Workflow', IsMandatory='Y', IsTranslated='N', Description='Workflow or combination of tasks', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Workflow field identifies a unique Workflow in the system.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='AD_Workflow_ID', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=144, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:02:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=312
;

UPDATE AD_Field SET Name='Workflow', Description='Workflow or combination of tasks', Help='The Workflow field identifies a unique Workflow in the system.' WHERE AD_Column_ID=312 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=702
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=702 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=703
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=703 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:03:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=315
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=315 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Comment/Help', IsMandatory='N', IsTranslated='N', Description='Comment or Hint', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Help field contains a hint, comment or help about the use of this item.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='Help', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=14, AD_Val_Rule_ID=NULL, AD_Element_ID=326, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:03:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=316
;

UPDATE AD_Field SET Name='Comment/Help', Description='Comment or Hint', Help='The Help field contains a hint, comment or help about the use of this item.' WHERE AD_Column_ID=316 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=701
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=701 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Translated', IsMandatory='Y', IsTranslated='N', Description='This column is translated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Translated checkbox indicates if this column is translated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='IsTranslated', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=420, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:04:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=317
;

UPDATE AD_Field SET Name='Translated', Description='This column is translated', Help='The Translated checkbox indicates if this column is translated.' WHERE AD_Column_ID=317 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:04:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=704
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=704 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1213
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=1213 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=133, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=705
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=705 AND IsCentrallyMaintained='Y'
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 02:05:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 02:05:18','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','Manufacturing Workflows Translation',20,133,53019,53005,'N','N','Y','Y','N',NULL,'N','N',0,0,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53019 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

UPDATE AD_Table SET Name='AD_Workflow_Access', AccessLevel='6', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=113, IsDeleteable='Y', TableName='AD_Workflow_Access', Description=NULL, IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:05:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=202
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:05:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1341
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=1341 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:06:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1342
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=1342 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Role', IsMandatory='Y', IsTranslated='N', Description='Responsibility Role', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Role determines security and access a user who has this Role will have in the System.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='AD_Role_ID', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=123, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:07:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=4638
;

UPDATE AD_Field SET Name='Role', Description='Responsibility Role', Help='The Role determines security and access a user who has this Role will have in the System.' WHERE AD_Column_ID=4638 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Workflow', IsMandatory='Y', IsTranslated='N', Description='Workflow or combination of tasks', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Workflow field identifies a unique Workflow in the system.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='AD_Workflow_ID', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=144, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:07:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1339
;

UPDATE AD_Field SET Name='Workflow', Description='Workflow or combination of tasks', Help='The Workflow field identifies a unique Workflow in the system.' WHERE AD_Column_ID=1339 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:08:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1344
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=1344 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:09:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1345
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=1345 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1343
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=1343 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Read Write', IsMandatory='Y', IsTranslated='N', Description='Field is read / write', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Read Write indicates that this field may be read and updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='IsReadWrite', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=406, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1348
;

UPDATE AD_Field SET Name='Read Write', Description='Field is read / write', Help='The Read Write indicates that this field may be read and updated.' WHERE AD_Column_ID=1348 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:10:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1346
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=1346 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=202, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:10:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1347
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=1347 AND IsCentrallyMaintained='Y'
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 02:10:38','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 02:10:38','YYYY-MM-DD HH24:MI:SS'),0,0,'N','Access',30,202,53020,53005,'N','N','N','N','N',NULL,'N','N',0,0,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53020 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:10:40','YYYY-MM-DD HH24:MI:SS'),0,53329,'Client/Tenant for this installation.',14,1341,'N',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',TO_TIMESTAMP('2007-12-17 02:10:40','YYYY-MM-DD HH24:MI:SS'),'Client',53020,'N','N',10,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53329 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:10:41','YYYY-MM-DD HH24:MI:SS'),0,53330,'Organizational entity within client',14,1342,'N',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',TO_TIMESTAMP('2007-12-17 02:10:41','YYYY-MM-DD HH24:MI:SS'),'Organization',53020,'Y','N',20,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53330 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:10:43','YYYY-MM-DD HH24:MI:SS'),0,53331,'Workflow or combination of tasks',14,1339,'N',0,'The Workflow field identifies a unique Workflow in the system.',TO_TIMESTAMP('2007-12-17 02:10:43','YYYY-MM-DD HH24:MI:SS'),'Workflow',53020,'N','N',30,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53331 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (1,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:10:44','YYYY-MM-DD HH24:MI:SS'),0,53332,'Responsibility Role',14,4638,'N',0,'The Role determines security and access a user who has this Role will have in the System.',TO_TIMESTAMP('2007-12-17 02:10:44','YYYY-MM-DD HH24:MI:SS'),'Role',53020,'N','N',40,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53332 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:10:45','YYYY-MM-DD HH24:MI:SS'),0,53333,'The record is active in the system',1,1343,'N',0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',TO_TIMESTAMP('2007-12-17 02:10:45','YYYY-MM-DD HH24:MI:SS'),'Active',53020,'N','N',50,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53333 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:10:46','YYYY-MM-DD HH24:MI:SS'),0,53334,'Field is read / write',1,1348,'N',0,'The Read Write indicates that this field may be read and updated.',TO_TIMESTAMP('2007-12-17 02:10:46','YYYY-MM-DD HH24:MI:SS'),'Read Write',53020,'N','N',60,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53334 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

UPDATE AD_Table SET Name='Workflow Block', AccessLevel='6', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=113, IsDeleteable='Y', TableName='AD_WF_Block', Description='Workflow Transaction Execution Block', IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:10:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=647
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:11:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10495
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=10495 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:11:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10493
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=10493 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Workflow Block', IsMandatory='Y', IsTranslated='N', Description='Workflow Transaction Execution Block', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A workflow execution block is optional and allows all work to be performed in a single transaction. If one step (node activity) fails, the entire work is rolled back.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='AD_WF_Block_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=2309, IsUpdateable='N', IsKey='Y', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10494
;

UPDATE AD_Field SET Name='Workflow Block', Description='Workflow Transaction Execution Block', Help='A workflow execution block is optional and allows all work to be performed in a single transaction. If one step (node activity) fails, the entire work is rolled back.' WHERE AD_Column_ID=10494 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Workflow', IsMandatory='Y', IsTranslated='N', Description='Workflow or combination of tasks', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Workflow field identifies a unique Workflow in the system.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='AD_Workflow_ID', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=144, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:12:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10487
;

UPDATE AD_Field SET Name='Workflow', Description='Workflow or combination of tasks', Help='The Workflow field identifies a unique Workflow in the system.' WHERE AD_Column_ID=10487 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:12:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10492
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=10492 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:13:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10489
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=10489 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10485
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=10485 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:13:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10490
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=10490 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:14:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10486
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=10486 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:14:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10488
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=10488 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=647, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:14:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10491
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=10491 AND IsCentrallyMaintained='Y'
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,Help,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 02:14:41','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 02:14:41','YYYY-MM-DD HH24:MI:SS'),0,'  ',0,'N','Block',40,647,53021,53005,'N','N','Y','N','N',NULL,'N','N',0,0,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53021 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'N','Y','Y',TO_TIMESTAMP('2007-12-17 02:14:42','YYYY-MM-DD HH24:MI:SS'),0,53335,'Workflow Transaction Execution Block',14,10494,'N',0,'A workflow execution block is optional and allows all work to be performed in a single transaction. If one step (node activity) fails, the entire work is rolled back.',TO_TIMESTAMP('2007-12-17 02:14:42','YYYY-MM-DD HH24:MI:SS'),'Workflow Block',53021,'N','N',10,'N','D')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53335 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:14:43','YYYY-MM-DD HH24:MI:SS'),0,53336,'Client/Tenant for this installation.',14,10486,'N',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',TO_TIMESTAMP('2007-12-17 02:14:43','YYYY-MM-DD HH24:MI:SS'),'Client',53021,'N','N',20,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53336 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:14:44','YYYY-MM-DD HH24:MI:SS'),0,53337,'Organizational entity within client',14,10493,'N',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',TO_TIMESTAMP('2007-12-17 02:14:44','YYYY-MM-DD HH24:MI:SS'),'Organization',53021,'Y','N',30,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53337 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:14:45','YYYY-MM-DD HH24:MI:SS'),0,53338,'Workflow or combination of tasks',14,10487,'N',0,'The Workflow field identifies a unique Workflow in the system.',TO_TIMESTAMP('2007-12-17 02:14:45','YYYY-MM-DD HH24:MI:SS'),'Workflow',53021,'N','N',40,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53338 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (1,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:14:46','YYYY-MM-DD HH24:MI:SS'),0,53339,'Alphanumeric identifier of the entity',60,10491,'N',0,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',TO_TIMESTAMP('2007-12-17 02:14:46','YYYY-MM-DD HH24:MI:SS'),'Name',53021,'N','N',50,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53339 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:14:47','YYYY-MM-DD HH24:MI:SS'),0,53340,'Optional short description of the record',60,10485,'N',0,'A description is limited to 255 characters.',TO_TIMESTAMP('2007-12-17 02:14:47','YYYY-MM-DD HH24:MI:SS'),'Description',53021,'N','N',60,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53340 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:14:48','YYYY-MM-DD HH24:MI:SS'),0,53341,'The record is active in the system',1,10490,'N',0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',TO_TIMESTAMP('2007-12-17 02:14:48','YYYY-MM-DD HH24:MI:SS'),'Active',53021,'N','N',70,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53341 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

UPDATE AD_Table SET Name='AD_PInstance_Para', AccessLevel='6', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=332, IsDeleteable='Y', TableName='AD_PInstance_Para', Description=NULL, IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=283
;

UPDATE AD_Column SET Name='Client', IsMandatory='N', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:15:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8232
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=8232 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='N', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8231
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=8231 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='N', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8228
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=8228 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='N', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:16:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8227
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=8227 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Info', IsMandatory='N', IsTranslated='N', Description='Information', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Information displays data from the source document line.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='Info', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=1270, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:16:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5664
;

UPDATE AD_Field SET Name='Info', Description='Information', Help='The Information displays data from the source document line.' WHERE AD_Column_ID=5664 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Info To', IsMandatory='N', IsTranslated='N', Description=NULL, IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='Info_To', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=1560, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:17:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=5665
;

UPDATE AD_Field SET Name='Info To', Description=NULL, Help=NULL WHERE AD_Column_ID=5665 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='N', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:17:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8229
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=8229 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='N', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:17:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8226
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=8226 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='N', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:18:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=8230
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=8230 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Parameter Name', IsMandatory='N', IsTranslated='N', Description=NULL, IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='ParameterName', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=1196, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:18:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=4213
;

UPDATE AD_Field SET Name='Parameter Name', Description=NULL, Help=NULL WHERE AD_Column_ID=4213 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Number', Description='Float Number', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:18:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=22
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=22
;

UPDATE AD_Column SET Name='Process Number', IsMandatory='N', IsTranslated='N', Description='Process Parameter', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='P_Number', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=22, AD_Val_Rule_ID=NULL, AD_Element_ID=1121, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:18:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=3734
;

UPDATE AD_Field SET Name='Process Number', Description='Process Parameter', Help=NULL WHERE AD_Column_ID=3734 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Process Instance', IsMandatory='Y', IsTranslated='N', Description='Instance of the process', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='AD_PInstance_ID', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=114, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:19:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=2787
;

UPDATE AD_Field SET Name='Process Instance', Description='Instance of the process', Help=NULL WHERE AD_Column_ID=2787 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Process Number To', IsMandatory='N', IsTranslated='N', Description='Process Parameter', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='P_Number_To', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=22, AD_Val_Rule_ID=NULL, AD_Element_ID=1122, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:19:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=3735
;

UPDATE AD_Field SET Name='Process Number To', Description='Process Parameter', Help=NULL WHERE AD_Column_ID=3735 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Process String', IsMandatory='N', IsTranslated='N', Description='Process Parameter', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='P_String', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=491, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=2791
;

UPDATE AD_Field SET Name='Process String', Description='Process Parameter', Help=NULL WHERE AD_Column_ID=2791 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Process String To', IsMandatory='N', IsTranslated='N', Description='Process Parameter', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='P_String_To', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=492, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=2792
;

UPDATE AD_Field SET Name='Process String To', Description='Process Parameter', Help=NULL WHERE AD_Column_ID=2792 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Sequence', IsMandatory='Y', IsTranslated='N', Description='Method of ordering records; lowest number comes first', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Sequence indicates the order of records', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='SeqNo', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=566, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:20:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=3733
;

UPDATE AD_Field SET Name='Sequence', Description='Method of ordering records; lowest number comes first', Help='The Sequence indicates the order of records' WHERE AD_Column_ID=3733 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Process Date To', IsMandatory='N', IsTranslated='N', Description='Process Parameter', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='P_Date_To', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=15, AD_Val_Rule_ID=NULL, AD_Element_ID=484, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:20:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=2798
;

UPDATE AD_Field SET Name='Process Date To', Description='Process Parameter', Help=NULL WHERE AD_Column_ID=2798 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Process Date', IsMandatory='N', IsTranslated='N', Description='Process Parameter', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=283, ColumnName='P_Date', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=15, AD_Val_Rule_ID=NULL, AD_Element_ID=483, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:21:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=2797
;

UPDATE AD_Field SET Name='Process Date', Description='Process Parameter', Help=NULL WHERE AD_Column_ID=2797 AND IsCentrallyMaintained='Y'
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 02:21:18','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 02:21:18','YYYY-MM-DD HH24:MI:SS'),0,0,'N','Parameter',60,283,53022,53005,'N','N','N','N','N',NULL,'N','N',0,0,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53022 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

UPDATE AD_Table SET Name='Node Trl', AccessLevel='6', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=113, IsDeleteable='Y', TableName='AD_WF_Node_Trl', Description='Workflow Node (activity), step or process', IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=130
;

UPDATE AD_Column SET Name='Name', IsMandatory='Y', IsTranslated='N', Description='Alphanumeric identifier of the entity', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='Name', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=469, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:21:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=299
;

UPDATE AD_Field SET Name='Name', Description='Alphanumeric identifier of the entity', Help='The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.' WHERE AD_Column_ID=299 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Language', IsMandatory='Y', IsTranslated='N', Description='Language for this entity', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Language identifies the language to use for display and formatting', AD_Reference_Value_ID=106, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='AD_Language', FieldLength=6, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=109, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:22:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=298
;

UPDATE AD_Field SET Name='Language', Description='Language for this entity', Help='The Language identifies the language to use for display and formatting' WHERE AD_Column_ID=298 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1208
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=1208 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Node', IsMandatory='Y', IsTranslated='N', Description='Workflow Node (activity), step or process', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Workflow Node indicates a unique step or process in a Workflow.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='AD_WF_Node_ID', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=142, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:22:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=297
;

UPDATE AD_Field SET Name='Node', Description='Workflow Node (activity), step or process', Help='The Workflow Node indicates a unique step or process in a Workflow.' WHERE AD_Column_ID=297 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:23:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=687
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=687 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:23:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=688
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=688 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Description', IsMandatory='N', IsTranslated='N', Description='Optional short description of the record', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A description is limited to 255 characters.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='Description', FieldLength=255, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=275, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:23:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=300
;

UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 255 characters.' WHERE AD_Column_ID=300 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Comment/Help', IsMandatory='N', IsTranslated='N', Description='Comment or Hint', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Help field contains a hint, comment or help about the use of this item.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='Help', FieldLength=2000, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=14, AD_Val_Rule_ID=NULL, AD_Element_ID=326, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=2290
;

UPDATE AD_Field SET Name='Comment/Help', Description='Comment or Hint', Help='The Help field contains a hint, comment or help about the use of this item.' WHERE AD_Column_ID=2290 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:24:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=686
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=686 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Translated', IsMandatory='Y', IsTranslated='N', Description='This column is translated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Translated checkbox indicates if this column is translated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='IsTranslated', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=420, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:25:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=301
;

UPDATE AD_Field SET Name='Translated', Description='This column is translated', Help='The Translated checkbox indicates if this column is translated.' WHERE AD_Column_ID=301 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:25:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=689
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=689 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:26:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1207
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=1207 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=130, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:26:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=690
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=690 AND IsCentrallyMaintained='Y'
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 02:26:24','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 02:26:24','YYYY-MM-DD HH24:MI:SS'),0,0,'N','Node Translation',70,130,53023,53005,'N','N','N','N','N',NULL,'N','N',0,0,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53023 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:25','YYYY-MM-DD HH24:MI:SS'),0,53342,'Client/Tenant for this installation.',14,1207,'N',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',TO_TIMESTAMP('2007-12-17 02:26:25','YYYY-MM-DD HH24:MI:SS'),'Client',53023,'N','N',10,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53342 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:26','YYYY-MM-DD HH24:MI:SS'),0,53343,'Organizational entity within client',14,1208,'N',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',TO_TIMESTAMP('2007-12-17 02:26:26','YYYY-MM-DD HH24:MI:SS'),'Organization',53023,'Y','N',20,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53343 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:27','YYYY-MM-DD HH24:MI:SS'),0,53344,'Workflow Node (activity), step or process',14,297,'N',0,'The Workflow Node indicates a unique step or process in a Workflow.',TO_TIMESTAMP('2007-12-17 02:26:27','YYYY-MM-DD HH24:MI:SS'),'Node',53023,'N','N',30,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53344 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:28','YYYY-MM-DD HH24:MI:SS'),0,53345,'Language for this entity',14,298,'N',0,'The Language identifies the language to use for display and formatting',TO_TIMESTAMP('2007-12-17 02:26:28','YYYY-MM-DD HH24:MI:SS'),'Language',53023,'N','N',40,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53345 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:29','YYYY-MM-DD HH24:MI:SS'),0,53346,'The record is active in the system',1,686,'N',0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',TO_TIMESTAMP('2007-12-17 02:26:29','YYYY-MM-DD HH24:MI:SS'),'Active',53023,'N','N',50,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53346 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:29','YYYY-MM-DD HH24:MI:SS'),0,53347,'This column is translated',1,301,'N',0,'The Translated checkbox indicates if this column is translated.',TO_TIMESTAMP('2007-12-17 02:26:29','YYYY-MM-DD HH24:MI:SS'),'Translated',53023,'N','N',60,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53347 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:30','YYYY-MM-DD HH24:MI:SS'),0,53348,'Alphanumeric identifier of the entity',60,299,'N',0,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',TO_TIMESTAMP('2007-12-17 02:26:30','YYYY-MM-DD HH24:MI:SS'),'Name',53023,'N','N',70,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53348 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:31','YYYY-MM-DD HH24:MI:SS'),0,53349,'Optional short description of the record',60,300,'N',0,'A description is limited to 255 characters.',TO_TIMESTAMP('2007-12-17 02:26:31','YYYY-MM-DD HH24:MI:SS'),'Description',53023,'N','N',80,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53349 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:26:32','YYYY-MM-DD HH24:MI:SS'),0,53350,'Comment or Hint',60,2290,'N',0,'The Help field contains a hint, comment or help about the use of this item.',TO_TIMESTAMP('2007-12-17 02:26:32','YYYY-MM-DD HH24:MI:SS'),'Comment/Help',53023,'N','N',90,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53350 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

UPDATE AD_Table SET Name='Transition Condition', AccessLevel='6', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=113, IsDeleteable='Y', TableName='AD_WF_NextCondition', Description='Workflow Node Transition Condition', IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:26:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=706
;

UPDATE AD_Column SET Name='Value To', IsMandatory='N', IsTranslated='N', Description='Value To', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='Value2', FieldLength=40, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=1455, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:27:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11576
;

UPDATE AD_Field SET Name='Value To', Description='Value To', Help=NULL WHERE AD_Column_ID=11576 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Column', IsMandatory='Y', IsTranslated='N', Description='Column in the table', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Link to the database column of the table', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='AD_Column_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=100, AD_Element_ID=104, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:27:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11579
;

UPDATE AD_Field SET Name='Column', Description='Column in the table', Help='Link to the database column of the table' WHERE AD_Column_ID=11579 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Organization', IsMandatory='Y', IsTranslated='N', Description='Organizational entity within client', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Org_ID@', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='AD_Org_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=104, AD_Element_ID=113, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11569
;

UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=11569 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Transition Condition', IsMandatory='Y', IsTranslated='N', Description='Workflow Node Transition Condition', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Optional restriction of transition of one node to the next', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='AD_WF_NextCondition_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=13, AD_Val_Rule_ID=NULL, AD_Element_ID=2461, IsUpdateable='N', IsKey='Y', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11565
;

UPDATE AD_Field SET Name='Transition Condition', Description='Workflow Node Transition Condition', Help='Optional restriction of transition of one node to the next' WHERE AD_Column_ID=11565 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Node Transition', IsMandatory='Y', IsTranslated='N', Description='Workflow Node Transition', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Next Nodes Tab defines the order or Nodes or Steps in a Workflow.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='AD_WF_NodeNext_ID', FieldLength=22, IsParent='Y', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2462, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11571
;

UPDATE AD_Field SET Name='Node Transition', Description='Workflow Node Transition', Help='The Next Nodes Tab defines the order or Nodes or Steps in a Workflow.' WHERE AD_Column_ID=11571 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='AD_Find AndOr', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:28:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=204
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=204
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=204, Value='A', Name='And', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:28:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=364
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=364
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=204, Value='O', Name='Or', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:29:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=365
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=365
;

UPDATE AD_Column SET Name='And/Or', IsMandatory='Y', IsTranslated='N', Description='Logical operation: AND or OR', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='O', Help=NULL, AD_Reference_Value_ID=204, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='AndOr', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=1452, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:29:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11566
;

UPDATE AD_Field SET Name='And/Or', Description='Logical operation: AND or OR', Help=NULL WHERE AD_Column_ID=11566 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created', IsMandatory='Y', IsTranslated='N', Description='Date this record was created', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created field indicates the date that this record was created.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='Created', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=245, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:29:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11567
;

UPDATE AD_Field SET Name='Created', Description='Date this record was created', Help='The Created field indicates the date that this record was created.' WHERE AD_Column_ID=11567 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Created By', IsMandatory='Y', IsTranslated='N', Description='User who created this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Created By field indicates the user who created this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='CreatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=246, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:30:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11564
;

UPDATE AD_Field SET Name='Created By', Description='User who created this records', Help='The Created By field indicates the user who created this record.' WHERE AD_Column_ID=11564 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Entity Type', IsMandatory='Y', IsTranslated='N', Description='Dictionary Entity Type; Determines ownership and synchronization', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='U', Help='The Entity Types "Dictionary", "Adempiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.  

For customizations, copy the entity and select "User"!', AD_Reference_Value_ID=389, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='EntityType', FieldLength=40, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=1682, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic='@EntityType@=D', IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11577
;

UPDATE AD_Field SET Name='Entity Type', Description='Dictionary Entity Type; Determines ownership and synchronization', Help='The Entity Types "Dictionary", "Adempiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.  

For customizations, copy the entity and select "User"!' WHERE AD_Column_ID=11577 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Active', IsMandatory='Y', IsTranslated='N', Description='The record is active in the system', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='Y', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='IsActive', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=20, AD_Val_Rule_ID=NULL, AD_Element_ID=348, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:31:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11575
;

UPDATE AD_Field SET Name='Active', Description='The record is active in the system', Help='There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' WHERE AD_Column_ID=11575 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='AD_Find Operation', Description=NULL, IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=205
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=205
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='==', Name=' =', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:31:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=366
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=366
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='>=', Name='>=', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:31:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=367
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=367
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='>>', Name='>', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:31:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=368
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=368
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='<<', Name='<', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:32:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=369
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=369
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='~~', Name=' ~', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=370
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=370
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='<=', Name='<=', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:32:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=371
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=371
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='AB', Name='|<x>|', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:32:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=372
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=372
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='SQ', Name='sql', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:32:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=373
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=373
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=205, Value='!=', Name='!=', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:32:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=672
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=672
;

UPDATE AD_Column SET Name='Operation', IsMandatory='Y', IsTranslated='N', Description='Compare Operation', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=205, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='Operation', FieldLength=2, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=1454, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:32:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11568
;

UPDATE AD_Field SET Name='Operation', Description='Compare Operation', Help=NULL WHERE AD_Column_ID=11568 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Sequence', IsMandatory='Y', IsTranslated='N', Description='Method of ordering records; lowest number comes first', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@SQL=SELECT COALESCE(MAX(SeqNo),0)+10 AS DefaultValue FROM AD_WF_NextCondition WHERE AD_WF_NodeNext_ID=@AD_WF_NodeNext_ID@', Help='The Sequence indicates the order of records', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='SeqNo', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=11, AD_Val_Rule_ID=NULL, AD_Element_ID=566, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:33:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11572
;

UPDATE AD_Field SET Name='Sequence', Description='Method of ordering records; lowest number comes first', Help='The Sequence indicates the order of records' WHERE AD_Column_ID=11572 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated', IsMandatory='Y', IsTranslated='N', Description='Date this record was updated', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated field indicates the date that this record was updated.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='Updated', FieldLength=7, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=16, AD_Val_Rule_ID=NULL, AD_Element_ID=607, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:33:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11578
;

UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=11578 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Updated By', IsMandatory='Y', IsTranslated='N', Description='User who updated this records', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The Updated By field indicates the user who updated this record.', AD_Reference_Value_ID=110, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='UpdatedBy', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=608, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11574
;

UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=11574 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Client', IsMandatory='Y', IsTranslated='N', Description='Client/Tenant for this installation.', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='@AD_Client_ID@', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='AD_Client_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=102, IsUpdateable='N', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:34:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11570
;

UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=11570 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Search Key', IsMandatory='Y', IsTranslated='N', Description='Search key for the record in the format required - must be unique', IsIdentifier='Y', SeqNo=1, ColumnSQL=NULL, DefaultValue=NULL, Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=706, ColumnName='Value', FieldLength=40, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=620, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:34:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11573
;

UPDATE AD_Field SET Name='Search Key', Description='Search key for the record in the format required - must be unique', Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).' WHERE AD_Column_ID=11573 AND IsCentrallyMaintained='Y'
;

INSERT INTO AD_Tab (Created,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsTranslationTab,Name,SeqNo,AD_Table_ID,AD_Tab_ID,AD_Window_ID,HasTree,IsSortTab,IsSingleRow,IsActive,IsInfoTab,CommitWarning,IsReadOnly,Processing,UpdatedBy,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES (TO_TIMESTAMP('2007-12-17 02:34:58','YYYY-MM-DD HH24:MI:SS'),0,TO_TIMESTAMP('2007-12-17 02:34:58','YYYY-MM-DD HH24:MI:SS'),0,0,'N','Condition',90,706,53024,53005,'N','N','Y','N','N',NULL,'N','N',0,0,'Y','N','EE01')
;

INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53024 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'N','Y','Y',TO_TIMESTAMP('2007-12-17 02:34:59','YYYY-MM-DD HH24:MI:SS'),0,53351,'Workflow Node Transition Condition',14,11565,'N',0,'Optional restriction of transition of one node to the next',TO_TIMESTAMP('2007-12-17 02:34:59','YYYY-MM-DD HH24:MI:SS'),'Transition Condition',53024,'N','N',10,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53351 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:00','YYYY-MM-DD HH24:MI:SS'),0,53352,'Client/Tenant for this installation.',14,11570,'N',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',TO_TIMESTAMP('2007-12-17 02:35:00','YYYY-MM-DD HH24:MI:SS'),'Client',53024,'N','N',20,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53352 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:01','YYYY-MM-DD HH24:MI:SS'),0,53353,'Organizational entity within client',14,11569,'N',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',TO_TIMESTAMP('2007-12-17 02:35:01','YYYY-MM-DD HH24:MI:SS'),'Organization',53024,'Y','N',30,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53353 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:02','YYYY-MM-DD HH24:MI:SS'),0,53354,'Workflow Node Transition',14,11571,'N',0,'The Next Nodes Tab defines the order or Nodes or Steps in a Workflow.',TO_TIMESTAMP('2007-12-17 02:35:02','YYYY-MM-DD HH24:MI:SS'),'Node Transition',53024,'N','N',40,'Y','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53354 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (1,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:03','YYYY-MM-DD HH24:MI:SS'),0,53355,'Method of ordering records; lowest number comes first',11,11572,'N',0,'The Sequence indicates the order of records',TO_TIMESTAMP('2007-12-17 02:35:03','YYYY-MM-DD HH24:MI:SS'),'Sequence',53024,'N','N',50,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53355 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:04','YYYY-MM-DD HH24:MI:SS'),0,53356,'The record is active in the system',1,11575,'N',0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',TO_TIMESTAMP('2007-12-17 02:35:04','YYYY-MM-DD HH24:MI:SS'),'Active',53024,'N','N',60,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53356 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:05','YYYY-MM-DD HH24:MI:SS'),0,53357,'Logical operation: AND or OR',14,11566,'N',0,TO_TIMESTAMP('2007-12-17 02:35:05','YYYY-MM-DD HH24:MI:SS'),'And/Or',53024,'N','N',70,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53357 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:06','YYYY-MM-DD HH24:MI:SS'),0,53358,'Column in the table',14,11579,'N',0,'Link to the database column of the table',TO_TIMESTAMP('2007-12-17 02:35:06','YYYY-MM-DD HH24:MI:SS'),'Column',53024,'N','N',80,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53358 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:06','YYYY-MM-DD HH24:MI:SS'),0,53359,'Compare Operation',14,11568,'N',0,TO_TIMESTAMP('2007-12-17 02:35:06','YYYY-MM-DD HH24:MI:SS'),'Operation',53024,'Y','N',90,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53359 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','N','Y',TO_TIMESTAMP('2007-12-17 02:35:09','YYYY-MM-DD HH24:MI:SS'),0,53360,'Condition Value',20,11573,'N',0,TO_TIMESTAMP('2007-12-17 02:35:09','YYYY-MM-DD HH24:MI:SS'),'Value',53024,'N','N',100,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53360 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,DisplayLogic,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:09','YYYY-MM-DD HH24:MI:SS'),0,53361,'Value To',20,11576,'N',0,TO_TIMESTAMP('2007-12-17 02:35:09','YYYY-MM-DD HH24:MI:SS'),'Value To',53024,'Y','N',110,'N','@Operation@=AB','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53361 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

INSERT INTO AD_Field (SortNo,AD_Org_ID,UpdatedBy,IsDisplayed,IsCentrallyMaintained,IsActive,Created,AD_Client_ID,AD_Field_ID,Description,DisplayLength,AD_Column_ID,IsFieldOnly,CreatedBy,Help,Updated,Name,AD_Tab_ID,IsSameLine,IsHeading,SeqNo,IsReadOnly,EntityType) VALUES (0,0,0,'Y','Y','Y',TO_TIMESTAMP('2007-12-17 02:35:10','YYYY-MM-DD HH24:MI:SS'),0,53362,'Dictionary Entity Type; Determines ownership and synchronization',20,11577,'N',0,'The Entity Types "Dictionary", "Adempiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.  

For customizations, copy the entity and select "User"!',TO_TIMESTAMP('2007-12-17 02:35:10','YYYY-MM-DD HH24:MI:SS'),'Entity Type',53024,'N','N',120,'N','EE01')
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=53362 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

UPDATE AD_Table SET Name='Node', AccessLevel='6', Help=NULL, IsActive='Y', IsSecurityEnabled='N', AD_Window_ID=113, IsDeleteable='Y', TableName='AD_WF_Node', Description='Workflow Node (activity) step or process', IsHighVolume='N', ImportTable=NULL, IsView='N', IsChangeLog='N', ReplicationType='L', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=129
;

UPDATE AD_Column SET Name='Attribute Value', IsMandatory='N', IsTranslated='N', Description='Value of the Attribute', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Adempiere converts the (string) field values to the attribute data type.  Booleans (Yes-No) may have the values "true" and "false", the date format is YYYY-MM-DD', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='AttributeValue', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=2317, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:35:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11560
;

UPDATE AD_Field SET Name='Attribute Value', Description='Value of the Attribute', Help='Adempiere converts the (string) field values to the attribute data type.  Booleans (Yes-No) may have the values "true" and "false", the date format is YYYY-MM-DD' WHERE AD_Column_ID=11560 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Column', IsMandatory='N', IsTranslated='N', Description='Column in the table', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Link to the database column of the table', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='AD_Column_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=100, AD_Element_ID=104, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:36:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11558
;

UPDATE AD_Field SET Name='Column', Description='Column in the table', Help='Link to the database column of the table' WHERE AD_Column_ID=11558 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Image', IsMandatory='N', IsTranslated='N', Description='Image or Icon', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Images and Icon can be used to display supported graphic formats (gif, jpg, png).
You can either load the image (in the database) or point to a graphic via a URI (i.e. it can point to a resource, http address)', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='AD_Image_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=1639, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:36:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10575
;

UPDATE AD_Field SET Name='Image', Description='Image or Icon', Help='Images and Icon can be used to display supported graphic formats (gif, jpg, png).
You can either load the image (in the database) or point to a graphic via a URI (i.e. it can point to a resource, http address)' WHERE AD_Column_ID=10575 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Val_Rule SET IsActive='Y', Code='AD_WF_Block.AD_Workflow_ID=@AD_Workflow_ID@', Name='AD_WF_Block of Workflow', Description=NULL, Type='S', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Val_Rule_ID=185
;

UPDATE AD_Column SET Name='Workflow Block', IsMandatory='N', IsTranslated='N', Description='Workflow Transaction Execution Block', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='A workflow execution block is optional and allows all work to be performed in a single transaction. If one step (node activity) fails, the entire work is rolled back.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='AD_WF_Block_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=185, AD_Element_ID=2309, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:36:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10556
;

UPDATE AD_Field SET Name='Workflow Block', Description='Workflow Transaction Execution Block', Help='A workflow execution block is optional and allows all work to be performed in a single transaction. If one step (node activity) fails, the entire work is rolled back.' WHERE AD_Column_ID=10556 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Workflow Responsible', IsMandatory='N', IsTranslated='N', Description='Responsible for Workflow Execution', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='The ultimate responsibility for a workflow is with an actual user. The Workflow Responsible allows to define ways to find that actual User.', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='AD_WF_Responsible_ID', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=19, AD_Val_Rule_ID=NULL, AD_Element_ID=2314, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:37:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10549
;

UPDATE AD_Field SET Name='Workflow Responsible', Description='Responsible for Workflow Execution', Help='The ultimate responsibility for a workflow is with an actual user. The Workflow Responsible allows to define ways to find that actual User.' WHERE AD_Column_ID=10549 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Attribute Name', IsMandatory='N', IsTranslated='N', Description='Name of the Attribute', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Identifier of the attribute', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='AttributeName', FieldLength=60, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=10, AD_Val_Rule_ID=NULL, AD_Element_ID=2315, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:37:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11561
;

UPDATE AD_Field SET Name='Attribute Name', Description='Name of the Attribute', Help='Identifier of the attribute' WHERE AD_Column_ID=11561 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='D', Name='Costs+Prices', Description='Costs + Prices (minimum currency precision but if exists more)', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=37
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=37
;

UPDATE AD_Column SET Name='Cost', IsMandatory='Y', IsTranslated='N', Description='Cost information', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help=NULL, AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='Cost', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=37, AD_Val_Rule_ID=NULL, AD_Element_ID=2319, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:38:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10552
;

UPDATE AD_Field SET Name='Cost', Description='Cost information', Help=NULL WHERE AD_Column_ID=10552 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='_Document Action', Description='Document action list', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=135
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=135
;

UPDATE AD_Column SET Name='Document Action', IsMandatory='N', IsTranslated='N', Description='The targeted status of the document', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='CO', Help='You find the current status in the Document Status field. The options are listed in a popup', AD_Reference_Value_ID=135, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='DocAction', FieldLength=2, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=287, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:40:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=11677
;

UPDATE AD_Field SET Name='Document Action', Description='The targeted status of the document', Help='You find the current status in the Document Status field. The options are listed in a popup' WHERE AD_Column_ID=11677 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Duration', IsMandatory='Y', IsTranslated='N', Description='Normal Duration in Duration Unit', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Expected (normal) Length of time for the execution', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='Duration', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=11, AD_Val_Rule_ID=NULL, AD_Element_ID=2320, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:40:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=10550
;

UPDATE AD_Field SET Name='Duration', Description='Normal Duration in Duration Unit', Help='Expected (normal) Length of time for the execution' WHERE AD_Column_ID=10550 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Dynamic Priority Change', IsMandatory='N', IsTranslated='N', Description='Change of priority when Activity is suspended waiting for user', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Starting with the Process / Node priority level, the priority of the suspended activity can be changed dynamically. Example +5 every 10 minutes', AD_Reference_Value_ID=NULL, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='DynPriorityChange', FieldLength=22, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=22, AD_Val_Rule_ID=NULL, AD_Element_ID=2636, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=12941
;

UPDATE AD_Field SET Name='Dynamic Priority Change', Description='Change of priority when Activity is suspended waiting for user', Help='Starting with the Process / Node priority level, the priority of the suspended activity can be changed dynamically. Example +5 every 10 minutes' WHERE AD_Column_ID=12941 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Reference SET Help=NULL, ValidationType='L', Name='_Frequency Type', Description='Processor Frequency Type', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:41:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Reference_ID=221
;

UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=221
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=221, Value='M', Name='Minute', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:41:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=439
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=439
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=221, Value='H', Name='Hour', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:41:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=440
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=440
;

UPDATE AD_Ref_List SET Description=NULL, AD_Reference_ID=221, Value='D', Name='Day', IsActive='Y', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Ref_List_ID=441
;

UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=441
;

UPDATE AD_Column SET Name='Dynamic Priority Unit', IsMandatory='N', IsTranslated='N', Description='Change of priority when Activity is suspended waiting for user', IsIdentifier='N', ColumnSQL=NULL, DefaultValue=NULL, Help='Starting with the Process / Node priority level, the priority of the suspended activity can be changed dynamically. Example +5 every 10 minutes', AD_Reference_Value_ID=221, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='DynPriorityUnit', FieldLength=1, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=17, AD_Val_Rule_ID=NULL, AD_Element_ID=2638, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic=NULL, IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:42:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=12940
;

UPDATE AD_Field SET Name='Dynamic Priority Unit', Description='Change of priority when Activity is suspended waiting for user', Help='Starting with the Process / Node priority level, the priority of the suspended activity can be changed dynamically. Example +5 every 10 minutes' WHERE AD_Column_ID=12940 AND IsCentrallyMaintained='Y'
;

UPDATE AD_Column SET Name='Entity Type', IsMandatory='Y', IsTranslated='N', Description='Dictionary Entity Type; Determines ownership and synchronization', IsIdentifier='N', ColumnSQL=NULL, DefaultValue='''U''', Help='The Entity Types "Dictionary", "Adempiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.  

For customizations, copy the entity and select "User"!', AD_Reference_Value_ID=389, Version=0, IsActive='Y', AD_Table_ID=129, ColumnName='EntityType', FieldLength=40, IsParent='N', IsSyncDatabase='Y', VFormat=NULL, AD_Reference_ID=18, AD_Val_Rule_ID=NULL, AD_Element_ID=1682, IsUpdateable='Y', IsKey='N', IsSelectionColumn='N', AD_Process_ID=NULL, Callout=NULL, ReadOnlyLogic='@EntityType@=D', IsAlwaysUpdateable='N', EntityType='D',Updated=TO_TIMESTAMP('2007-12-17 02:42:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=7725
;

UPDATE AD_Field SET Name='Entity Type', Description='Dictionary Entity Type; Determines ownership and synchronization', Help='The Entity Types "Dictionary", "Adempiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.  

For customizations, copy the entity and select "User"!' WHERE AD_Column_ID=7725 AND IsCentrallyMaintained='Y'
;

