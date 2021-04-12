ALTER TABLE C_AcctProcessor ALTER FrequencyType DROP NOT NULL
;

ALTER TABLE C_AcctProcessor ALTER Frequency DROP NOT NULL
;

ALTER TABLE AD_AlertProcessor ALTER FrequencyType DROP NOT NULL
;

ALTER TABLE AD_AlertProcessor ALTER Frequency DROP NOT NULL
;

ALTER TABLE R_RequestProcessor ALTER FrequencyType DROP NOT NULL
;

ALTER TABLE R_RequestProcessor ALTER Frequency DROP NOT NULL
;

ALTER TABLE AD_Scheduler ALTER FrequencyType DROP NOT NULL
;

ALTER TABLE AD_Scheduler ALTER Frequency DROP NOT NULL
;

ALTER TABLE AD_WorkflowProcessor ALTER FrequencyType DROP NOT NULL
;

ALTER TABLE AD_WorkflowProcessor ALTER Frequency DROP NOT NULL
;

-- Oct 2, 2012 10:44:20 PM COT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_TIMESTAMP('2012-10-02 22:44:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9434
;

SELECT register_migration_script('912_IDEMPIERE-391.sql') FROM dual
;

