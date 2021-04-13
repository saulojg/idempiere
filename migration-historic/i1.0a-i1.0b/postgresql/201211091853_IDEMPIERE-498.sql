-- IDEMPIERE-498 Make BP quick entry configurable
-- Nov 1, 2012 12:10:18 PM COT
INSERT INTO AD_Element (ColumnName,AD_Element_ID,EntityType,Name,PrintName,AD_Element_UU,AD_Client_ID,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive) VALUES ('IsQuickEntry',200216,'D','Quick Entry','Quick Entry','ba2d92ea-f8c5-438e-ba30-053965fdb1ff',0,TO_TIMESTAMP('2012-11-01 12:10:15','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2012-11-01 12:10:15','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y')
;

-- Nov 1, 2012 12:10:18 PM COT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Help,PO_Description,PO_Help,Name,Description,PrintName,PO_Name,PO_PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Element_Trl_UU ) SELECT l.AD_Language,t.AD_Element_ID, t.Help,t.PO_Description,t.PO_Help,t.Name,t.Description,t.PrintName,t.PO_Name,t.PO_PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=200216 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 1, 2012 12:11:28 PM COT
INSERT INTO AD_Column (IsSyncDatabase,IsEncrypted,Version,AD_Table_ID,AD_Column_ID,EntityType,IsMandatory,DefaultValue,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,AD_Element_ID,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,IsAlwaysUpdateable,ColumnName,Name,IsAllowCopy,CreatedBy,Updated,AD_Org_ID,IsActive,Created,UpdatedBy,AD_Client_ID,SeqNoSelection,IsToolbarButton) VALUES ('N','N',0,107,200862,'D','Y','N','N','N',0,'N',1,'N',20,'N',200216,'N','Y','54666e5d-4260-4a97-8832-d5da6da8a5aa','Y','N','IsQuickEntry','Quick Entry','Y',0,TO_TIMESTAMP('2012-11-01 12:11:25','YYYY-MM-DD HH24:MI:SS'),0,'Y',TO_TIMESTAMP('2012-11-01 12:11:25','YYYY-MM-DD HH24:MI:SS'),0,0,0,'N')
;

-- Nov 1, 2012 12:11:28 PM COT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=200862 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 1, 2012 2:26:31 PM COT
INSERT INTO AD_Field (NumLines,AD_Field_UU,SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,AD_Column_ID,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Name,IsDisplayed,IsFieldOnly,UpdatedBy,AD_Org_ID,Created,AD_Client_ID,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1,'222ea356-f257-413d-9724-c2b59077b94f',0,'N',107,0,'N','N',200862,305,'Y',200771,'N','D','Quick Entry','Y','N',0,0,TO_TIMESTAMP('2012-11-01 14:26:30','YYYY-MM-DD HH24:MI:SS'),0,0,TO_TIMESTAMP('2012-11-01 14:26:30','YYYY-MM-DD HH24:MI:SS'),'Y','Y',305,2,1)
;


