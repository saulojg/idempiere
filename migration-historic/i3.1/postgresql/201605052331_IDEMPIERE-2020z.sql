-- Feb 25, 2015 5:55:52 PM COT
INSERT INTO t_alter_column values('ad_column','VFormat','VARCHAR(255)',null,'NULL')
;

-- Feb 25, 2015 5:56:14 PM COT
UPDATE AD_Column SET FieldLength=255,Updated=TO_TIMESTAMP('2015-02-25 17:56:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3740
;

-- Feb 25, 2015 5:56:15 PM COT
INSERT INTO t_alter_column values('ad_process_para','VFormat','VARCHAR(255)',null,'NULL')
;

-- Feb 25, 2015 5:57:01 PM COT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (211840,0,'Value Format','Format of the value; Can contain fixed format elements, Variables: "_lLoOaAcCa09"','<B>Validation elements:</B>
 	(Space) any character
_	Space (fixed character)
l	any Letter a..Z NO space
L	any Letter a..Z NO space converted to upper case
o	any Letter a..Z or space
O	any Letter a..Z or space converted to upper case
a	any Letters & Digits NO space
A	any Letters & Digits NO space converted to upper case
c	any Letters & Digits or space
C	any Letters & Digits or space converted to upper case
0	Digits 0..9 NO space
9	Digits 0..9 or space

Example of format "(000)_000-0000"',464,'VFormat',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2015-02-25 17:57:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-02-25 17:57:00','YYYY-MM-DD HH24:MI:SS'),100,616,'Y','N','U','N','N','N','Y','35514060-1c96-435d-b3bf-101ed064d4f6','Y',0,'N','N')
;

-- Feb 25, 2015 5:57:03 PM COT
ALTER TABLE AD_UserDef_Field ADD COLUMN VFormat VARCHAR(255) DEFAULT NULL 
;

-- Feb 25, 2015 5:57:30 PM COT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (203499,'Value Format','Format of the value; Can contain fixed format elements, Variables: "_lLoOaAcCa09"','<B>Validation elements:</B>
 	(Space) any character
_	Space (fixed character)
l	any Letter a..Z NO space
L	any Letter a..Z NO space converted to upper case
o	any Letter a..Z or space
O	any Letter a..Z or space converted to upper case
a	any Letters & Digits NO space
A	any Letters & Digits NO space converted to upper case
c	any Letters & Digits or space
C	any Letters & Digits or space converted to upper case
0	Digits 0..9 NO space
9	Digits 0..9 or space

Example of format "(000)_000-0000"',395,211840,'Y',255,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2015-02-25 17:57:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-02-25 17:57:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','f8a92fba-ee26-4ccc-95ed-62dcfd3d7207','Y',290,5)
;


