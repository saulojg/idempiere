-- drop constraint if existss defined as non-deferred

ALTER TABLE a_asset drop constraint if exists aparentasset_aasset CASCADE;

ALTER TABLE a_asset drop constraint if exists cbpartnersr_aasset CASCADE;

ALTER TABLE a_asset drop constraint if exists cproject_aasset CASCADE;

ALTER TABLE a_asset drop constraint if exists leasebpartner_aasset CASCADE;

ALTER TABLE a_asset drop constraint if exists minoutline_aasset CASCADE;

ALTER TABLE a_asset_acct drop constraint if exists aassetspread_aassetacct CASCADE;

ALTER TABLE a_asset_acct drop constraint if exists adepreciationconv_aassetacct CASCADE;

ALTER TABLE a_asset_acct drop constraint if exists adepreciationmethod_aassetacct CASCADE;

ALTER TABLE a_asset_acct drop constraint if exists adepreciationtableheader_aasse CASCADE;

ALTER TABLE a_asset_addition drop constraint if exists cinvoice_aassetaddition CASCADE;

ALTER TABLE a_asset_addition drop constraint if exists gljournalbatch_aassetaddition CASCADE;

ALTER TABLE a_asset_change drop constraint if exists adepreciationtableheader_aass2 CASCADE;

ALTER TABLE a_asset_change drop constraint if exists aduser_aassetchange CASCADE;

ALTER TABLE a_asset_change drop constraint if exists aparentasset_aassetchange CASCADE;

ALTER TABLE a_asset_change drop constraint if exists cacctschema_aassetchange CASCADE;

ALTER TABLE a_asset_change drop constraint if exists cbpartnerlocation_aassetchange CASCADE;

ALTER TABLE a_asset_change drop constraint if exists clocation_aassetchange CASCADE;

ALTER TABLE a_asset_disposed drop constraint if exists aassettrade_aassetdisposed CASCADE;

ALTER TABLE a_asset_disposed drop constraint if exists cperiod_aassetdisposed CASCADE;

ALTER TABLE a_asset_group_acct drop constraint if exists adepreciationtableheader_aass3 CASCADE;

ALTER TABLE a_asset_reval_entry drop constraint if exists cacctschema_aassetrevalentry CASCADE;

ALTER TABLE a_asset_reval_entry drop constraint if exists ccurrency_aassetrevalentry CASCADE;

ALTER TABLE a_asset_reval_entry drop constraint if exists cdoctype_aassetrevalentry CASCADE;

ALTER TABLE a_asset_reval_entry drop constraint if exists cperiod_aassetrevalentry CASCADE;

ALTER TABLE a_asset_reval_entry drop constraint if exists glcategory_aassetrevalentry CASCADE;

ALTER TABLE a_asset_split drop constraint if exists cperiod_aassetsplit CASCADE;

ALTER TABLE a_asset_transfer drop constraint if exists cacctschema_aassettransfer CASCADE;

ALTER TABLE a_asset_transfer drop constraint if exists cperiod_aassettransfer CASCADE;

ALTER TABLE a_depreciation_build drop constraint if exists aendasset_adepreciationbuild CASCADE;

ALTER TABLE a_depreciation_build drop constraint if exists astartasset_adepreciationbuild CASCADE;

ALTER TABLE a_depreciation_build drop constraint if exists cperiod_adepreciationbuild CASCADE;

ALTER TABLE a_depreciation_entry drop constraint if exists cacctschema_adepreciationentry CASCADE;

ALTER TABLE a_depreciation_entry drop constraint if exists ccurrency_adepreciationentry CASCADE;

ALTER TABLE a_depreciation_entry drop constraint if exists cdoctype_adepreciationentry CASCADE;

ALTER TABLE a_depreciation_entry drop constraint if exists cperiod_adepreciationentry CASCADE;

ALTER TABLE a_depreciation_entry drop constraint if exists glcategory_adepreciationentry CASCADE;

ALTER TABLE a_depreciation_forecast drop constraint if exists aendasset_adepreciationforecas CASCADE;

ALTER TABLE a_depreciation_forecast drop constraint if exists astartasset_adepreciationforec CASCADE;

ALTER TABLE ad_archive drop constraint if exists cbpartner_adarchive CASCADE;

ALTER TABLE ad_client drop constraint if exists adlangu_adclient CASCADE;

ALTER TABLE ad_client drop constraint if exists adreplicationstrategy_adclient CASCADE;

ALTER TABLE ad_clientinfo drop constraint if exists adtreeactivity_adclientinfo CASCADE;

ALTER TABLE ad_clientinfo drop constraint if exists adtreecampaign_adclientinfo CASCADE;

ALTER TABLE ad_clientinfo drop constraint if exists cbpartnercashtrx_adclientinfo CASCADE;

ALTER TABLE ad_clientinfo drop constraint if exists mproductfreight_adclientinfo CASCADE;

ALTER TABLE ad_column drop constraint if exists entityt_adcolumn CASCADE;

ALTER TABLE ad_document_action_access drop constraint if exists adreflist_addocumentactionacce CASCADE;

ALTER TABLE ad_document_action_access drop constraint if exists adrole_addocumentactionaccess CASCADE;

ALTER TABLE ad_document_action_access drop constraint if exists cdoctype_addocumentactionacces CASCADE;

ALTER TABLE ad_element drop constraint if exists entityt_adelement CASCADE;

ALTER TABLE ad_error drop constraint if exists adlangu_aderror CASCADE;

ALTER TABLE ad_field drop constraint if exists adreference_adfield CASCADE;

ALTER TABLE ad_field drop constraint if exists adreferencevalue_adfield CASCADE;

ALTER TABLE ad_field drop constraint if exists advalrule_adfield CASCADE;

ALTER TABLE ad_field drop constraint if exists entityt_adfield CASCADE;

ALTER TABLE ad_field drop constraint if exists includedtab_adfield CASCADE;

ALTER TABLE ad_fieldgroup drop constraint if exists entityt_adfieldgroup CASCADE;

ALTER TABLE ad_form drop constraint if exists entityt_adform CASCADE;

ALTER TABLE ad_housekeeping drop constraint if exists adtable_adhousekeeping CASCADE;

ALTER TABLE ad_image drop constraint if exists entityt_adimage CASCADE;

ALTER TABLE ad_infocolumn drop constraint if exists entityt_adinfocolumn CASCADE;

ALTER TABLE ad_infowindow drop constraint if exists entityt_adinfowindow CASCADE;

ALTER TABLE ad_menu drop constraint if exists entityt_admenu CASCADE;

ALTER TABLE ad_message drop constraint if exists entityt_admessage CASCADE;

ALTER TABLE ad_modelvalidator drop constraint if exists entityt_admodelvalidator CASCADE;

ALTER TABLE ad_org drop constraint if exists ad_org__ad_repli_ad_replica CASCADE;

ALTER TABLE ad_orginfo drop constraint if exists cbank_adorginfo CASCADE;

ALTER TABLE ad_orginfo drop constraint if exists ccalendar_adorginfo CASCADE;

ALTER TABLE ad_orginfo drop constraint if exists ccashbook_adorginfo CASCADE;

ALTER TABLE ad_orginfo drop constraint if exists dropshipwarehouse_adorginfo CASCADE;

ALTER TABLE ad_orgtype drop constraint if exists adprintcolor_adorgtype CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adform_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adimpformat_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists admenu_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adprocess_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adreportview_adpackageexpcommo CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adrole_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adtable_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adwindow_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adworkbench_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_common drop constraint if exists adworkflow_adpackageexpcommon CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adform_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adimpformat_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists admenu_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists admessage_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists admodval_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adprintformat_adpackageexpdeta CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adprocess_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adreference_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adreportview_adpackageexpdetai CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adrole_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adtable_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adwindow_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adworkbench_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_exp_detail drop constraint if exists adworkflow_adpackageexpdetail CASCADE;

ALTER TABLE ad_package_imp_backup drop constraint if exists adcolumn_adpackageimpbackup CASCADE;

ALTER TABLE ad_package_imp_backup drop constraint if exists adreference_adpackageimpbackup CASCADE;

ALTER TABLE ad_printform drop constraint if exists distribordermailtext_adprintfo CASCADE;

ALTER TABLE ad_printform drop constraint if exists distriborderprintformat_adprin CASCADE;

ALTER TABLE ad_printform drop constraint if exists manufordermailtext_adprintform CASCADE;

ALTER TABLE ad_printform drop constraint if exists manuforderprintformat_adprintf CASCADE;

ALTER TABLE ad_printformat drop constraint if exists jasperprocess_adprintformat CASCADE;

ALTER TABLE ad_printtableformat drop constraint if exists adimage_adprinttableformat CASCADE;

ALTER TABLE ad_process drop constraint if exists adform_adprocess CASCADE;

ALTER TABLE ad_process drop constraint if exists adworkflow_adprocess CASCADE;

ALTER TABLE ad_process drop constraint if exists entityt_adprocess CASCADE;

ALTER TABLE ad_process_para drop constraint if exists entityt_adprocesspara CASCADE;

ALTER TABLE ad_ref_list drop constraint if exists entityt_adreflist CASCADE;

ALTER TABLE ad_ref_table drop constraint if exists adwindow_adreftable CASCADE;

ALTER TABLE ad_ref_table drop constraint if exists entityt_adreftable CASCADE;

ALTER TABLE ad_reference drop constraint if exists entityt_adreference CASCADE;

ALTER TABLE ad_registration drop constraint if exists ccurrency_adregistration CASCADE;

ALTER TABLE ad_replication drop constraint if exists remoteclient_adreplication CASCADE;

ALTER TABLE ad_replication drop constraint if exists remoteorg_adreplication CASCADE;

ALTER TABLE ad_replicationdocument drop constraint if exists adtable_adreplicationdocument CASCADE;

ALTER TABLE ad_replicationdocument drop constraint if exists cdoctype_adreplicationdocument CASCADE;

ALTER TABLE ad_replicationstrategy drop constraint if exists entityt_adreplicationstrategy CASCADE;

ALTER TABLE ad_replicationstrategy drop constraint if exists expprocessor_adreplicationstra CASCADE;

ALTER TABLE ad_replicationtable drop constraint if exists entityt_adreplicationtable CASCADE;

ALTER TABLE ad_reportview drop constraint if exists entityt_adreportview CASCADE;

ALTER TABLE ad_role drop constraint if exists adtreeorg_adrole CASCADE;

ALTER TABLE ad_rule drop constraint if exists entityt_adrule CASCADE;

ALTER TABLE ad_searchdefinition drop constraint if exists adcolumn_adsearchdefinition CASCADE;

ALTER TABLE ad_searchdefinition drop constraint if exists adtable_adsearchdefinition CASCADE;

ALTER TABLE ad_searchdefinition drop constraint if exists adwindow_adsearchdefinition CASCADE;

ALTER TABLE ad_searchdefinition drop constraint if exists powindow_adsearchdefinition CASCADE;

ALTER TABLE ad_session drop constraint if exists adrole_adsession CASCADE;

ALTER TABLE ad_sysconfig drop constraint if exists entityt_adsysconfig CASCADE;

ALTER TABLE ad_tab drop constraint if exists entityt_adtab CASCADE;

ALTER TABLE ad_tab drop constraint if exists parentcolumn_adtab CASCADE;

ALTER TABLE ad_table drop constraint if exists entityt_adtable CASCADE;

ALTER TABLE ad_table_scriptvalidator drop constraint if exists adrule_adtablescriptvalidator CASCADE;

ALTER TABLE ad_table_scriptvalidator drop constraint if exists adtable_adtablescriptvalidator CASCADE;

ALTER TABLE ad_task drop constraint if exists entityt_adtask CASCADE;

ALTER TABLE ad_user drop constraint if exists cjob_aduser CASCADE;

ALTER TABLE ad_userdef_win drop constraint if exists adlangu_aduserdefwin CASCADE;

ALTER TABLE ad_userquery drop constraint if exists adtab_aduserquery CASCADE;

ALTER TABLE ad_val_rule drop constraint if exists entityt_advalrule CASCADE;

ALTER TABLE ad_wf_activity drop constraint if exists adtable_adwfactivity CASCADE;

ALTER TABLE ad_wf_activity drop constraint if exists adworkflow_adwfactivity CASCADE;

ALTER TABLE ad_wf_nextcondition drop constraint if exists entityt_adwfnextcondition CASCADE;

ALTER TABLE ad_wf_node drop constraint if exists adcolumn_adwfnode CASCADE;

ALTER TABLE ad_wf_node drop constraint if exists cbpartner_adwfnode CASCADE;

ALTER TABLE ad_wf_node drop constraint if exists entityt_adwfnode CASCADE;

ALTER TABLE ad_wf_node drop constraint if exists rmailtext_adwfnode CASCADE;

ALTER TABLE ad_wf_node drop constraint if exists sresource_adwfnode CASCADE;

ALTER TABLE ad_wf_node_para drop constraint if exists entityt_adwfnodepara CASCADE;

ALTER TABLE ad_wf_nodenext drop constraint if exists entityt_adwfnodenext CASCADE;

ALTER TABLE ad_wf_process drop constraint if exists adtable_adwfprocess CASCADE;

ALTER TABLE ad_wf_process drop constraint if exists adwfprocess_adwfprocess CASCADE;

ALTER TABLE ad_wf_responsible drop constraint if exists entityt_adwfresponsible CASCADE;

ALTER TABLE ad_window drop constraint if exists entityt_adwindow CASCADE;

ALTER TABLE ad_workbench drop constraint if exists adcolumn_adworkbench CASCADE;

ALTER TABLE ad_workbench drop constraint if exists entityt_adworkbench CASCADE;

ALTER TABLE ad_workbenchwindow drop constraint if exists entityt_adworkbenchwindow CASCADE;

ALTER TABLE ad_workflow drop constraint if exists adtable_adworkflow CASCADE;

ALTER TABLE ad_workflow drop constraint if exists adwfnode_adworkflow CASCADE;

ALTER TABLE ad_workflow drop constraint if exists entityt_adworkflow CASCADE;

ALTER TABLE ad_workflow drop constraint if exists sresource_adworkflow CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adfield_aspclientexception CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adform_aspclientexception CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adprocess_aspclientexception CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adprocesspara_aspclientexcepti CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adtab_aspclientexception CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adtask_aspclientexception CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adwfnode_aspclientexception CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adwindow_aspclientexception CASCADE;

ALTER TABLE asp_clientexception drop constraint if exists adworkflow_aspclientexception CASCADE;

ALTER TABLE asp_clientlevel drop constraint if exists asplevel_aspclientlevel CASCADE;

ALTER TABLE asp_clientlevel drop constraint if exists aspmodule_aspclientlevel CASCADE;

ALTER TABLE asp_field drop constraint if exists adfield_aspfield CASCADE;

ALTER TABLE asp_field drop constraint if exists asptab_aspfield CASCADE;

ALTER TABLE asp_form drop constraint if exists adform_aspform CASCADE;

ALTER TABLE asp_form drop constraint if exists asplevel_aspform CASCADE;

ALTER TABLE asp_level drop constraint if exists aspmodule_asplevel CASCADE;

ALTER TABLE asp_process drop constraint if exists adprocess_aspprocess CASCADE;

ALTER TABLE asp_process drop constraint if exists asplevel_aspprocess CASCADE;

ALTER TABLE asp_process_para drop constraint if exists adprocesspara_aspprocesspara CASCADE;

ALTER TABLE asp_process_para drop constraint if exists aspprocess_aspprocesspara CASCADE;

ALTER TABLE asp_tab drop constraint if exists adtab_asptab CASCADE;

ALTER TABLE asp_tab drop constraint if exists aspwindow_asptab CASCADE;

ALTER TABLE asp_task drop constraint if exists adtask_asptask CASCADE;

ALTER TABLE asp_task drop constraint if exists asplevel_asptask CASCADE;

ALTER TABLE asp_window drop constraint if exists adwindow_aspwindow CASCADE;

ALTER TABLE asp_window drop constraint if exists asplevel_aspwindow CASCADE;

ALTER TABLE asp_workflow drop constraint if exists adworkflow_aspworkflow CASCADE;

ALTER TABLE asp_workflow drop constraint if exists asplevel_aspworkflow CASCADE;

ALTER TABLE b_bid drop constraint if exists aduser_bbid CASCADE;

ALTER TABLE b_buyerfunds drop constraint if exists aduser_bbuyerfunds CASCADE;

ALTER TABLE b_offer drop constraint if exists aduser_boffer CASCADE;

ALTER TABLE b_sellerfunds drop constraint if exists aduser_bsellerfunds CASCADE;

ALTER TABLE c_acctprocessor drop constraint if exists adtable_cacctprocessor CASCADE;

ALTER TABLE c_acctprocessor drop constraint if exists cacctschema_cacctprocessor CASCADE;

ALTER TABLE c_acctschema drop constraint if exists adorgonly_cacctschema CASCADE;

ALTER TABLE c_acctschema_element drop constraint if exists adcolumn_cacctschemaelement CASCADE;

ALTER TABLE c_bp_group drop constraint if exists adprintcolor_cbpgroup CASCADE;

ALTER TABLE c_bp_group drop constraint if exists cdunning_cbpgroup CASCADE;

ALTER TABLE c_bpartner drop constraint if exists ctaxgroup_cbpartner CASCADE;

ALTER TABLE c_cashline drop constraint if exists cpayment_ccashline CASCADE;

ALTER TABLE c_channel drop constraint if exists adprintcolor_cchannel CASCADE;

ALTER TABLE c_charge drop constraint if exists cbpartner_ccharge CASCADE;

ALTER TABLE c_charge drop constraint if exists cchargetype_ccharge CASCADE;

ALTER TABLE c_charge_trl drop constraint if exists adlangu_cchargetrl CASCADE;

ALTER TABLE c_charge_trl drop constraint if exists ccharge_cchargetrl CASCADE;

ALTER TABLE c_chargetype_doctype drop constraint if exists cchargetype_cchargetypedoctype CASCADE;

ALTER TABLE c_chargetype_doctype drop constraint if exists cdoctype_cchargetypedoctype CASCADE;

ALTER TABLE c_country drop constraint if exists ccountry_ccountry CASCADE;

ALTER TABLE c_doctype drop constraint if exists cdoctypedifference_cdoctype CASCADE;

ALTER TABLE c_doctype drop constraint if exists definitesequence_cdoctype CASCADE;

ALTER TABLE c_dunningrunentry drop constraint if exists aduser_cdunningrunentry CASCADE;

ALTER TABLE c_dunningrunentry drop constraint if exists cbpartnerlocation_cdunningrune CASCADE;

ALTER TABLE c_dunningrunentry drop constraint if exists salesrep_cdunningrunentry CASCADE;

ALTER TABLE c_dunningrunline drop constraint if exists cinvoicepayschedule_cdunningru CASCADE;

ALTER TABLE c_invoice drop constraint if exists cdunninglevel_cinvoice CASCADE;

ALTER TABLE c_invoice drop constraint if exists mrma_cinvoice CASCADE;

ALTER TABLE c_invoice drop constraint if exists reversal_cinvoice CASCADE;

ALTER TABLE c_invoiceline drop constraint if exists aassetgroup_cinvoiceline CASCADE;

ALTER TABLE c_invoiceline drop constraint if exists mrmaline_cinvoiceline CASCADE;

ALTER TABLE c_order drop constraint if exists cpos_corder CASCADE;

ALTER TABLE c_order drop constraint if exists dropshipbpartner_corder CASCADE;

ALTER TABLE c_order drop constraint if exists dropshiplocation_corder CASCADE;

ALTER TABLE c_order drop constraint if exists dropshipuser_corder CASCADE;

ALTER TABLE c_order drop constraint if exists linkorder_corder CASCADE;

ALTER TABLE c_order drop constraint if exists mfreightcategory_order CASCADE;

ALTER TABLE c_orderline drop constraint if exists linkorderline_corderline CASCADE;

ALTER TABLE c_orderline drop constraint if exists mpromotion_corderline CASCADE;

ALTER TABLE c_orderline drop constraint if exists ppcostcollector_corderline CASCADE;

ALTER TABLE c_payment drop constraint if exists c_payment__c_cashbo_c_cashbook CASCADE;

ALTER TABLE c_payment drop constraint if exists cinvoice_cpayment CASCADE;

ALTER TABLE c_payment drop constraint if exists corder_cpayment CASCADE;

ALTER TABLE c_payment drop constraint if exists refpayment_cpayment CASCADE;

ALTER TABLE c_payment drop constraint if exists reversal_cpayment CASCADE;

ALTER TABLE c_payselectioncheck drop constraint if exists cbpbankaccount_cpayselectionch CASCADE;

ALTER TABLE c_pos drop constraint if exists cbankaccount_cpos CASCADE;

ALTER TABLE c_pos drop constraint if exists cbpartnercashtrx_cpos CASCADE;

ALTER TABLE c_pos drop constraint if exists cdoctype_cpos CASCADE;

ALTER TABLE c_poskey drop constraint if exists adprintcolor_cposkey CASCADE;

ALTER TABLE c_project drop constraint if exists cbpartnersr_cproject CASCADE;

ALTER TABLE c_salesregion drop constraint if exists salesrep_csalesregion CASCADE;

ALTER TABLE c_tax drop constraint if exists adrule_ctax CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists adorgtype_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists cbpartner_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists cbpgroup_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists ctax_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists ctaxbase_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists ctaxcategory_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists ctaxgroup_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists ctaxtype_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists mproduct_ctaxdefinition CASCADE;

ALTER TABLE c_taxdefinition drop constraint if exists mproductcategory_ctaxdefinitio CASCADE;

ALTER TABLE c_uom_conversion drop constraint if exists mproduct_cuomconversion CASCADE;

ALTER TABLE c_validcombination drop constraint if exists csubacct_cvalidcombination CASCADE;

ALTER TABLE c_withholding drop constraint if exists benefici_cwithholding CASCADE;

ALTER TABLE cm_newschannel drop constraint if exists adlangu_cmnewschannel CASCADE;

ALTER TABLE dd_networkdistribution drop constraint if exists mchangenotice_ddnetworkdistrib CASCADE;

ALTER TABLE dd_networkdistributionline drop constraint if exists ddnetworkdistribution_ddnetwor CASCADE;

ALTER TABLE dd_networkdistributionline drop constraint if exists mshipper_ddnetworkdistribution CASCADE;

ALTER TABLE dd_networkdistributionline drop constraint if exists mwarehouse_ddnetworkdistributi CASCADE;

ALTER TABLE dd_networkdistributionline drop constraint if exists mwarehousesource_ddnetworkdist CASCADE;

ALTER TABLE dd_order drop constraint if exists adorgtrx_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists aduser_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists cactivity_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists cbpartner_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists cbpartnerlocation_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists ccampaign_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists ccharge_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists cdoctype_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists cinvoice_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists corder_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists cproject_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists mshipper_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists mwarehouse_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists salesrep_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists user1_ddorder CASCADE;

ALTER TABLE dd_order drop constraint if exists user2_ddorder CASCADE;

ALTER TABLE dd_orderline drop constraint if exists adorgtrx_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists cactivity_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists ccampaign_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists ccharge_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists cproject_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists cuom_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists ddorder_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists mlocator_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists mlocatorto_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists mproduct_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists user1_ddorderline CASCADE;

ALTER TABLE dd_orderline drop constraint if exists user2_ddorderline CASCADE;

ALTER TABLE exp_format drop constraint if exists adtable_expformat CASCADE;

ALTER TABLE exp_formatline drop constraint if exists adcolumn_expformatline CASCADE;

ALTER TABLE exp_formatline drop constraint if exists expembeddedformat_expformatlin CASCADE;

ALTER TABLE exp_formatline drop constraint if exists expformat_expformatline CASCADE;

ALTER TABLE exp_processor drop constraint if exists expprocessortype_expprocessor CASCADE;

ALTER TABLE exp_processorparameter drop constraint if exists expprocessor_expprocessorparam CASCADE;

ALTER TABLE fact_acct drop constraint if exists csubacct_factacct CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists account_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists cacctschema_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists cactivity_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists cbpartner_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists ccampaign_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists cperiod_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists cproject_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists cprojectphase_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists cprojecttask_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists csalesregion_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists csubacct_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists glbudget_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists mproduct_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists pareportcube_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists user1_factacctsummary CASCADE;

ALTER TABLE fact_acct_summary drop constraint if exists user2_factacctsummary CASCADE;

ALTER TABLE gl_journal drop constraint if exists reversal_gljournal CASCADE;

ALTER TABLE gl_journalbatch drop constraint if exists reversal_gljournalbatch CASCADE;

ALTER TABLE gl_journalline drop constraint if exists aasset_gljournalline CASCADE;

ALTER TABLE gl_journalline drop constraint if exists aassetgroup_gljournalline CASCADE;

ALTER TABLE hr_attribute drop constraint if exists adrule_hrattribute CASCADE;

ALTER TABLE hr_attribute drop constraint if exists cbpartner_hrattribute CASCADE;

ALTER TABLE hr_attribute drop constraint if exists hrconcept_hrattribute CASCADE;

ALTER TABLE hr_attribute drop constraint if exists hrdepartment_hrattribute CASCADE;

ALTER TABLE hr_attribute drop constraint if exists hremployee_hrattribute CASCADE;

ALTER TABLE hr_attribute drop constraint if exists hrjob_hrattribute CASCADE;

ALTER TABLE hr_attribute drop constraint if exists hrpayroll_hrattribute CASCADE;

ALTER TABLE hr_concept drop constraint if exists adreference_hrconcept CASCADE;

ALTER TABLE hr_concept drop constraint if exists hrconceptcategory_hrconcept CASCADE;

ALTER TABLE hr_concept drop constraint if exists hrdepartment_hrconcept CASCADE;

ALTER TABLE hr_concept drop constraint if exists hrjob_hrconcept CASCADE;

ALTER TABLE hr_concept drop constraint if exists hrpayroll_hrconcept CASCADE;

ALTER TABLE hr_concept_acct drop constraint if exists cacctschema_hrconceptacct CASCADE;

ALTER TABLE hr_concept_acct drop constraint if exists cbpgroup_hrconceptacct CASCADE;

ALTER TABLE hr_concept_acct drop constraint if exists hrconcept_hrconceptacct CASCADE;

ALTER TABLE hr_concept_acct drop constraint if exists user1_hrconceptacct CASCADE;

ALTER TABLE hr_contract drop constraint if exists cbpartner_hrcontract CASCADE;

ALTER TABLE hr_contract drop constraint if exists ccampaign_hrcontract CASCADE;

ALTER TABLE hr_contract drop constraint if exists cproject_hrcontract CASCADE;

ALTER TABLE hr_department drop constraint if exists activity_hrdepartment CASCADE;

ALTER TABLE hr_employee drop constraint if exists cactivity_hremployee CASCADE;

ALTER TABLE hr_employee drop constraint if exists cbpartner_hremployee CASCADE;

ALTER TABLE hr_employee drop constraint if exists hrdepartment_hremployee CASCADE;

ALTER TABLE hr_employee drop constraint if exists hrjob_hremployee CASCADE;

ALTER TABLE hr_employee drop constraint if exists hrpayroll_hremployee CASCADE;

ALTER TABLE hr_job drop constraint if exists hrdepartment_hrjob CASCADE;

ALTER TABLE hr_job drop constraint if exists nextjob_hrjob CASCADE;

ALTER TABLE hr_job drop constraint if exists supervisor_hrjob CASCADE;

ALTER TABLE hr_list drop constraint if exists hrdepartment_hrlist CASCADE;

ALTER TABLE hr_list drop constraint if exists hremployee_hrlist CASCADE;

ALTER TABLE hr_list drop constraint if exists hrlisttype_hrlist CASCADE;

ALTER TABLE hr_list drop constraint if exists hrpayroll_hrlist CASCADE;

ALTER TABLE hr_listline drop constraint if exists hrlistversion_hrlistline CASCADE;

ALTER TABLE hr_listversion drop constraint if exists hrlist_hrlistversion CASCADE;

ALTER TABLE hr_listversion drop constraint if exists hrlistbase_hrlistversion CASCADE;

ALTER TABLE hr_movement drop constraint if exists adorgtrx_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists adrule_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists cactivity_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists cbpartner_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists ccampaign_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists cproject_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists cprojectphase_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists cprojecttask_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists hrconcept_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists hrconceptcategory_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists hrdepartment_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists hrjob_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists hrprocess_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists ppcostcollector_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists user1_hrmovement CASCADE;

ALTER TABLE hr_movement drop constraint if exists user2_hrmovement CASCADE;

ALTER TABLE hr_payroll drop constraint if exists adprintformat_hrpayroll CASCADE;

ALTER TABLE hr_payroll drop constraint if exists ccharge_hrpayroll CASCADE;

ALTER TABLE hr_payroll drop constraint if exists hrcontract_hrpayroll CASCADE;

ALTER TABLE hr_payrollconcept drop constraint if exists adrule_hrpayrollconcept CASCADE;

ALTER TABLE hr_payrollconcept drop constraint if exists hrconcept_hrpayrollconcept CASCADE;

ALTER TABLE hr_payrollconcept drop constraint if exists hrpayroll_hrpayrollconcept CASCADE;

ALTER TABLE hr_period drop constraint if exists cperiod_hrperiod CASCADE;

ALTER TABLE hr_period drop constraint if exists cyear_hrperiod CASCADE;

ALTER TABLE hr_period drop constraint if exists hrpayroll_hrperiod CASCADE;

ALTER TABLE hr_period drop constraint if exists hryear_hrperiod CASCADE;

ALTER TABLE hr_process drop constraint if exists adprintformat_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists adworkflow_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists cbpartner_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists ccharge_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists cdoctype_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists cdoctypetarget_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists cpayselection_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists hrdepartment_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists hremployee_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists hrjob_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists hrpayroll_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists hrperiod_hrprocess CASCADE;

ALTER TABLE hr_process drop constraint if exists reversal_hrprocess CASCADE;

ALTER TABLE hr_year drop constraint if exists cyear_hryear CASCADE;

ALTER TABLE hr_year drop constraint if exists hrpayroll_hryear CASCADE;

ALTER TABLE i_asset drop constraint if exists aassetgroup_iasset CASCADE;

ALTER TABLE i_asset drop constraint if exists adepreciationtableheader_iasse CASCADE;

ALTER TABLE i_asset drop constraint if exists cacctschema_iasset CASCADE;

ALTER TABLE i_asset drop constraint if exists cbpartner_iasset CASCADE;

ALTER TABLE i_asset drop constraint if exists cbpartnerlocation_iasset CASCADE;

ALTER TABLE i_asset drop constraint if exists clocation_iasset CASCADE;

ALTER TABLE i_asset drop constraint if exists mlocator_iasset CASCADE;

ALTER TABLE i_asset drop constraint if exists mproduct_iasset CASCADE;

ALTER TABLE i_bpartner drop constraint if exists rinterestarea_ibpartner CASCADE;

ALTER TABLE i_fajournal drop constraint if exists account_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists adorgdoc_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists adorgtrx_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists cacctschema_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists cactivity_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists cbpartner_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists ccampaign_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists ccurrency_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists cdoctype_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists cperiod_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists cproject_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists csalesregion_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists cuom_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists cvalidcombination_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists glbudget_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists glcategory_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists gljournal_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists gljournalbatch_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists gljournalline_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists mproduct_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists user1_ifajournal CASCADE;

ALTER TABLE i_fajournal drop constraint if exists user2_ifajournal CASCADE;

ALTER TABLE i_gljournal drop constraint if exists cuom_igljournal CASCADE;

ALTER TABLE i_invoice drop constraint if exists ccharge_iinvoice CASCADE;

ALTER TABLE i_order drop constraint if exists ccharge_iorder CASCADE;

ALTER TABLE i_payment drop constraint if exists ccurrency_ipayment CASCADE;

ALTER TABLE i_pricelist drop constraint if exists cbpartner_ipricelist CASCADE;

ALTER TABLE i_pricelist drop constraint if exists ccurrency_ipricelist CASCADE;

ALTER TABLE i_pricelist drop constraint if exists cuom_ipricelist CASCADE;

ALTER TABLE i_pricelist drop constraint if exists mpricelist_ipricelist CASCADE;

ALTER TABLE i_pricelist drop constraint if exists mpricelistversion_ipricelist CASCADE;

ALTER TABLE i_pricelist drop constraint if exists mproduct_ipricelist CASCADE;

ALTER TABLE imp_processor drop constraint if exists impprocessortype_impprocessor CASCADE;

ALTER TABLE imp_processorlog drop constraint if exists impprocessor_impprocessorlog CASCADE;

ALTER TABLE imp_processorparameter drop constraint if exists impprocessor_impprocessorparam CASCADE;

ALTER TABLE k_synonym drop constraint if exists adlangu_ksynonym CASCADE;

ALTER TABLE m_changerequest drop constraint if exists mfixchangenotice_mchangereques CASCADE;

ALTER TABLE m_changerequest drop constraint if exists ppproductbom_mchangerequest CASCADE;

ALTER TABLE m_costdetail drop constraint if exists ppcostcollector_mcostdetail CASCADE;

ALTER TABLE m_forecast drop constraint if exists mpricelist_mforecast CASCADE;

ALTER TABLE m_forecastline drop constraint if exists mwarehouse_mforecastline CASCADE;

ALTER TABLE m_inout drop constraint if exists cinvoice_minout CASCADE;

ALTER TABLE m_inout drop constraint if exists dropshipbpartner_minout CASCADE;

ALTER TABLE m_inout drop constraint if exists dropshiplocation_minout CASCADE;

ALTER TABLE m_inout drop constraint if exists dropshipuser_minout CASCADE;

ALTER TABLE m_inout drop constraint if exists mrma_minout CASCADE;

ALTER TABLE m_inout drop constraint if exists reversal_minout CASCADE;

ALTER TABLE m_inoutconfirm drop constraint if exists cinvoice_minoutconfirm CASCADE;

ALTER TABLE m_inoutconfirm drop constraint if exists minventory_minoutconfirm CASCADE;

ALTER TABLE m_inoutline drop constraint if exists mrmaline_minoutline CASCADE;

ALTER TABLE m_inoutline drop constraint if exists reversalline_minoutline CASCADE;

ALTER TABLE m_inoutlineconfirm drop constraint if exists cinvoiceline_minoutlineconfirm CASCADE;

ALTER TABLE m_inoutlineconfirm drop constraint if exists minventoryline_minoutlineconfi CASCADE;

ALTER TABLE m_inventory drop constraint if exists cdoctype_minventory CASCADE;

ALTER TABLE m_inventory drop constraint if exists reversal_minventory CASCADE;

ALTER TABLE m_inventoryline drop constraint if exists reversalline_minventoryline CASCADE;

ALTER TABLE m_movement drop constraint if exists aduser_mmovement CASCADE;

ALTER TABLE m_movement drop constraint if exists cbpartner_mmovement CASCADE;

ALTER TABLE m_movement drop constraint if exists ccharge_mmovement CASCADE;

ALTER TABLE m_movement drop constraint if exists cdoctype_mmovement CASCADE;

ALTER TABLE m_movement drop constraint if exists ddorder_mmovement CASCADE;

ALTER TABLE m_movement drop constraint if exists mshipper_mmovement CASCADE;

ALTER TABLE m_movement drop constraint if exists reversal_mmovement CASCADE;

ALTER TABLE m_movement drop constraint if exists salesrep_mmovement CASCADE;

ALTER TABLE m_movementline drop constraint if exists ddorderline_mmovementline CASCADE;

ALTER TABLE m_movementline drop constraint if exists reversalline_mmovementline CASCADE;

ALTER TABLE m_pricelist_version drop constraint if exists mpricelistversionbase_mpriceli CASCADE;

ALTER TABLE m_product drop constraint if exists salesrep_mproduct CASCADE;

ALTER TABLE m_product_category drop constraint if exists adprintcolor_mproductcategory CASCADE;

ALTER TABLE m_product_category drop constraint if exists mproductcat_parentcat CASCADE;

ALTER TABLE m_productpricevendorbreak drop constraint if exists cbpartner_mproductpricevendorb CASCADE;

ALTER TABLE m_productpricevendorbreak drop constraint if exists mpricelistversion_mproductpric CASCADE;

ALTER TABLE m_productpricevendorbreak drop constraint if exists mproduct_mproductpricevendorbr CASCADE;

ALTER TABLE m_promotion drop constraint if exists ccampaign_mpromotion CASCADE;

ALTER TABLE m_promotiondistribution drop constraint if exists mpromotion_mpromotiondistribut CASCADE;

ALTER TABLE m_promotiondistribution drop constraint if exists mpromotionline_mpromotiondistr CASCADE;

ALTER TABLE m_promotiongroupline drop constraint if exists mproduct_mpromotiongroupline CASCADE;

ALTER TABLE m_promotiongroupline drop constraint if exists mpromotiongroup_mpromotiongrou CASCADE;

ALTER TABLE m_promotionline drop constraint if exists mpromotion_mpromotionline CASCADE;

ALTER TABLE m_promotionline drop constraint if exists mpromotiongroup_mpromotionline CASCADE;

ALTER TABLE m_promotionprecondition drop constraint if exists cactivity_mpromotionpreconditi CASCADE;

ALTER TABLE m_promotionprecondition drop constraint if exists cbpartner_mpromotionpreconditi CASCADE;

ALTER TABLE m_promotionprecondition drop constraint if exists cbpgroup_mpromotionpreconditio CASCADE;

ALTER TABLE m_promotionprecondition drop constraint if exists mpricelist_mpromotionprecondit CASCADE;

ALTER TABLE m_promotionprecondition drop constraint if exists mpromotion_mpromotionprecondit CASCADE;

ALTER TABLE m_promotionprecondition drop constraint if exists mwarehouse_mpromotionprecondit CASCADE;

ALTER TABLE m_promotionreward drop constraint if exists ccharge_mpromotionreward CASCADE;

ALTER TABLE m_promotionreward drop constraint if exists mpromotion_mpromotionreward CASCADE;

ALTER TABLE m_promotionreward drop constraint if exists mpromotiondistribution_mpromot CASCADE;

ALTER TABLE m_promotionreward drop constraint if exists mtargetdistribution_mpromotion CASCADE;

ALTER TABLE m_replenish drop constraint if exists mlocator_mreplenish CASCADE;

ALTER TABLE m_replenish drop constraint if exists mwarehousesource_mreplenish CASCADE;

ALTER TABLE m_requisition drop constraint if exists cdoctype_mrequisition CASCADE;

ALTER TABLE m_requisitionline drop constraint if exists cbpartner_mrequisitionline CASCADE;

ALTER TABLE m_requisitionline drop constraint if exists ccharge_mrequisitionline CASCADE;

ALTER TABLE m_requisitionline drop constraint if exists corderline_mrequisitionline CASCADE;

ALTER TABLE m_requisitionline drop constraint if exists cuom_mrequisitionline CASCADE;

ALTER TABLE m_rma drop constraint if exists cbpartner_mrma CASCADE;

ALTER TABLE m_rma drop constraint if exists ccurrency_mrma CASCADE;

ALTER TABLE m_rma drop constraint if exists cdoctype_mrma CASCADE;

ALTER TABLE m_rma drop constraint if exists corder_mrma CASCADE;

ALTER TABLE m_rma drop constraint if exists mrmatype_mrma CASCADE;

ALTER TABLE m_rma drop constraint if exists refrma_mrma CASCADE;

ALTER TABLE m_rma drop constraint if exists salesrep_mrma CASCADE;

ALTER TABLE m_rmaline drop constraint if exists ccharge_mrmaline CASCADE;

ALTER TABLE m_rmaline drop constraint if exists refrmaline_mrmaline CASCADE;

ALTER TABLE m_transaction drop constraint if exists ppcostcollector_mtransaction CASCADE;

ALTER TABLE m_warehouse drop constraint if exists mwarehousesource_mwarehouse CASCADE;

ALTER TABLE pa_colorschema drop constraint if exists entityt_pacolorschema CASCADE;

ALTER TABLE pa_dashboardcontent drop constraint if exists adwindow_padashboardcontent CASCADE;

ALTER TABLE pa_dashboardcontent drop constraint if exists pagoal_padashboardcontent CASCADE;

ALTER TABLE pa_goal drop constraint if exists adrole_pagoal CASCADE;

ALTER TABLE pa_measure drop constraint if exists cprojecttype_pameasure CASCADE;

ALTER TABLE pa_measure drop constraint if exists rrequesttype_pameasure CASCADE;

ALTER TABLE pa_measurecalc drop constraint if exists adtable_pameasurecalc CASCADE;

ALTER TABLE pa_measurecalc drop constraint if exists entityt_pameasurecalc CASCADE;

ALTER TABLE pa_report drop constraint if exists jasperprocess_pareport CASCADE;

ALTER TABLE pa_report drop constraint if exists pareportcube_pareport CASCADE;

ALTER TABLE pa_reportcolumn drop constraint if exists adorgtrx_pareportcolumn CASCADE;

ALTER TABLE pa_reportcube drop constraint if exists ccalendar_pareportcube CASCADE;

ALTER TABLE pa_reportsource drop constraint if exists adorgtrx_pareportsource CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists adorgtrx_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists aduser_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists cactivity_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists ccampaign_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists cdoctype_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists cdoctypetarget_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists cproject_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists cuom_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists mproduct_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists mwarehouse_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists pporder_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists pporderbomline_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists ppordernode_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists pporderworkflow_ppcostcollecto CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists reversal_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists sresource_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists user1_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collector drop constraint if exists user2_ppcostcollector CASCADE;

ALTER TABLE pp_cost_collectorma drop constraint if exists ppcostcollector_ppcostcollectorma CASCADE;

ALTER TABLE pp_mrp drop constraint if exists cbpartner_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists corder_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists corderline_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists ddorder_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists ddorderline_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists mforecast_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists mforecastline_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists mproduct_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists mrequisition_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists mrequisitionline_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists mwarehouse_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists planner_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists pporder_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists pporderbomline_ppmrp CASCADE;

ALTER TABLE pp_mrp drop constraint if exists sresource_ppmrp CASCADE;

ALTER TABLE pp_order drop constraint if exists adorgtrx_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists adworkflow_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists cactivity_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists ccampaign_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists cdoctype_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists cdoctypetarget_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists corderline_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists cproject_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists cuom_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists mproduct_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists mwarehouse_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists planner_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists ppproductbom_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists sresource_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists user1_pporder CASCADE;

ALTER TABLE pp_order drop constraint if exists user2_pporder CASCADE;

ALTER TABLE pp_order_bom drop constraint if exists cuom_pporderbom CASCADE;

ALTER TABLE pp_order_bom drop constraint if exists mchangenotice_pporderbom CASCADE;

ALTER TABLE pp_order_bom drop constraint if exists mproduct_pporderbom CASCADE;

ALTER TABLE pp_order_bom drop constraint if exists pporder_pporderbom CASCADE;

ALTER TABLE pp_order_bom_trl drop constraint if exists adlangu_pporderbomtrl CASCADE;

ALTER TABLE pp_order_bom_trl drop constraint if exists pporderbom_pporderbomtrl CASCADE;

ALTER TABLE pp_order_bomline drop constraint if exists aduser_pporderbomline CASCADE;

ALTER TABLE pp_order_bomline drop constraint if exists cuom_pporderbomline CASCADE;

ALTER TABLE pp_order_bomline drop constraint if exists mchangenotice_pporderbomline CASCADE;

ALTER TABLE pp_order_bomline drop constraint if exists mproduct_pporderbomline CASCADE;

ALTER TABLE pp_order_bomline drop constraint if exists mwarehouse_pporderbomline CASCADE;

ALTER TABLE pp_order_bomline drop constraint if exists pporder_pporderbomline CASCADE;

ALTER TABLE pp_order_bomline drop constraint if exists pporderbom_pporderbomline CASCADE;

ALTER TABLE pp_order_bomline_trl drop constraint if exists adlangu_pporderbomlinetrl CASCADE;

ALTER TABLE pp_order_bomline_trl drop constraint if exists pporderbomline_pporderbomlinet CASCADE;

ALTER TABLE pp_order_cost drop constraint if exists adworkflow_ppordercost CASCADE;

ALTER TABLE pp_order_cost drop constraint if exists cacctschema_ppordercost CASCADE;

ALTER TABLE pp_order_cost drop constraint if exists mcostelement_ppordercost CASCADE;

ALTER TABLE pp_order_cost drop constraint if exists mcosttype_ppordercost CASCADE;

ALTER TABLE pp_order_cost drop constraint if exists mproduct_ppordercost CASCADE;

ALTER TABLE pp_order_cost drop constraint if exists pporder_ppordercost CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adcolumn_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adform_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adimage_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adprocess_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adtask_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adwfblock_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adwfnode_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adwfresponsible_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adwindow_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists adworkflow_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists cbpartner_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists entityt_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists pporder_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists pporderworkflow_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists sresource_ppordernode CASCADE;

ALTER TABLE pp_order_node drop constraint if exists workflow_ppordernode CASCADE;

ALTER TABLE pp_order_node_asset drop constraint if exists aasset_ppordernodeasset CASCADE;

ALTER TABLE pp_order_node_asset drop constraint if exists pporder_ppordernodeasset CASCADE;

ALTER TABLE pp_order_node_asset drop constraint if exists ppordernode_ppordernodeasset CASCADE;

ALTER TABLE pp_order_node_asset drop constraint if exists pporderworkflow_ppordernodeass CASCADE;

ALTER TABLE pp_order_node_product drop constraint if exists mproduct_ppordernodeproduct CASCADE;

ALTER TABLE pp_order_node_product drop constraint if exists pporder_ppordernodeproduct CASCADE;

ALTER TABLE pp_order_node_product drop constraint if exists ppordernode_ppordernodeproduct CASCADE;

ALTER TABLE pp_order_node_product drop constraint if exists pporderworkflow_ppordernodepro CASCADE;

ALTER TABLE pp_order_node_trl drop constraint if exists adlangu_ppordernodetrl CASCADE;

ALTER TABLE pp_order_nodenext drop constraint if exists adwfnext_ppordernodenext CASCADE;

ALTER TABLE pp_order_nodenext drop constraint if exists adwfnode_ppordernodenext CASCADE;

ALTER TABLE pp_order_nodenext drop constraint if exists entityt_ppordernodenext CASCADE;

ALTER TABLE pp_order_nodenext drop constraint if exists pporder_ppordernodenext CASCADE;

ALTER TABLE pp_order_nodenext drop constraint if exists ppordernext_ppordernodenext CASCADE;

ALTER TABLE pp_order_nodenext drop constraint if exists ppordernode_ppordernodenext CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists adtable_pporderworkflow CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists adwfnode_pporderworkflow CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists adwfresponsible_pporderworkflo CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists adworkflow_pporderworkflow CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists adworkflowprocessor_pporderwor CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists entityt_pporderworkflow CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists pporder_pporderworkflow CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists ppordernode_pporderworkflow CASCADE;

ALTER TABLE pp_order_workflow drop constraint if exists sresource_pporderworkflow CASCADE;

ALTER TABLE pp_order_workflow_trl drop constraint if exists adlangu_pporderworkflowtrl CASCADE;

ALTER TABLE pp_order_workflow_trl drop constraint if exists pporderworkflow_pporderworkflo CASCADE;

ALTER TABLE pp_product_bom drop constraint if exists cuom_ppproductbom CASCADE;

ALTER TABLE pp_product_bom drop constraint if exists mchangenotice_ppproductbom CASCADE;

ALTER TABLE pp_product_bom drop constraint if exists mproduct_ppproductbom CASCADE;

ALTER TABLE pp_product_bom_trl drop constraint if exists adlangu_ppproductbomtrl CASCADE;

ALTER TABLE pp_product_bom_trl drop constraint if exists ppproductbom_ppproductbomtrl CASCADE;

ALTER TABLE pp_product_bomline drop constraint if exists cuom_ppproductbomline CASCADE;

ALTER TABLE pp_product_bomline drop constraint if exists mchangenotice_ppproductbomline CASCADE;

ALTER TABLE pp_product_bomline drop constraint if exists mproduct_ppproductbomline CASCADE;

ALTER TABLE pp_product_bomline drop constraint if exists ppproductbom_ppproductbomline CASCADE;

ALTER TABLE pp_product_bomline_trl drop constraint if exists adlangu_ppproductbomlinetrl CASCADE;

ALTER TABLE pp_product_bomline_trl drop constraint if exists ppproductbomline_ppproductboml CASCADE;

ALTER TABLE pp_product_planning drop constraint if exists adworkflow_ppproductplanning CASCADE;

ALTER TABLE pp_product_planning drop constraint if exists ddnetworkdistribution_ppproduc CASCADE;

ALTER TABLE pp_product_planning drop constraint if exists mproduct_ppproductplanning CASCADE;

ALTER TABLE pp_product_planning drop constraint if exists mwarehouse_ppproductplanning CASCADE;

ALTER TABLE pp_product_planning drop constraint if exists planner_ppproductplanning CASCADE;

ALTER TABLE pp_product_planning drop constraint if exists ppproductbom_ppproductplanning CASCADE;

ALTER TABLE pp_product_planning drop constraint if exists sresource_ppproductplanning CASCADE;

ALTER TABLE pp_wf_node_asset drop constraint if exists aasset_ppwfnodeasset CASCADE;

ALTER TABLE pp_wf_node_asset drop constraint if exists adwfnode_ppwfnodeasset CASCADE;

ALTER TABLE pp_wf_node_product drop constraint if exists adwfnode_ppwfnodeproduct CASCADE;

ALTER TABLE pp_wf_node_product drop constraint if exists entityt_ppwfnodeproduct CASCADE;

ALTER TABLE pp_wf_node_product drop constraint if exists mproduct_ppwfnodeproduct CASCADE;

ALTER TABLE qm_specification drop constraint if exists adworkflow_qmspecification CASCADE;

ALTER TABLE qm_specification drop constraint if exists mattributeset_qmspecification CASCADE;

ALTER TABLE qm_specification drop constraint if exists mproduct_qmspecification CASCADE;

ALTER TABLE qm_specification drop constraint if exists ppproductbom_qmspecification CASCADE;

ALTER TABLE qm_specificationline drop constraint if exists mattribute_qmspecificationline CASCADE;

ALTER TABLE qm_specificationline drop constraint if exists qmspecification_qmspecificatio CASCADE;

ALTER TABLE r_category drop constraint if exists mproduct_rcategory CASCADE;

ALTER TABLE r_group drop constraint if exists mbom_rgroup CASCADE;

ALTER TABLE r_group drop constraint if exists mchangenotice_rgroup CASCADE;

ALTER TABLE r_group drop constraint if exists ppproductbom_rgroup CASCADE;

ALTER TABLE r_issueknown drop constraint if exists rissuerecommendation_rissuekno CASCADE;

ALTER TABLE r_issuesystem drop constraint if exists aasset_rissuesystem CASCADE;

ALTER TABLE r_request drop constraint if exists mchangerequest_rrequest CASCADE;

ALTER TABLE r_requestaction drop constraint if exists mproductspent_rrequestaction CASCADE;

ALTER TABLE r_requestprocessor drop constraint if exists rrequesttype_rrequestprocessor CASCADE;

ALTER TABLE r_requesttype drop constraint if exists rstatuscategory_rrequesttype CASCADE;

ALTER TABLE r_requestupdate drop constraint if exists mproductspent_rrequestupdate CASCADE;

ALTER TABLE r_status drop constraint if exists nextstatus_rstatus CASCADE;

ALTER TABLE r_status drop constraint if exists rstatuscategory_rstatus CASCADE;

ALTER TABLE r_status drop constraint if exists updatestatus_rstatus CASCADE;

ALTER TABLE u_posterminal drop constraint if exists cardbankaccount_uposterminal CASCADE;

ALTER TABLE u_posterminal drop constraint if exists cardtransferbankaccount_uposte CASCADE;

ALTER TABLE u_posterminal drop constraint if exists cardtransfercashbook_upostermi CASCADE;

ALTER TABLE u_posterminal drop constraint if exists cashtransferbankaccount_uposte CASCADE;

ALTER TABLE u_posterminal drop constraint if exists cashtransfercashbook_upostermi CASCADE;

ALTER TABLE u_posterminal drop constraint if exists ccashbook_uposterminal CASCADE;

ALTER TABLE u_posterminal drop constraint if exists ccashbpartner_uposterminal CASCADE;

ALTER TABLE u_posterminal drop constraint if exists checkbankaccount_uposterminal CASCADE;

ALTER TABLE u_posterminal drop constraint if exists checktransferbankaccount_upost CASCADE;

ALTER TABLE u_posterminal drop constraint if exists checktransfercashbook_uposterm CASCADE;

ALTER TABLE u_posterminal drop constraint if exists ctemplatebpartner_uposterminal CASCADE;

ALTER TABLE u_posterminal drop constraint if exists mwarehouse_uposterminal CASCADE;

ALTER TABLE u_posterminal drop constraint if exists popricelist_uposterminal CASCADE;

ALTER TABLE u_posterminal drop constraint if exists salesrep_uposterminal CASCADE;

ALTER TABLE u_posterminal drop constraint if exists sopricelist_uposterminal CASCADE;

ALTER TABLE u_rolemenu drop constraint if exists adrole_urolemenu CASCADE;

ALTER TABLE u_rolemenu drop constraint if exists uwebmenu_urolemenu CASCADE;

ALTER TABLE u_webmenu drop constraint if exists parentmenu_uwebmenu CASCADE;

ALTER TABLE w_store drop constraint if exists cpaymentterm_wstore CASCADE;

ALTER TABLE w_store drop constraint if exists mpricelist_wstore CASCADE;

ALTER TABLE w_store drop constraint if exists mwarehouse_wstore CASCADE;

ALTER TABLE w_store drop constraint if exists salesrep_wstore CASCADE;



-- now re-add the same constraints with the clause DEFERRABLE INITIALLY DEFERRED

ALTER TABLE a_asset ADD CONSTRAINT aparentasset_aasset FOREIGN KEY(a_parent_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE a_asset ADD CONSTRAINT cbpartnersr_aasset FOREIGN KEY(c_bpartnersr_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE a_asset ADD CONSTRAINT cproject_aasset FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE a_asset ADD CONSTRAINT leasebpartner_aasset FOREIGN KEY(lease_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE a_asset ADD CONSTRAINT minoutline_aasset FOREIGN KEY(m_inoutline_id) REFERENCES m_inoutline DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE a_asset_acct ADD CONSTRAINT aassetspread_aassetacct FOREIGN KEY(a_asset_spread_id) REFERENCES a_asset_spread DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE a_asset_acct ADD CONSTRAINT adepreciationconv_aassetacct FOREIGN KEY(a_depreciation_conv_id) REFERENCES a_depreciation_convention DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_asset_acct ADD CONSTRAINT adepreciationmethod_aassetacct FOREIGN KEY(a_depreciation_method_id) REFERENCES a_depreciation_method DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_asset_acct ADD CONSTRAINT adepreciationtableheader_aasse FOREIGN KEY(a_depreciation_table_header_id) REFERENCES a_depreciation_table_header DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_asset_addition ADD CONSTRAINT cinvoice_aassetaddition FOREIGN KEY(c_invoice_id) REFERENCES c_invoice DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE a_asset_addition ADD CONSTRAINT gljournalbatch_aassetaddition FOREIGN KEY(gl_journalbatch_id) REFERENCES gl_journalbatch DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_asset_change ADD CONSTRAINT adepreciationtableheader_aass2 FOREIGN KEY(a_depreciation_table_header_id) REFERENCES a_depreciation_table_header DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_asset_change ADD CONSTRAINT aduser_aassetchange FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE a_asset_change ADD CONSTRAINT aparentasset_aassetchange FOREIGN KEY(a_parent_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE a_asset_change ADD CONSTRAINT cacctschema_aassetchange FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE a_asset_change ADD CONSTRAINT cbpartnerlocation_aassetchange FOREIGN KEY(c_bpartner_location_id) REFERENCES c_bpartner_location DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_asset_change ADD CONSTRAINT clocation_aassetchange FOREIGN KEY(c_location_id) REFERENCES c_location DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE a_asset_disposed ADD CONSTRAINT aassettrade_aassetdisposed FOREIGN KEY(a_asset_trade_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE a_asset_disposed ADD CONSTRAINT cperiod_aassetdisposed FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE a_asset_group_acct ADD CONSTRAINT adepreciationtableheader_aass3 FOREIGN KEY(a_depreciation_table_header_id) REFERENCES a_depreciation_table_header DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_asset_reval_entry ADD CONSTRAINT cacctschema_aassetrevalentry FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_asset_reval_entry ADD CONSTRAINT ccurrency_aassetrevalentry FOREIGN KEY(c_currency_id) REFERENCES c_currency DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE a_asset_reval_entry ADD CONSTRAINT cdoctype_aassetrevalentry FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE a_asset_reval_entry ADD CONSTRAINT cperiod_aassetrevalentry FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE a_asset_reval_entry ADD CONSTRAINT glcategory_aassetrevalentry FOREIGN KEY(gl_category_id) REFERENCES gl_category DEFERRABLE INITIALLY DEFERRED;
   
ALTER TABLE a_asset_split ADD CONSTRAINT cperiod_aassetsplit FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE a_asset_transfer ADD CONSTRAINT cacctschema_aassettransfer FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE a_asset_transfer ADD CONSTRAINT cperiod_aassettransfer FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE a_depreciation_build ADD CONSTRAINT aendasset_adepreciationbuild FOREIGN KEY(a_end_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE a_depreciation_build ADD CONSTRAINT astartasset_adepreciationbuild FOREIGN KEY(a_start_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE a_depreciation_build ADD CONSTRAINT cperiod_adepreciationbuild FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE a_depreciation_entry ADD CONSTRAINT cacctschema_adepreciationentry FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_depreciation_entry ADD CONSTRAINT ccurrency_adepreciationentry FOREIGN KEY(c_currency_id) REFERENCES c_currency DEFERRABLE INITIALLY DEFERRED;
   
ALTER TABLE a_depreciation_entry ADD CONSTRAINT cdoctype_adepreciationentry FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE a_depreciation_entry ADD CONSTRAINT cperiod_adepreciationentry FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE a_depreciation_entry ADD CONSTRAINT glcategory_adepreciationentry FOREIGN KEY(gl_category_id) REFERENCES gl_category DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_depreciation_forecast ADD CONSTRAINT aendasset_adepreciationforecas FOREIGN KEY(a_end_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE a_depreciation_forecast ADD CONSTRAINT astartasset_adepreciationforec FOREIGN KEY(a_start_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_archive ADD CONSTRAINT cbpartner_adarchive FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE ad_client ADD CONSTRAINT adlangu_adclient FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE ad_client ADD CONSTRAINT adreplicationstrategy_adclient FOREIGN KEY(ad_replicationstrategy_id) REFERENCES ad_replicationstrategy DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_clientinfo ADD CONSTRAINT adtreeactivity_adclientinfo FOREIGN KEY(ad_tree_activity_id) REFERENCES ad_tree DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE ad_clientinfo ADD CONSTRAINT adtreecampaign_adclientinfo FOREIGN KEY(ad_tree_campaign_id) REFERENCES ad_tree DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE ad_clientinfo ADD CONSTRAINT cbpartnercashtrx_adclientinfo FOREIGN KEY(c_bpartnercashtrx_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
  
ALTER TABLE ad_clientinfo ADD CONSTRAINT mproductfreight_adclientinfo FOREIGN KEY(m_productfreight_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE ad_column ADD CONSTRAINT entityt_adcolumn FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE ad_document_action_access ADD CONSTRAINT adreflist_addocumentactionacce FOREIGN KEY(ad_ref_list_id) REFERENCES ad_ref_list DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_document_action_access ADD CONSTRAINT adrole_addocumentactionaccess FOREIGN KEY(ad_role_id) REFERENCES ad_role DEFERRABLE INITIALLY DEFERRED;
   
ALTER TABLE ad_document_action_access ADD CONSTRAINT cdoctype_addocumentactionacces FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_element ADD CONSTRAINT entityt_adelement FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE ad_error ADD CONSTRAINT adlangu_aderror FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE ad_field ADD CONSTRAINT adreference_adfield FOREIGN KEY(ad_reference_id) REFERENCES ad_reference DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE ad_field ADD CONSTRAINT adreferencevalue_adfield FOREIGN KEY(ad_reference_value_id) REFERENCES ad_reference DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE ad_field ADD CONSTRAINT advalrule_adfield FOREIGN KEY(ad_val_rule_id) REFERENCES ad_val_rule DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE ad_field ADD CONSTRAINT entityt_adfield FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE ad_field ADD CONSTRAINT includedtab_adfield FOREIGN KEY(included_tab_id) REFERENCES ad_tab DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE ad_fieldgroup ADD CONSTRAINT entityt_adfieldgroup FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE ad_form ADD CONSTRAINT entityt_adform FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE ad_housekeeping ADD CONSTRAINT adtable_adhousekeeping FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE ad_image ADD CONSTRAINT entityt_adimage FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE ad_infocolumn ADD CONSTRAINT entityt_adinfocolumn FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE ad_infowindow ADD CONSTRAINT entityt_adinfowindow FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE ad_menu ADD CONSTRAINT entityt_admenu FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE ad_message ADD CONSTRAINT entityt_admessage FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE ad_modelvalidator ADD CONSTRAINT entityt_admodelvalidator FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE ad_org ADD CONSTRAINT ad_org__ad_repli_ad_replica FOREIGN KEY(ad_replicationstrategy_id) REFERENCES ad_replicationstrategy DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_orginfo ADD CONSTRAINT cbank_adorginfo FOREIGN KEY(transferbank_id) REFERENCES c_bank DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE ad_orginfo ADD CONSTRAINT ccalendar_adorginfo FOREIGN KEY(c_calendar_id) REFERENCES c_calendar DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE ad_orginfo ADD CONSTRAINT ccashbook_adorginfo FOREIGN KEY(transfercashbook_id) REFERENCES c_cashbook DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE ad_orginfo ADD CONSTRAINT dropshipwarehouse_adorginfo FOREIGN KEY(dropship_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE ad_orgtype ADD CONSTRAINT adprintcolor_adorgtype FOREIGN KEY(ad_printcolor_id) REFERENCES ad_printcolor DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE ad_package_exp_common ADD CONSTRAINT adform_adpackageexpcommon FOREIGN KEY(ad_form_id) REFERENCES ad_form DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE ad_package_exp_common ADD CONSTRAINT adimpformat_adpackageexpcommon FOREIGN KEY(ad_impformat_id) REFERENCES ad_impformat DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_common ADD CONSTRAINT admenu_adpackageexpcommon FOREIGN KEY(ad_menu_id) REFERENCES ad_menu DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE ad_package_exp_common ADD CONSTRAINT adprocess_adpackageexpcommon FOREIGN KEY(ad_process_id) REFERENCES ad_process DEFERRABLE INITIALLY DEFERRED;
  
ALTER TABLE ad_package_exp_common ADD CONSTRAINT adreportview_adpackageexpcommo FOREIGN KEY(ad_reportview_id) REFERENCES ad_reportview DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_common ADD CONSTRAINT adrole_adpackageexpcommon FOREIGN KEY(ad_role_id) REFERENCES ad_role DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE ad_package_exp_common ADD CONSTRAINT adtable_adpackageexpcommon FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE ad_package_exp_common ADD CONSTRAINT adwindow_adpackageexpcommon FOREIGN KEY(ad_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE ad_package_exp_common ADD CONSTRAINT adworkbench_adpackageexpcommon FOREIGN KEY(ad_workbench_id) REFERENCES ad_workbench DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_common ADD CONSTRAINT adworkflow_adpackageexpcommon FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adform_adpackageexpdetail FOREIGN KEY(ad_form_id) REFERENCES ad_form DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adimpformat_adpackageexpdetail FOREIGN KEY(ad_impformat_id) REFERENCES ad_impformat DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_detail ADD CONSTRAINT admenu_adpackageexpdetail FOREIGN KEY(ad_menu_id) REFERENCES ad_menu DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE ad_package_exp_detail ADD CONSTRAINT admessage_adpackageexpdetail FOREIGN KEY(ad_message_id) REFERENCES ad_message DEFERRABLE INITIALLY DEFERRED;
  
ALTER TABLE ad_package_exp_detail ADD CONSTRAINT admodval_adpackageexpdetail FOREIGN KEY(ad_modelvalidator_id) REFERENCES ad_modelvalidator DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adprintformat_adpackageexpdeta FOREIGN KEY(ad_printformat_id) REFERENCES ad_printformat DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adprocess_adpackageexpdetail FOREIGN KEY(ad_process_id) REFERENCES ad_process DEFERRABLE INITIALLY DEFERRED;
  
ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adreference_adpackageexpdetail FOREIGN KEY(ad_reference_id) REFERENCES ad_reference DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adreportview_adpackageexpdetai FOREIGN KEY(ad_reportview_id) REFERENCES ad_reportview DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adrole_adpackageexpdetail FOREIGN KEY(ad_role_id) REFERENCES ad_role DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adtable_adpackageexpdetail FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adwindow_adpackageexpdetail FOREIGN KEY(ad_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adworkbench_adpackageexpdetail FOREIGN KEY(ad_workbench_id) REFERENCES ad_workbench DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_package_exp_detail ADD CONSTRAINT adworkflow_adpackageexpdetail FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;

-- ALTER TABLE ad_package_imp_backup ADD CONSTRAINT adcolumn_adpackageimpbackup FOREIGN KEY(ad_column_id) REFERENCES ad_column DEFERRABLE INITIALLY DEFERRED;
     
-- ALTER TABLE ad_package_imp_backup ADD CONSTRAINT adreference_adpackageimpbackup FOREIGN KEY(ad_reference_id) REFERENCES ad_reference DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_printform ADD CONSTRAINT distribordermailtext_adprintfo FOREIGN KEY(distrib_order_mailtext_id) REFERENCES r_mailtext DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_printform ADD CONSTRAINT distriborderprintformat_adprin FOREIGN KEY(distrib_order_printformat_id) REFERENCES ad_printformat DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_printform ADD CONSTRAINT manufordermailtext_adprintform FOREIGN KEY(manuf_order_mailtext_id) REFERENCES r_mailtext DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_printform ADD CONSTRAINT manuforderprintformat_adprintf FOREIGN KEY(manuf_order_printformat_id) REFERENCES ad_printformat DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_printformat ADD CONSTRAINT jasperprocess_adprintformat FOREIGN KEY(jasperprocess_id) REFERENCES ad_process DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE ad_printtableformat ADD CONSTRAINT adimage_adprinttableformat FOREIGN KEY(ad_image_id) REFERENCES ad_image DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE ad_process ADD CONSTRAINT adform_adprocess FOREIGN KEY(ad_form_id) REFERENCES ad_form DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE ad_process ADD CONSTRAINT adworkflow_adprocess FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE ad_process ADD CONSTRAINT entityt_adprocess FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE ad_process_para ADD CONSTRAINT entityt_adprocesspara FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE ad_ref_list ADD CONSTRAINT entityt_adreflist FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE ad_ref_table ADD CONSTRAINT adwindow_adreftable FOREIGN KEY(ad_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE ad_ref_table ADD CONSTRAINT entityt_adreftable FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE ad_reference ADD CONSTRAINT entityt_adreference FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE ad_registration ADD CONSTRAINT ccurrency_adregistration FOREIGN KEY(c_currency_id) REFERENCES c_currency DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE ad_replication ADD CONSTRAINT remoteclient_adreplication FOREIGN KEY(remote_client_id) REFERENCES ad_client DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE ad_replication ADD CONSTRAINT remoteorg_adreplication FOREIGN KEY(remote_org_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE ad_replicationdocument ADD CONSTRAINT adtable_adreplicationdocument FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
    
ALTER TABLE ad_replicationdocument ADD CONSTRAINT cdoctype_adreplicationdocument FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE ad_replicationstrategy ADD CONSTRAINT entityt_adreplicationstrategy FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_replicationstrategy ADD CONSTRAINT expprocessor_adreplicationstra FOREIGN KEY(exp_processor_id) REFERENCES exp_processor DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ad_replicationtable ADD CONSTRAINT entityt_adreplicationtable FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE ad_reportview ADD CONSTRAINT entityt_adreportview FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE ad_role ADD CONSTRAINT adtreeorg_adrole FOREIGN KEY(ad_tree_org_id) REFERENCES ad_tree DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE ad_rule ADD CONSTRAINT entityt_adrule FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE ad_searchdefinition ADD CONSTRAINT adcolumn_adsearchdefinition FOREIGN KEY(ad_column_id) REFERENCES ad_column DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE ad_searchdefinition ADD CONSTRAINT adtable_adsearchdefinition FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE ad_searchdefinition ADD CONSTRAINT adwindow_adsearchdefinition FOREIGN KEY(ad_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE ad_searchdefinition ADD CONSTRAINT powindow_adsearchdefinition FOREIGN KEY(po_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE ad_session ADD CONSTRAINT adrole_adsession FOREIGN KEY(ad_role_id) REFERENCES ad_role DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE ad_sysconfig ADD CONSTRAINT entityt_adsysconfig FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE ad_tab ADD CONSTRAINT entityt_adtab FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE ad_tab ADD CONSTRAINT parentcolumn_adtab FOREIGN KEY(parent_column_id) REFERENCES ad_column DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE ad_table ADD CONSTRAINT entityt_adtable FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE ad_table_scriptvalidator ADD CONSTRAINT adrule_adtablescriptvalidator FOREIGN KEY(ad_rule_id) REFERENCES ad_rule DEFERRABLE INITIALLY DEFERRED;
    
ALTER TABLE ad_table_scriptvalidator ADD CONSTRAINT adtable_adtablescriptvalidator FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE ad_task ADD CONSTRAINT entityt_adtask FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE ad_user ADD CONSTRAINT cjob_aduser FOREIGN KEY(c_job_id) REFERENCES c_job DEFERRABLE INITIALLY DEFERRED;
					   
ALTER TABLE ad_userdef_win ADD CONSTRAINT adlangu_aduserdefwin FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE ad_userquery ADD CONSTRAINT adtab_aduserquery FOREIGN KEY(ad_tab_id) REFERENCES ad_tab DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE ad_val_rule ADD CONSTRAINT entityt_advalrule FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE ad_wf_activity ADD CONSTRAINT adtable_adwfactivity FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE ad_wf_activity ADD CONSTRAINT adworkflow_adwfactivity FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE ad_wf_nextcondition ADD CONSTRAINT entityt_adwfnextcondition FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE ad_wf_node ADD CONSTRAINT adcolumn_adwfnode FOREIGN KEY(ad_column_id) REFERENCES ad_column DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE ad_wf_node ADD CONSTRAINT cbpartner_adwfnode FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE ad_wf_node ADD CONSTRAINT entityt_adwfnode FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE ad_wf_node ADD CONSTRAINT rmailtext_adwfnode FOREIGN KEY(r_mailtext_id) REFERENCES r_mailtext DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE ad_wf_node ADD CONSTRAINT sresource_adwfnode FOREIGN KEY(s_resource_id) REFERENCES s_resource DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE ad_wf_node_para ADD CONSTRAINT entityt_adwfnodepara FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE ad_wf_nodenext ADD CONSTRAINT entityt_adwfnodenext FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE ad_wf_process ADD CONSTRAINT adtable_adwfprocess FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE ad_wf_process ADD CONSTRAINT adwfprocess_adwfprocess FOREIGN KEY(ad_wf_process_id) REFERENCES ad_wf_process DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE ad_wf_responsible ADD CONSTRAINT entityt_adwfresponsible FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE ad_window ADD CONSTRAINT entityt_adwindow FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE ad_workbench ADD CONSTRAINT adcolumn_adworkbench FOREIGN KEY(ad_column_id) REFERENCES ad_column DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE ad_workbench ADD CONSTRAINT entityt_adworkbench FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE ad_workbenchwindow ADD CONSTRAINT entityt_adworkbenchwindow FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE ad_workflow ADD CONSTRAINT adtable_adworkflow FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE ad_workflow ADD CONSTRAINT adwfnode_adworkflow FOREIGN KEY(ad_wf_node_id) REFERENCES ad_wf_node DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE ad_workflow ADD CONSTRAINT entityt_adworkflow FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE ad_workflow ADD CONSTRAINT sresource_adworkflow FOREIGN KEY(s_resource_id) REFERENCES s_resource DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE asp_clientexception ADD CONSTRAINT adfield_aspclientexception FOREIGN KEY(ad_field_id) REFERENCES ad_field DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE asp_clientexception ADD CONSTRAINT adform_aspclientexception FOREIGN KEY(ad_form_id) REFERENCES ad_form DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE asp_clientexception ADD CONSTRAINT adprocess_aspclientexception FOREIGN KEY(ad_process_id) REFERENCES ad_process DEFERRABLE INITIALLY DEFERRED;
    
ALTER TABLE asp_clientexception ADD CONSTRAINT adprocesspara_aspclientexcepti FOREIGN KEY(ad_process_para_id) REFERENCES ad_process_para DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asp_clientexception ADD CONSTRAINT adtab_aspclientexception FOREIGN KEY(ad_tab_id) REFERENCES ad_tab DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE asp_clientexception ADD CONSTRAINT adtask_aspclientexception FOREIGN KEY(ad_task_id) REFERENCES ad_task DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE asp_clientexception ADD CONSTRAINT adwfnode_aspclientexception FOREIGN KEY(ad_wf_node_id) REFERENCES ad_wf_node DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE asp_clientexception ADD CONSTRAINT adwindow_aspclientexception FOREIGN KEY(ad_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE asp_clientexception ADD CONSTRAINT adworkflow_aspclientexception FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE asp_clientlevel ADD CONSTRAINT asplevel_aspclientlevel FOREIGN KEY(asp_level_id) REFERENCES asp_level DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE asp_clientlevel ADD CONSTRAINT aspmodule_aspclientlevel FOREIGN KEY(asp_module_id) REFERENCES asp_module DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE asp_field ADD CONSTRAINT adfield_aspfield FOREIGN KEY(ad_field_id) REFERENCES ad_field DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE asp_field ADD CONSTRAINT asptab_aspfield FOREIGN KEY(asp_tab_id) REFERENCES asp_tab DEFERRABLE INITIALLY DEFERRED;
				 
ALTER TABLE asp_form ADD CONSTRAINT adform_aspform FOREIGN KEY(ad_form_id) REFERENCES ad_form DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE asp_form ADD CONSTRAINT asplevel_aspform FOREIGN KEY(asp_level_id) REFERENCES asp_level DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE asp_level ADD CONSTRAINT aspmodule_asplevel FOREIGN KEY(asp_module_id) REFERENCES asp_module DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE asp_process ADD CONSTRAINT adprocess_aspprocess FOREIGN KEY(ad_process_id) REFERENCES ad_process DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE asp_process ADD CONSTRAINT asplevel_aspprocess FOREIGN KEY(asp_level_id) REFERENCES asp_level DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE asp_process_para ADD CONSTRAINT adprocesspara_aspprocesspara FOREIGN KEY(ad_process_para_id) REFERENCES ad_process_para DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asp_process_para ADD CONSTRAINT aspprocess_aspprocesspara FOREIGN KEY(asp_process_id) REFERENCES asp_process DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE asp_tab ADD CONSTRAINT adtab_asptab FOREIGN KEY(ad_tab_id) REFERENCES ad_tab DEFERRABLE INITIALLY DEFERRED;
					
ALTER TABLE asp_tab ADD CONSTRAINT aspwindow_asptab FOREIGN KEY(asp_window_id) REFERENCES asp_window DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE asp_task ADD CONSTRAINT adtask_asptask FOREIGN KEY(ad_task_id) REFERENCES ad_task DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE asp_task ADD CONSTRAINT asplevel_asptask FOREIGN KEY(asp_level_id) REFERENCES asp_level DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE asp_window ADD CONSTRAINT adwindow_aspwindow FOREIGN KEY(ad_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE asp_window ADD CONSTRAINT asplevel_aspwindow FOREIGN KEY(asp_level_id) REFERENCES asp_level DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE asp_workflow ADD CONSTRAINT adworkflow_aspworkflow FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE asp_workflow ADD CONSTRAINT asplevel_aspworkflow FOREIGN KEY(asp_level_id) REFERENCES asp_level DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE b_bid ADD CONSTRAINT aduser_bbid FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
					 
ALTER TABLE b_buyerfunds ADD CONSTRAINT aduser_bbuyerfunds FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE b_offer ADD CONSTRAINT aduser_boffer FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
				     
ALTER TABLE b_sellerfunds ADD CONSTRAINT aduser_bsellerfunds FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE c_acctprocessor ADD CONSTRAINT adtable_cacctprocessor FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE c_acctprocessor ADD CONSTRAINT cacctschema_cacctprocessor FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE c_acctschema ADD CONSTRAINT adorgonly_cacctschema FOREIGN KEY(ad_orgonly_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE c_acctschema_element ADD CONSTRAINT adcolumn_cacctschemaelement FOREIGN KEY(ad_column_id) REFERENCES ad_column DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE c_bp_group ADD CONSTRAINT adprintcolor_cbpgroup FOREIGN KEY(ad_printcolor_id) REFERENCES ad_printcolor DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE c_bp_group ADD CONSTRAINT cdunning_cbpgroup FOREIGN KEY(c_dunning_id) REFERENCES c_dunning DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE c_bpartner ADD CONSTRAINT ctaxgroup_cbpartner FOREIGN KEY(c_taxgroup_id) REFERENCES c_taxgroup DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE c_cashline ADD CONSTRAINT cpayment_ccashline FOREIGN KEY(c_payment_id) REFERENCES c_payment DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE c_channel ADD CONSTRAINT adprintcolor_cchannel FOREIGN KEY(ad_printcolor_id) REFERENCES ad_printcolor DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE c_charge ADD CONSTRAINT cbpartner_ccharge FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE c_charge ADD CONSTRAINT cchargetype_ccharge FOREIGN KEY(c_chargetype_id) REFERENCES c_chargetype DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE c_charge_trl ADD CONSTRAINT adlangu_cchargetrl FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE c_charge_trl ADD CONSTRAINT ccharge_cchargetrl FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE c_chargetype_doctype ADD CONSTRAINT cchargetype_cchargetypedoctype FOREIGN KEY(c_chargetype_id) REFERENCES c_chargetype DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE c_chargetype_doctype ADD CONSTRAINT cdoctype_cchargetypedoctype FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE c_country ADD CONSTRAINT ccountry_ccountry FOREIGN KEY(c_country_id) REFERENCES c_country DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE c_doctype ADD CONSTRAINT cdoctypedifference_cdoctype FOREIGN KEY(c_doctypedifference_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE c_doctype ADD CONSTRAINT definitesequence_cdoctype FOREIGN KEY(definitesequence_id) REFERENCES ad_sequence DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE c_dunningrunentry ADD CONSTRAINT aduser_cdunningrunentry FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE c_dunningrunentry ADD CONSTRAINT cbpartnerlocation_cdunningrune FOREIGN KEY(c_bpartner_location_id) REFERENCES c_bpartner_location DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE c_dunningrunentry ADD CONSTRAINT salesrep_cdunningrunentry FOREIGN KEY(salesrep_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE c_dunningrunline ADD CONSTRAINT cinvoicepayschedule_cdunningru FOREIGN KEY(c_invoicepayschedule_id) REFERENCES c_invoicepayschedule DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE c_invoice ADD CONSTRAINT cdunninglevel_cinvoice FOREIGN KEY(c_dunninglevel_id) REFERENCES c_dunninglevel DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE c_invoice ADD CONSTRAINT mrma_cinvoice FOREIGN KEY(m_rma_id) REFERENCES m_rma DEFERRABLE INITIALLY DEFERRED;
				       
ALTER TABLE c_invoice ADD CONSTRAINT reversal_cinvoice FOREIGN KEY(reversal_id) REFERENCES c_invoice DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE c_invoiceline ADD CONSTRAINT aassetgroup_cinvoiceline FOREIGN KEY(a_asset_group_id) REFERENCES a_asset_group DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE c_invoiceline ADD CONSTRAINT mrmaline_cinvoiceline FOREIGN KEY(m_rmaline_id) REFERENCES m_rmaline DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE c_order ADD CONSTRAINT cpos_corder FOREIGN KEY(c_pos_id) REFERENCES c_pos DEFERRABLE INITIALLY DEFERRED;
					   
ALTER TABLE c_order ADD CONSTRAINT dropshipbpartner_corder FOREIGN KEY(dropship_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE c_order ADD CONSTRAINT dropshiplocation_corder FOREIGN KEY(dropship_location_id) REFERENCES c_bpartner_location DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE c_order ADD CONSTRAINT dropshipuser_corder FOREIGN KEY(dropship_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE c_order ADD CONSTRAINT linkorder_corder FOREIGN KEY(link_order_id) REFERENCES c_order DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE c_order ADD CONSTRAINT mfreightcategory_order FOREIGN KEY(m_freightcategory_id) REFERENCES m_freightcategory DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE c_orderline ADD CONSTRAINT linkorderline_corderline FOREIGN KEY(link_orderline_id) REFERENCES c_orderline DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE c_orderline ADD CONSTRAINT mpromotion_corderline FOREIGN KEY(m_promotion_id) REFERENCES m_promotion DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE c_orderline ADD CONSTRAINT ppcostcollector_corderline FOREIGN KEY(pp_cost_collector_id) REFERENCES pp_cost_collector DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE c_payment ADD CONSTRAINT c_payment__c_cashbo_c_cashbook FOREIGN KEY(c_cashbook_id) REFERENCES c_cashbook DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE c_payment ADD CONSTRAINT cinvoice_cpayment FOREIGN KEY(c_invoice_id) REFERENCES c_invoice DEFERRABLE INITIALLY DEFERRED;
			   
-- ALTER TABLE c_payment ADD CONSTRAINT corder_cpayment FOREIGN KEY(c_order_id) REFERENCES c_order DEFERRABLE INITIALLY DEFERRED;
				 
-- ALTER TABLE c_payment ADD CONSTRAINT refpayment_cpayment FOREIGN KEY(ref_payment_id) REFERENCES c_payment DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE c_payment ADD CONSTRAINT reversal_cpayment FOREIGN KEY(reversal_id) REFERENCES c_payment DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE c_payselectioncheck ADD CONSTRAINT cbpbankaccount_cpayselectionch FOREIGN KEY(c_bp_bankaccount_id) REFERENCES c_bp_bankaccount DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE c_pos ADD CONSTRAINT cbankaccount_cpos FOREIGN KEY(c_bankaccount_id) REFERENCES c_bankaccount DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE c_pos ADD CONSTRAINT cbpartnercashtrx_cpos FOREIGN KEY(c_bpartnercashtrx_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE c_pos ADD CONSTRAINT cdoctype_cpos FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE c_poskey ADD CONSTRAINT adprintcolor_cposkey FOREIGN KEY(ad_printcolor_id) REFERENCES ad_printcolor DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE c_project ADD CONSTRAINT cbpartnersr_cproject FOREIGN KEY(c_bpartnersr_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE c_salesregion ADD CONSTRAINT salesrep_csalesregion FOREIGN KEY(salesrep_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE c_tax ADD CONSTRAINT adrule_ctax FOREIGN KEY(ad_rule_id) REFERENCES ad_rule DEFERRABLE INITIALLY DEFERRED;
					 
ALTER TABLE c_taxdefinition ADD CONSTRAINT adorgtype_ctaxdefinition FOREIGN KEY(ad_orgtype_id) REFERENCES ad_orgtype DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE c_taxdefinition ADD CONSTRAINT cbpartner_ctaxdefinition FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE c_taxdefinition ADD CONSTRAINT cbpgroup_ctaxdefinition FOREIGN KEY(c_bp_group_id) REFERENCES c_bp_group DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE c_taxdefinition ADD CONSTRAINT ctax_ctaxdefinition FOREIGN KEY(c_tax_id) REFERENCES c_tax DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE c_taxdefinition ADD CONSTRAINT ctaxbase_ctaxdefinition FOREIGN KEY(c_taxbase_id) REFERENCES c_taxbase DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE c_taxdefinition ADD CONSTRAINT ctaxcategory_ctaxdefinition FOREIGN KEY(c_taxcategory_id) REFERENCES c_taxcategory DEFERRABLE INITIALLY DEFERRED;
   
ALTER TABLE c_taxdefinition ADD CONSTRAINT ctaxgroup_ctaxdefinition FOREIGN KEY(c_taxgroup_id) REFERENCES c_taxgroup DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE c_taxdefinition ADD CONSTRAINT ctaxtype_ctaxdefinition FOREIGN KEY(c_taxtype_id) REFERENCES c_taxtype DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE c_taxdefinition ADD CONSTRAINT mproduct_ctaxdefinition FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE c_taxdefinition ADD CONSTRAINT mproductcategory_ctaxdefinitio FOREIGN KEY(m_product_category_id) REFERENCES m_product_category DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE c_uom_conversion ADD CONSTRAINT mproduct_cuomconversion FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE c_validcombination ADD CONSTRAINT csubacct_cvalidcombination FOREIGN KEY(c_subacct_id) REFERENCES c_subacct DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE c_withholding ADD CONSTRAINT benefici_cwithholding FOREIGN KEY(beneficiary) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE cm_newschannel ADD CONSTRAINT adlangu_cmnewschannel FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE dd_networkdistribution ADD CONSTRAINT mchangenotice_ddnetworkdistrib FOREIGN KEY(m_changenotice_id) REFERENCES m_changenotice DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE dd_networkdistributionline ADD CONSTRAINT ddnetworkdistribution_ddnetwor FOREIGN KEY(dd_networkdistribution_id) REFERENCES dd_networkdistribution DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE dd_networkdistributionline ADD CONSTRAINT mshipper_ddnetworkdistribution FOREIGN KEY(m_shipper_id) REFERENCES m_shipper DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE dd_networkdistributionline ADD CONSTRAINT mwarehouse_ddnetworkdistributi FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE dd_networkdistributionline ADD CONSTRAINT mwarehousesource_ddnetworkdist FOREIGN KEY(m_warehousesource_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE dd_order ADD CONSTRAINT adorgtrx_ddorder FOREIGN KEY(ad_orgtrx_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE dd_order ADD CONSTRAINT aduser_ddorder FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE dd_order ADD CONSTRAINT cactivity_ddorder FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE dd_order ADD CONSTRAINT cbpartner_ddorder FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE dd_order ADD CONSTRAINT cbpartnerlocation_ddorder FOREIGN KEY(c_bpartner_location_id) REFERENCES c_bpartner_location DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE dd_order ADD CONSTRAINT ccampaign_ddorder FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE dd_order ADD CONSTRAINT ccharge_ddorder FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE dd_order ADD CONSTRAINT cdoctype_ddorder FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE dd_order ADD CONSTRAINT cinvoice_ddorder FOREIGN KEY(c_invoice_id) REFERENCES c_invoice DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE dd_order ADD CONSTRAINT corder_ddorder FOREIGN KEY(c_order_id) REFERENCES c_order DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE dd_order ADD CONSTRAINT cproject_ddorder FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE dd_order ADD CONSTRAINT mshipper_ddorder FOREIGN KEY(m_shipper_id) REFERENCES m_shipper DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE dd_order ADD CONSTRAINT mwarehouse_ddorder FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE dd_order ADD CONSTRAINT salesrep_ddorder FOREIGN KEY(salesrep_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE dd_order ADD CONSTRAINT user1_ddorder FOREIGN KEY(user1_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE dd_order ADD CONSTRAINT user2_ddorder FOREIGN KEY(user2_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE dd_orderline ADD CONSTRAINT adorgtrx_ddorderline FOREIGN KEY(ad_orgtrx_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE dd_orderline ADD CONSTRAINT cactivity_ddorderline FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE dd_orderline ADD CONSTRAINT ccampaign_ddorderline FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE dd_orderline ADD CONSTRAINT ccharge_ddorderline FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE dd_orderline ADD CONSTRAINT cproject_ddorderline FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE dd_orderline ADD CONSTRAINT cuom_ddorderline FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
				 
ALTER TABLE dd_orderline ADD CONSTRAINT ddorder_ddorderline FOREIGN KEY(dd_order_id) REFERENCES dd_order DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE dd_orderline ADD CONSTRAINT mlocator_ddorderline FOREIGN KEY(m_locator_id) REFERENCES m_locator DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE dd_orderline ADD CONSTRAINT mlocatorto_ddorderline FOREIGN KEY(m_locatorto_id) REFERENCES m_locator DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE dd_orderline ADD CONSTRAINT mproduct_ddorderline FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE dd_orderline ADD CONSTRAINT user1_ddorderline FOREIGN KEY(user1_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE dd_orderline ADD CONSTRAINT user2_ddorderline FOREIGN KEY(user2_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE exp_format ADD CONSTRAINT adtable_expformat FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE exp_formatline ADD CONSTRAINT adcolumn_expformatline FOREIGN KEY(ad_column_id) REFERENCES ad_column DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE exp_formatline ADD CONSTRAINT expembeddedformat_expformatlin FOREIGN KEY(exp_embeddedformat_id) REFERENCES exp_format DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE exp_formatline ADD CONSTRAINT expformat_expformatline FOREIGN KEY(exp_format_id) REFERENCES exp_format DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE exp_processor ADD CONSTRAINT expprocessortype_expprocessor FOREIGN KEY(exp_processor_type_id) REFERENCES exp_processor_type DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE exp_processorparameter ADD CONSTRAINT expprocessor_expprocessorparam FOREIGN KEY(exp_processor_id) REFERENCES exp_processor DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE fact_acct ADD CONSTRAINT csubacct_factacct FOREIGN KEY(c_subacct_id) REFERENCES c_subacct DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE fact_acct_summary ADD CONSTRAINT account_factacctsummary FOREIGN KEY(account_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE fact_acct_summary ADD CONSTRAINT cacctschema_factacctsummary FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;
   
ALTER TABLE fact_acct_summary ADD CONSTRAINT cactivity_factacctsummary FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE fact_acct_summary ADD CONSTRAINT cbpartner_factacctsummary FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE fact_acct_summary ADD CONSTRAINT ccampaign_factacctsummary FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE fact_acct_summary ADD CONSTRAINT cperiod_factacctsummary FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE fact_acct_summary ADD CONSTRAINT cproject_factacctsummary FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE fact_acct_summary ADD CONSTRAINT cprojectphase_factacctsummary FOREIGN KEY(c_projectphase_id) REFERENCES c_projectphase DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE fact_acct_summary ADD CONSTRAINT cprojecttask_factacctsummary FOREIGN KEY(c_projecttask_id) REFERENCES c_projecttask DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE fact_acct_summary ADD CONSTRAINT csalesregion_factacctsummary FOREIGN KEY(c_salesregion_id) REFERENCES c_salesregion DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE fact_acct_summary ADD CONSTRAINT csubacct_factacctsummary FOREIGN KEY(c_subacct_id) REFERENCES c_subacct DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE fact_acct_summary ADD CONSTRAINT glbudget_factacctsummary FOREIGN KEY(gl_budget_id) REFERENCES gl_budget DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE fact_acct_summary ADD CONSTRAINT mproduct_factacctsummary FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE fact_acct_summary ADD CONSTRAINT pareportcube_factacctsummary FOREIGN KEY(pa_reportcube_id) REFERENCES pa_reportcube DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE fact_acct_summary ADD CONSTRAINT user1_factacctsummary FOREIGN KEY(user1_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE fact_acct_summary ADD CONSTRAINT user2_factacctsummary FOREIGN KEY(user2_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE gl_journal ADD CONSTRAINT reversal_gljournal FOREIGN KEY(reversal_id) REFERENCES gl_journal DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE gl_journalbatch ADD CONSTRAINT reversal_gljournalbatch FOREIGN KEY(reversal_id) REFERENCES gl_journalbatch DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE gl_journalline ADD CONSTRAINT aasset_gljournalline FOREIGN KEY(a_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE gl_journalline ADD CONSTRAINT aassetgroup_gljournalline FOREIGN KEY(a_asset_group_id) REFERENCES a_asset_group DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE hr_attribute ADD CONSTRAINT adrule_hrattribute FOREIGN KEY(ad_rule_id) REFERENCES ad_rule DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE hr_attribute ADD CONSTRAINT cbpartner_hrattribute FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE hr_attribute ADD CONSTRAINT hrconcept_hrattribute FOREIGN KEY(hr_concept_id) REFERENCES hr_concept DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE hr_attribute ADD CONSTRAINT hrdepartment_hrattribute FOREIGN KEY(hr_department_id) REFERENCES hr_department DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE hr_attribute ADD CONSTRAINT hremployee_hrattribute FOREIGN KEY(hr_employee_id) REFERENCES hr_employee DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE hr_attribute ADD CONSTRAINT hrjob_hrattribute FOREIGN KEY(hr_job_id) REFERENCES hr_job DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE hr_attribute ADD CONSTRAINT hrpayroll_hrattribute FOREIGN KEY(hr_payroll_id) REFERENCES hr_payroll DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE hr_concept ADD CONSTRAINT adreference_hrconcept FOREIGN KEY(ad_reference_id) REFERENCES ad_reference DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE hr_concept ADD CONSTRAINT hrconceptcategory_hrconcept FOREIGN KEY(hr_concept_category_id) REFERENCES hr_concept_category DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE hr_concept ADD CONSTRAINT hrdepartment_hrconcept FOREIGN KEY(hr_department_id) REFERENCES hr_department DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE hr_concept ADD CONSTRAINT hrjob_hrconcept FOREIGN KEY(hr_job_id) REFERENCES hr_job DEFERRABLE INITIALLY DEFERRED;
				  
ALTER TABLE hr_concept ADD CONSTRAINT hrpayroll_hrconcept FOREIGN KEY(hr_payroll_id) REFERENCES hr_payroll DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE hr_concept_acct ADD CONSTRAINT cacctschema_hrconceptacct FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE hr_concept_acct ADD CONSTRAINT cbpgroup_hrconceptacct FOREIGN KEY(c_bp_group_id) REFERENCES c_bp_group DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE hr_concept_acct ADD CONSTRAINT hrconcept_hrconceptacct FOREIGN KEY(hr_concept_id) REFERENCES hr_concept DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE hr_concept_acct ADD CONSTRAINT user1_hrconceptacct FOREIGN KEY(user1_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE hr_contract ADD CONSTRAINT cbpartner_hrcontract FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_contract ADD CONSTRAINT ccampaign_hrcontract FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_contract ADD CONSTRAINT cproject_hrcontract FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE hr_department ADD CONSTRAINT activity_hrdepartment FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE hr_employee ADD CONSTRAINT cactivity_hremployee FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_employee ADD CONSTRAINT cbpartner_hremployee FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_employee ADD CONSTRAINT hrdepartment_hremployee FOREIGN KEY(hr_department_id) REFERENCES hr_department DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE hr_employee ADD CONSTRAINT hrjob_hremployee FOREIGN KEY(hr_job_id) REFERENCES hr_job DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE hr_employee ADD CONSTRAINT hrpayroll_hremployee FOREIGN KEY(hr_payroll_id) REFERENCES hr_payroll DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_job ADD CONSTRAINT hrdepartment_hrjob FOREIGN KEY(hr_department_id) REFERENCES hr_department DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE hr_job ADD CONSTRAINT nextjob_hrjob FOREIGN KEY(next_job_id) REFERENCES hr_job DEFERRABLE INITIALLY DEFERRED;
				      
ALTER TABLE hr_job ADD CONSTRAINT supervisor_hrjob FOREIGN KEY(supervisor_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE hr_list ADD CONSTRAINT hrdepartment_hrlist FOREIGN KEY(hr_department_id) REFERENCES hr_department DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE hr_list ADD CONSTRAINT hremployee_hrlist FOREIGN KEY(hr_employee_id) REFERENCES hr_employee DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE hr_list ADD CONSTRAINT hrlisttype_hrlist FOREIGN KEY(hr_listtype_id) REFERENCES hr_listtype DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE hr_list ADD CONSTRAINT hrpayroll_hrlist FOREIGN KEY(hr_payroll_id) REFERENCES hr_payroll DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE hr_listline ADD CONSTRAINT hrlistversion_hrlistline FOREIGN KEY(hr_listversion_id) REFERENCES hr_listversion DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE hr_listversion ADD CONSTRAINT hrlist_hrlistversion FOREIGN KEY(hr_list_id) REFERENCES hr_list DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE hr_listversion ADD CONSTRAINT hrlistbase_hrlistversion FOREIGN KEY(hr_listbase_id) REFERENCES hr_list DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE hr_movement ADD CONSTRAINT adorgtrx_hrmovement FOREIGN KEY(ad_orgtrx_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE hr_movement ADD CONSTRAINT adrule_hrmovement FOREIGN KEY(ad_rule_id) REFERENCES ad_rule DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE hr_movement ADD CONSTRAINT cactivity_hrmovement FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_movement ADD CONSTRAINT cbpartner_hrmovement FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_movement ADD CONSTRAINT ccampaign_hrmovement FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_movement ADD CONSTRAINT cproject_hrmovement FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE hr_movement ADD CONSTRAINT cprojectphase_hrmovement FOREIGN KEY(c_projectphase_id) REFERENCES c_projectphase DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE hr_movement ADD CONSTRAINT cprojecttask_hrmovement FOREIGN KEY(c_projecttask_id) REFERENCES c_projecttask DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE hr_movement ADD CONSTRAINT hrconcept_hrmovement FOREIGN KEY(hr_concept_id) REFERENCES hr_concept DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_movement ADD CONSTRAINT hrconceptcategory_hrmovement FOREIGN KEY(hr_concept_category_id) REFERENCES hr_concept_category DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE hr_movement ADD CONSTRAINT hrdepartment_hrmovement FOREIGN KEY(hr_department_id) REFERENCES hr_department DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE hr_movement ADD CONSTRAINT hrjob_hrmovement FOREIGN KEY(hr_job_id) REFERENCES hr_job DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE hr_movement ADD CONSTRAINT hrprocess_hrmovement FOREIGN KEY(hr_process_id) REFERENCES hr_process DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE hr_movement ADD CONSTRAINT ppcostcollector_hrmovement FOREIGN KEY(pp_cost_collector_id) REFERENCES pp_cost_collector DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE hr_movement ADD CONSTRAINT user1_hrmovement FOREIGN KEY(user1_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE hr_movement ADD CONSTRAINT user2_hrmovement FOREIGN KEY(user2_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE hr_payroll ADD CONSTRAINT adprintformat_hrpayroll FOREIGN KEY(ad_printformat_id) REFERENCES ad_printformat DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE hr_payroll ADD CONSTRAINT ccharge_hrpayroll FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE hr_payroll ADD CONSTRAINT hrcontract_hrpayroll FOREIGN KEY(hr_contract_id) REFERENCES hr_contract DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE hr_payrollconcept ADD CONSTRAINT adrule_hrpayrollconcept FOREIGN KEY(ad_rule_id) REFERENCES ad_rule DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE hr_payrollconcept ADD CONSTRAINT hrconcept_hrpayrollconcept FOREIGN KEY(hr_concept_id) REFERENCES hr_concept DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE hr_payrollconcept ADD CONSTRAINT hrpayroll_hrpayrollconcept FOREIGN KEY(hr_payroll_id) REFERENCES hr_payroll DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE hr_period ADD CONSTRAINT cperiod_hrperiod FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE hr_period ADD CONSTRAINT cyear_hrperiod FOREIGN KEY(c_year_id) REFERENCES c_year DEFERRABLE INITIALLY DEFERRED;
				    
ALTER TABLE hr_period ADD CONSTRAINT hrpayroll_hrperiod FOREIGN KEY(hr_payroll_id) REFERENCES hr_payroll DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE hr_period ADD CONSTRAINT hryear_hrperiod FOREIGN KEY(hr_year_id) REFERENCES hr_year DEFERRABLE INITIALLY DEFERRED;
				 
ALTER TABLE hr_process ADD CONSTRAINT adprintformat_hrprocess FOREIGN KEY(ad_printformat_id) REFERENCES ad_printformat DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE hr_process ADD CONSTRAINT adworkflow_hrprocess FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE hr_process ADD CONSTRAINT cbpartner_hrprocess FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE hr_process ADD CONSTRAINT ccharge_hrprocess FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE hr_process ADD CONSTRAINT cdoctype_hrprocess FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE hr_process ADD CONSTRAINT cdoctypetarget_hrprocess FOREIGN KEY(c_doctypetarget_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE hr_process ADD CONSTRAINT cpayselection_hrprocess FOREIGN KEY(c_payselection_id) REFERENCES c_payselection DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE hr_process ADD CONSTRAINT hrdepartment_hrprocess FOREIGN KEY(hr_department_id) REFERENCES hr_department DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE hr_process ADD CONSTRAINT hremployee_hrprocess FOREIGN KEY(hr_employee_id) REFERENCES hr_employee DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE hr_process ADD CONSTRAINT hrjob_hrprocess FOREIGN KEY(hr_job_id) REFERENCES hr_job DEFERRABLE INITIALLY DEFERRED;
				  
ALTER TABLE hr_process ADD CONSTRAINT hrpayroll_hrprocess FOREIGN KEY(hr_payroll_id) REFERENCES hr_payroll DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE hr_process ADD CONSTRAINT hrperiod_hrprocess FOREIGN KEY(hr_period_id) REFERENCES hr_period DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE hr_process ADD CONSTRAINT reversal_hrprocess FOREIGN KEY(reversal_id) REFERENCES hr_process DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE hr_year ADD CONSTRAINT cyear_hryear FOREIGN KEY(c_year_id) REFERENCES c_year DEFERRABLE INITIALLY DEFERRED;
					
ALTER TABLE hr_year ADD CONSTRAINT hrpayroll_hryear FOREIGN KEY(hr_payroll_id) REFERENCES hr_payroll DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE i_asset ADD CONSTRAINT aassetgroup_iasset FOREIGN KEY(a_asset_group_id) REFERENCES a_asset_group DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE i_asset ADD CONSTRAINT adepreciationtableheader_iasse FOREIGN KEY(a_depreciation_table_header_id) REFERENCES a_depreciation_table_header DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE i_asset ADD CONSTRAINT cacctschema_iasset FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE i_asset ADD CONSTRAINT cbpartner_iasset FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE i_asset ADD CONSTRAINT cbpartnerlocation_iasset FOREIGN KEY(c_bpartner_location_id) REFERENCES c_bpartner_location DEFERRABLE INITIALLY DEFERRED;
  
ALTER TABLE i_asset ADD CONSTRAINT clocation_iasset FOREIGN KEY(c_location_id) REFERENCES c_location DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE i_asset ADD CONSTRAINT mlocator_iasset FOREIGN KEY(m_locator_id) REFERENCES m_locator DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE i_asset ADD CONSTRAINT mproduct_iasset FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE i_bpartner ADD CONSTRAINT rinterestarea_ibpartner FOREIGN KEY(r_interestarea_id) REFERENCES r_interestarea DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE i_fajournal ADD CONSTRAINT account_ifajournal FOREIGN KEY(account_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE i_fajournal ADD CONSTRAINT adorgdoc_ifajournal FOREIGN KEY(ad_orgdoc_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE i_fajournal ADD CONSTRAINT adorgtrx_ifajournal FOREIGN KEY(ad_orgtrx_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE i_fajournal ADD CONSTRAINT cacctschema_ifajournal FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE i_fajournal ADD CONSTRAINT cactivity_ifajournal FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE i_fajournal ADD CONSTRAINT cbpartner_ifajournal FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE i_fajournal ADD CONSTRAINT ccampaign_ifajournal FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE i_fajournal ADD CONSTRAINT ccurrency_ifajournal FOREIGN KEY(c_currency_id) REFERENCES c_currency DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE i_fajournal ADD CONSTRAINT cdoctype_ifajournal FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE i_fajournal ADD CONSTRAINT cperiod_ifajournal FOREIGN KEY(c_period_id) REFERENCES c_period DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE i_fajournal ADD CONSTRAINT cproject_ifajournal FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE i_fajournal ADD CONSTRAINT csalesregion_ifajournal FOREIGN KEY(c_salesregion_id) REFERENCES c_salesregion DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE i_fajournal ADD CONSTRAINT cuom_ifajournal FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE i_fajournal ADD CONSTRAINT cvalidcombination_ifajournal FOREIGN KEY(c_validcombination_id) REFERENCES c_validcombination DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE i_fajournal ADD CONSTRAINT glbudget_ifajournal FOREIGN KEY(gl_budget_id) REFERENCES gl_budget DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE i_fajournal ADD CONSTRAINT glcategory_ifajournal FOREIGN KEY(gl_category_id) REFERENCES gl_category DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE i_fajournal ADD CONSTRAINT gljournal_ifajournal FOREIGN KEY(gl_journal_id) REFERENCES gl_journal DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE i_fajournal ADD CONSTRAINT gljournalbatch_ifajournal FOREIGN KEY(gl_journalbatch_id) REFERENCES gl_journalbatch DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE i_fajournal ADD CONSTRAINT gljournalline_ifajournal FOREIGN KEY(gl_journalline_id) REFERENCES gl_journalline DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE i_fajournal ADD CONSTRAINT mproduct_ifajournal FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE i_fajournal ADD CONSTRAINT user1_ifajournal FOREIGN KEY(user1_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE i_fajournal ADD CONSTRAINT user2_ifajournal FOREIGN KEY(user2_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE i_gljournal ADD CONSTRAINT cuom_igljournal FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE i_invoice ADD CONSTRAINT ccharge_iinvoice FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE i_order ADD CONSTRAINT ccharge_iorder FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
				  
ALTER TABLE i_payment ADD CONSTRAINT ccurrency_ipayment FOREIGN KEY(c_currency_id) REFERENCES c_currency DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE i_pricelist ADD CONSTRAINT cbpartner_ipricelist FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE i_pricelist ADD CONSTRAINT ccurrency_ipricelist FOREIGN KEY(c_currency_id) REFERENCES c_currency DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE i_pricelist ADD CONSTRAINT cuom_ipricelist FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE i_pricelist ADD CONSTRAINT mpricelist_ipricelist FOREIGN KEY(m_pricelist_id) REFERENCES m_pricelist DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE i_pricelist ADD CONSTRAINT mpricelistversion_ipricelist FOREIGN KEY(m_pricelist_version_id) REFERENCES m_pricelist_version DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE i_pricelist ADD CONSTRAINT mproduct_ipricelist FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE imp_processor ADD CONSTRAINT impprocessortype_impprocessor FOREIGN KEY(imp_processor_type_id) REFERENCES imp_processor_type DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE imp_processorlog ADD CONSTRAINT impprocessor_impprocessorlog FOREIGN KEY(imp_processor_id) REFERENCES imp_processor DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE imp_processorparameter ADD CONSTRAINT impprocessor_impprocessorparam FOREIGN KEY(imp_processor_id) REFERENCES imp_processor DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE k_synonym ADD CONSTRAINT adlangu_ksynonym FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE m_changerequest ADD CONSTRAINT mfixchangenotice_mchangereques FOREIGN KEY(m_fixchangenotice_id) REFERENCES m_changenotice DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_changerequest ADD CONSTRAINT ppproductbom_mchangerequest FOREIGN KEY(pp_product_bom_id) REFERENCES pp_product_bom DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE m_costdetail ADD CONSTRAINT ppcostcollector_mcostdetail FOREIGN KEY(pp_cost_collector_id) REFERENCES pp_cost_collector DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_forecast ADD CONSTRAINT mpricelist_mforecast FOREIGN KEY(m_pricelist_id) REFERENCES m_pricelist DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE m_forecastline ADD CONSTRAINT mwarehouse_mforecastline FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
	   
-- ALTER TABLE m_inout ADD CONSTRAINT cinvoice_minout FOREIGN KEY(c_invoice_id) REFERENCES c_invoice DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE m_inout ADD CONSTRAINT dropshipbpartner_minout FOREIGN KEY(dropship_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE m_inout ADD CONSTRAINT dropshiplocation_minout FOREIGN KEY(dropship_location_id) REFERENCES c_bpartner_location DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE m_inout ADD CONSTRAINT dropshipuser_minout FOREIGN KEY(dropship_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE m_inout ADD CONSTRAINT mrma_minout FOREIGN KEY(m_rma_id) REFERENCES m_rma DEFERRABLE INITIALLY DEFERRED;
					   
ALTER TABLE m_inout ADD CONSTRAINT reversal_minout FOREIGN KEY(reversal_id) REFERENCES m_inout DEFERRABLE INITIALLY DEFERRED;
				  
ALTER TABLE m_inoutconfirm ADD CONSTRAINT cinvoice_minoutconfirm FOREIGN KEY(c_invoice_id) REFERENCES c_invoice DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE m_inoutconfirm ADD CONSTRAINT minventory_minoutconfirm FOREIGN KEY(m_inventory_id) REFERENCES m_inventory DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE m_inoutline ADD CONSTRAINT mrmaline_minoutline FOREIGN KEY(m_rmaline_id) REFERENCES m_rmaline DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE m_inoutline ADD CONSTRAINT reversalline_minoutline FOREIGN KEY(reversalline_id) REFERENCES m_inoutline DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE m_inoutlineconfirm ADD CONSTRAINT cinvoiceline_minoutlineconfirm FOREIGN KEY(c_invoiceline_id) REFERENCES c_invoiceline DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_inoutlineconfirm ADD CONSTRAINT minventoryline_minoutlineconfi FOREIGN KEY(m_inventoryline_id) REFERENCES m_inventoryline DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_inventory ADD CONSTRAINT cdoctype_minventory FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE m_inventory ADD CONSTRAINT reversal_minventory FOREIGN KEY(reversal_id) REFERENCES m_inventory DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE m_inventoryline ADD CONSTRAINT reversalline_minventoryline FOREIGN KEY(reversalline_id) REFERENCES m_inventoryline DEFERRABLE INITIALLY DEFERRED;
  
ALTER TABLE m_movement ADD CONSTRAINT aduser_mmovement FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE m_movement ADD CONSTRAINT cbpartner_mmovement FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE m_movement ADD CONSTRAINT ccharge_mmovement FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE m_movement ADD CONSTRAINT cdoctype_mmovement FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE m_movement ADD CONSTRAINT ddorder_mmovement FOREIGN KEY(dd_order_id) REFERENCES dd_order DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE m_movement ADD CONSTRAINT mshipper_mmovement FOREIGN KEY(m_shipper_id) REFERENCES m_shipper DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE m_movement ADD CONSTRAINT reversal_mmovement FOREIGN KEY(reversal_id) REFERENCES m_movement DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE m_movement ADD CONSTRAINT salesrep_mmovement FOREIGN KEY(salesrep_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
			    
ALTER TABLE m_movementline ADD CONSTRAINT ddorderline_mmovementline FOREIGN KEY(dd_orderline_id) REFERENCES dd_orderline DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE m_movementline ADD CONSTRAINT reversalline_mmovementline FOREIGN KEY(reversalline_id) REFERENCES m_movementline DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE m_pricelist_version ADD CONSTRAINT mpricelistversionbase_mpriceli FOREIGN KEY(m_pricelist_version_base_id) REFERENCES m_pricelist_version DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_product ADD CONSTRAINT salesrep_mproduct FOREIGN KEY(salesrep_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE m_product_category ADD CONSTRAINT adprintcolor_mproductcategory FOREIGN KEY(ad_printcolor_id) REFERENCES ad_printcolor DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_product_category ADD CONSTRAINT mproductcat_parentcat FOREIGN KEY(m_product_category_parent_id) REFERENCES m_product_category DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_productpricevendorbreak ADD CONSTRAINT cbpartner_mproductpricevendorb FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_productpricevendorbreak ADD CONSTRAINT mpricelistversion_mproductpric FOREIGN KEY(m_pricelist_version_id) REFERENCES m_pricelist_version DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_productpricevendorbreak ADD CONSTRAINT mproduct_mproductpricevendorbr FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotion ADD CONSTRAINT ccampaign_mpromotion FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE m_promotiondistribution ADD CONSTRAINT mpromotion_mpromotiondistribut FOREIGN KEY(m_promotion_id) REFERENCES m_promotion DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotiondistribution ADD CONSTRAINT mpromotionline_mpromotiondistr FOREIGN KEY(m_promotionline_id) REFERENCES m_promotionline DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotiongroupline ADD CONSTRAINT mproduct_mpromotiongroupline FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE m_promotiongroupline ADD CONSTRAINT mpromotiongroup_mpromotiongrou FOREIGN KEY(m_promotiongroup_id) REFERENCES m_promotiongroup DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionline ADD CONSTRAINT mpromotion_mpromotionline FOREIGN KEY(m_promotion_id) REFERENCES m_promotion DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE m_promotionline ADD CONSTRAINT mpromotiongroup_mpromotionline FOREIGN KEY(m_promotiongroup_id) REFERENCES m_promotiongroup DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionprecondition ADD CONSTRAINT cactivity_mpromotionpreconditi FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionprecondition ADD CONSTRAINT cbpartner_mpromotionpreconditi FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionprecondition ADD CONSTRAINT cbpgroup_mpromotionpreconditio FOREIGN KEY(c_bp_group_id) REFERENCES c_bp_group DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionprecondition ADD CONSTRAINT mpricelist_mpromotionprecondit FOREIGN KEY(m_pricelist_id) REFERENCES m_pricelist DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionprecondition ADD CONSTRAINT mpromotion_mpromotionprecondit FOREIGN KEY(m_promotion_id) REFERENCES m_promotion DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionprecondition ADD CONSTRAINT mwarehouse_mpromotionprecondit FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionreward ADD CONSTRAINT ccharge_mpromotionreward FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE m_promotionreward ADD CONSTRAINT mpromotion_mpromotionreward FOREIGN KEY(m_promotion_id) REFERENCES m_promotion DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE m_promotionreward ADD CONSTRAINT mpromotiondistribution_mpromot FOREIGN KEY(m_promotiondistribution_id) REFERENCES m_promotiondistribution DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_promotionreward ADD CONSTRAINT mtargetdistribution_mpromotion FOREIGN KEY(m_targetdistribution_id) REFERENCES m_promotiondistribution DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_replenish ADD CONSTRAINT mlocator_mreplenish FOREIGN KEY(m_locator_id) REFERENCES m_locator DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE m_replenish ADD CONSTRAINT mwarehousesource_mreplenish FOREIGN KEY(m_warehousesource_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE m_requisition ADD CONSTRAINT cdoctype_mrequisition FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE m_requisitionline ADD CONSTRAINT cbpartner_mrequisitionline FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE m_requisitionline ADD CONSTRAINT ccharge_mrequisitionline FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
	      
-- ALTER TABLE m_requisitionline ADD CONSTRAINT corderline_mrequisitionline FOREIGN KEY(c_orderline_id) REFERENCES c_orderline DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE m_requisitionline ADD CONSTRAINT cuom_mrequisitionline FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE m_rma ADD CONSTRAINT cbpartner_mrma FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE m_rma ADD CONSTRAINT ccurrency_mrma FOREIGN KEY(c_currency_id) REFERENCES c_currency DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE m_rma ADD CONSTRAINT cdoctype_mrma FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE m_rma ADD CONSTRAINT corder_mrma FOREIGN KEY(c_order_id) REFERENCES c_order DEFERRABLE INITIALLY DEFERRED;
					 
ALTER TABLE m_rma ADD CONSTRAINT mrmatype_mrma FOREIGN KEY(m_rmatype_id) REFERENCES m_rmatype DEFERRABLE INITIALLY DEFERRED;
				   
ALTER TABLE m_rma ADD CONSTRAINT refrma_mrma FOREIGN KEY(ref_rma_id) REFERENCES m_rma DEFERRABLE INITIALLY DEFERRED;
					   
ALTER TABLE m_rma ADD CONSTRAINT salesrep_mrma FOREIGN KEY(salesrep_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
				      
ALTER TABLE m_rmaline ADD CONSTRAINT ccharge_mrmaline FOREIGN KEY(c_charge_id) REFERENCES c_charge DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE m_rmaline ADD CONSTRAINT refrmaline_mrmaline FOREIGN KEY(ref_rmaline_id) REFERENCES m_rmaline DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE m_transaction ADD CONSTRAINT ppcostcollector_mtransaction FOREIGN KEY(pp_cost_collector_id) REFERENCES pp_cost_collector DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE m_warehouse ADD CONSTRAINT mwarehousesource_mwarehouse FOREIGN KEY(m_warehousesource_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE pa_colorschema ADD CONSTRAINT entityt_pacolorschema FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE pa_dashboardcontent ADD CONSTRAINT adwindow_padashboardcontent FOREIGN KEY(ad_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE pa_dashboardcontent ADD CONSTRAINT pagoal_padashboardcontent FOREIGN KEY(pa_goal_id) REFERENCES pa_goal DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE pa_goal ADD CONSTRAINT adrole_pagoal FOREIGN KEY(ad_role_id) REFERENCES ad_role DEFERRABLE INITIALLY DEFERRED;
				     
ALTER TABLE pa_measure ADD CONSTRAINT cprojecttype_pameasure FOREIGN KEY(c_projecttype_id) REFERENCES c_projecttype DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE pa_measure ADD CONSTRAINT rrequesttype_pameasure FOREIGN KEY(r_requesttype_id) REFERENCES r_requesttype DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE pa_measurecalc ADD CONSTRAINT adtable_pameasurecalc FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE pa_measurecalc ADD CONSTRAINT entityt_pameasurecalc FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE pa_report ADD CONSTRAINT jasperprocess_pareport FOREIGN KEY(jasperprocess_id) REFERENCES ad_process DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE pa_report ADD CONSTRAINT pareportcube_pareport FOREIGN KEY(pa_reportcube_id) REFERENCES pa_reportcube DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pa_reportcolumn ADD CONSTRAINT adorgtrx_pareportcolumn FOREIGN KEY(ad_orgtrx_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE pa_reportcube ADD CONSTRAINT ccalendar_pareportcube FOREIGN KEY(c_calendar_id) REFERENCES c_calendar DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE pa_reportsource ADD CONSTRAINT adorgtrx_pareportsource FOREIGN KEY(ad_orgtrx_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE pp_cost_collector ADD CONSTRAINT adorgtrx_ppcostcollector FOREIGN KEY(ad_orgtrx_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_cost_collector ADD CONSTRAINT aduser_ppcostcollector FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE pp_cost_collector ADD CONSTRAINT cactivity_ppcostcollector FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE pp_cost_collector ADD CONSTRAINT ccampaign_ppcostcollector FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE pp_cost_collector ADD CONSTRAINT cdoctype_ppcostcollector FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE pp_cost_collector ADD CONSTRAINT cdoctypetarget_ppcostcollector FOREIGN KEY(c_doctypetarget_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_cost_collector ADD CONSTRAINT cproject_ppcostcollector FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE pp_cost_collector ADD CONSTRAINT cuom_ppcostcollector FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE pp_cost_collector ADD CONSTRAINT mproduct_ppcostcollector FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE pp_cost_collector ADD CONSTRAINT mwarehouse_ppcostcollector FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE pp_cost_collector ADD CONSTRAINT pporder_ppcostcollector FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_cost_collector ADD CONSTRAINT pporderbomline_ppcostcollector FOREIGN KEY(pp_order_bomline_id) REFERENCES pp_order_bomline DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_cost_collector ADD CONSTRAINT ppordernode_ppcostcollector FOREIGN KEY(pp_order_node_id) REFERENCES pp_order_node DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE pp_cost_collector ADD CONSTRAINT pporderworkflow_ppcostcollecto FOREIGN KEY(pp_order_workflow_id) REFERENCES pp_order_workflow DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_cost_collector ADD CONSTRAINT reversal_ppcostcollector FOREIGN KEY(reversal_id) REFERENCES pp_cost_collector DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE pp_cost_collector ADD CONSTRAINT sresource_ppcostcollector FOREIGN KEY(s_resource_id) REFERENCES s_resource DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE pp_cost_collector ADD CONSTRAINT user1_ppcostcollector FOREIGN KEY(user1_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE pp_cost_collector ADD CONSTRAINT user2_ppcostcollector FOREIGN KEY(user2_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE pp_cost_collectorma ADD CONSTRAINT ppcostcollector_ppcostcollectorma FOREIGN KEY(pp_cost_collector_id) REFERENCES pp_cost_collector DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_mrp ADD CONSTRAINT cbpartner_ppmrp FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE pp_mrp ADD CONSTRAINT corder_ppmrp FOREIGN KEY(c_order_id) REFERENCES c_order DEFERRABLE INITIALLY DEFERRED;
				       
ALTER TABLE pp_mrp ADD CONSTRAINT corderline_ppmrp FOREIGN KEY(c_orderline_id) REFERENCES c_orderline DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE pp_mrp ADD CONSTRAINT ddorder_ppmrp FOREIGN KEY(dd_order_id) REFERENCES dd_order DEFERRABLE INITIALLY DEFERRED;
				    
ALTER TABLE pp_mrp ADD CONSTRAINT ddorderline_ppmrp FOREIGN KEY(dd_orderline_id) REFERENCES dd_orderline DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE pp_mrp ADD CONSTRAINT mforecast_ppmrp FOREIGN KEY(m_forecast_id) REFERENCES m_forecast DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE pp_mrp ADD CONSTRAINT mforecastline_ppmrp FOREIGN KEY(m_forecastline_id) REFERENCES m_forecastline DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE pp_mrp ADD CONSTRAINT mproduct_ppmrp FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
				 
ALTER TABLE pp_mrp ADD CONSTRAINT mrequisition_ppmrp FOREIGN KEY(m_requisition_id) REFERENCES m_requisition DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE pp_mrp ADD CONSTRAINT mrequisitionline_ppmrp FOREIGN KEY(m_requisitionline_id) REFERENCES m_requisitionline DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE pp_mrp ADD CONSTRAINT mwarehouse_ppmrp FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
			   
ALTER TABLE pp_mrp ADD CONSTRAINT planner_ppmrp FOREIGN KEY(planner_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
				      
ALTER TABLE pp_mrp ADD CONSTRAINT pporder_ppmrp FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
				    
ALTER TABLE pp_mrp ADD CONSTRAINT pporderbomline_ppmrp FOREIGN KEY(pp_order_bomline_id) REFERENCES pp_order_bomline DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE pp_mrp ADD CONSTRAINT sresource_ppmrp FOREIGN KEY(s_resource_id) REFERENCES s_resource DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE pp_order ADD CONSTRAINT adorgtrx_pporder FOREIGN KEY(ad_orgtrx_id) REFERENCES ad_org DEFERRABLE INITIALLY DEFERRED;
				
ALTER TABLE pp_order ADD CONSTRAINT adworkflow_pporder FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE pp_order ADD CONSTRAINT cactivity_pporder FOREIGN KEY(c_activity_id) REFERENCES c_activity DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE pp_order ADD CONSTRAINT ccampaign_pporder FOREIGN KEY(c_campaign_id) REFERENCES c_campaign DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE pp_order ADD CONSTRAINT cdoctype_pporder FOREIGN KEY(c_doctype_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE pp_order ADD CONSTRAINT cdoctypetarget_pporder FOREIGN KEY(c_doctypetarget_id) REFERENCES c_doctype DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE pp_order ADD CONSTRAINT corderline_pporder FOREIGN KEY(c_orderline_id) REFERENCES c_orderline DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE pp_order ADD CONSTRAINT cproject_pporder FOREIGN KEY(c_project_id) REFERENCES c_project DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE pp_order ADD CONSTRAINT cuom_pporder FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
					 
ALTER TABLE pp_order ADD CONSTRAINT mproduct_pporder FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
			     
ALTER TABLE pp_order ADD CONSTRAINT mwarehouse_pporder FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE pp_order ADD CONSTRAINT planner_pporder FOREIGN KEY(planner_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
				  
ALTER TABLE pp_order ADD CONSTRAINT ppproductbom_pporder FOREIGN KEY(pp_product_bom_id) REFERENCES pp_product_bom DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_order ADD CONSTRAINT sresource_pporder FOREIGN KEY(s_resource_id) REFERENCES s_resource DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE pp_order ADD CONSTRAINT user1_pporder FOREIGN KEY(user1_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE pp_order ADD CONSTRAINT user2_pporder FOREIGN KEY(user2_id) REFERENCES c_elementvalue DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE pp_order_bom ADD CONSTRAINT cuom_pporderbom FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
				  
ALTER TABLE pp_order_bom ADD CONSTRAINT mchangenotice_pporderbom FOREIGN KEY(m_changenotice_id) REFERENCES m_changenotice DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE pp_order_bom ADD CONSTRAINT mproduct_pporderbom FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE pp_order_bom ADD CONSTRAINT pporder_pporderbom FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE pp_order_bom_trl ADD CONSTRAINT adlangu_pporderbomtrl FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_order_bom_trl ADD CONSTRAINT pporderbom_pporderbomtrl FOREIGN KEY(pp_order_bom_id) REFERENCES pp_order_bom DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE pp_order_bomline ADD CONSTRAINT aduser_pporderbomline FOREIGN KEY(ad_user_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE pp_order_bomline ADD CONSTRAINT cuom_pporderbomline FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE pp_order_bomline ADD CONSTRAINT mchangenotice_pporderbomline FOREIGN KEY(m_changenotice_id) REFERENCES m_changenotice DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_bomline ADD CONSTRAINT mproduct_pporderbomline FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE pp_order_bomline ADD CONSTRAINT mwarehouse_pporderbomline FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE pp_order_bomline ADD CONSTRAINT pporder_pporderbomline FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE pp_order_bomline ADD CONSTRAINT pporderbom_pporderbomline FOREIGN KEY(pp_order_bom_id) REFERENCES pp_order_bom DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE pp_order_bomline_trl ADD CONSTRAINT adlangu_pporderbomlinetrl FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE pp_order_bomline_trl ADD CONSTRAINT pporderbomline_pporderbomlinet FOREIGN KEY(pp_order_bomline_id) REFERENCES pp_order_bomline DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_cost ADD CONSTRAINT adworkflow_ppordercost FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE pp_order_cost ADD CONSTRAINT cacctschema_ppordercost FOREIGN KEY(c_acctschema_id) REFERENCES c_acctschema DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE pp_order_cost ADD CONSTRAINT mcostelement_ppordercost FOREIGN KEY(m_costelement_id) REFERENCES m_costelement DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE pp_order_cost ADD CONSTRAINT mcosttype_ppordercost FOREIGN KEY(m_costtype_id) REFERENCES m_costtype DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE pp_order_cost ADD CONSTRAINT mproduct_ppordercost FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE pp_order_cost ADD CONSTRAINT pporder_ppordercost FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE pp_order_node ADD CONSTRAINT adcolumn_ppordernode FOREIGN KEY(ad_column_id) REFERENCES ad_column DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE pp_order_node ADD CONSTRAINT adform_ppordernode FOREIGN KEY(ad_form_id) REFERENCES ad_form DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE pp_order_node ADD CONSTRAINT adimage_ppordernode FOREIGN KEY(ad_image_id) REFERENCES ad_image DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE pp_order_node ADD CONSTRAINT adprocess_ppordernode FOREIGN KEY(ad_process_id) REFERENCES ad_process DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE pp_order_node ADD CONSTRAINT adtask_ppordernode FOREIGN KEY(ad_task_id) REFERENCES ad_task DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE pp_order_node ADD CONSTRAINT adwfblock_ppordernode FOREIGN KEY(ad_wf_block_id) REFERENCES ad_wf_block DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_order_node ADD CONSTRAINT adwfnode_ppordernode FOREIGN KEY(ad_wf_node_id) REFERENCES ad_wf_node DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE pp_order_node ADD CONSTRAINT adwfresponsible_ppordernode FOREIGN KEY(ad_wf_responsible_id) REFERENCES ad_wf_responsible DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_node ADD CONSTRAINT adwindow_ppordernode FOREIGN KEY(ad_window_id) REFERENCES ad_window DEFERRABLE INITIALLY DEFERRED;
		    
ALTER TABLE pp_order_node ADD CONSTRAINT adworkflow_ppordernode FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
	      
ALTER TABLE pp_order_node ADD CONSTRAINT cbpartner_ppordernode FOREIGN KEY(c_bpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE pp_order_node ADD CONSTRAINT entityt_ppordernode FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE pp_order_node ADD CONSTRAINT pporder_ppordernode FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
		       
ALTER TABLE pp_order_node ADD CONSTRAINT pporderworkflow_ppordernode FOREIGN KEY(pp_order_workflow_id) REFERENCES pp_order_workflow DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_node ADD CONSTRAINT sresource_ppordernode FOREIGN KEY(s_resource_id) REFERENCES s_resource DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE pp_order_node ADD CONSTRAINT workflow_ppordernode FOREIGN KEY(workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE pp_order_node_asset ADD CONSTRAINT aasset_ppordernodeasset FOREIGN KEY(a_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_order_node_asset ADD CONSTRAINT pporder_ppordernodeasset FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
	    
ALTER TABLE pp_order_node_asset ADD CONSTRAINT ppordernode_ppordernodeasset FOREIGN KEY(pp_order_node_id) REFERENCES pp_order_node DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_node_asset ADD CONSTRAINT pporderworkflow_ppordernodeass FOREIGN KEY(pp_order_workflow_id) REFERENCES pp_order_workflow DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_node_product ADD CONSTRAINT mproduct_ppordernodeproduct FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE pp_order_node_product ADD CONSTRAINT pporder_ppordernodeproduct FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE pp_order_node_product ADD CONSTRAINT ppordernode_ppordernodeproduct FOREIGN KEY(pp_order_node_id) REFERENCES pp_order_node DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_node_product ADD CONSTRAINT pporderworkflow_ppordernodepro FOREIGN KEY(pp_order_workflow_id) REFERENCES pp_order_workflow DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_node_trl ADD CONSTRAINT adlangu_ppordernodetrl FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE pp_order_nodenext ADD CONSTRAINT adwfnext_ppordernodenext FOREIGN KEY(ad_wf_next_id) REFERENCES ad_wf_node DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE pp_order_nodenext ADD CONSTRAINT adwfnode_ppordernodenext FOREIGN KEY(ad_wf_node_id) REFERENCES ad_wf_node DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE pp_order_nodenext ADD CONSTRAINT entityt_ppordernodenext FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE pp_order_nodenext ADD CONSTRAINT pporder_ppordernodenext FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_order_nodenext ADD CONSTRAINT ppordernext_ppordernodenext FOREIGN KEY(pp_order_next_id) REFERENCES pp_order_node DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE pp_order_nodenext ADD CONSTRAINT ppordernode_ppordernodenext FOREIGN KEY(pp_order_node_id) REFERENCES pp_order_node DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE pp_order_workflow ADD CONSTRAINT adtable_pporderworkflow FOREIGN KEY(ad_table_id) REFERENCES ad_table DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_order_workflow ADD CONSTRAINT adwfnode_pporderworkflow FOREIGN KEY(ad_wf_node_id) REFERENCES ad_wf_node DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE pp_order_workflow ADD CONSTRAINT adwfresponsible_pporderworkflo FOREIGN KEY(ad_wf_responsible_id) REFERENCES ad_wf_responsible DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_workflow ADD CONSTRAINT adworkflow_pporderworkflow FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
      
ALTER TABLE pp_order_workflow ADD CONSTRAINT adworkflowprocessor_pporderwor FOREIGN KEY(ad_workflowprocessor_id) REFERENCES ad_workflowprocessor DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_order_workflow ADD CONSTRAINT entityt_pporderworkflow FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE pp_order_workflow ADD CONSTRAINT pporder_pporderworkflow FOREIGN KEY(pp_order_id) REFERENCES pp_order DEFERRABLE INITIALLY DEFERRED;
	       
ALTER TABLE pp_order_workflow ADD CONSTRAINT ppordernode_pporderworkflow FOREIGN KEY(pp_order_node_id) REFERENCES pp_order_node DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE pp_order_workflow ADD CONSTRAINT sresource_pporderworkflow FOREIGN KEY(s_resource_id) REFERENCES s_resource DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE pp_order_workflow_trl ADD CONSTRAINT adlangu_pporderworkflowtrl FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE pp_order_workflow_trl ADD CONSTRAINT pporderworkflow_pporderworkflo FOREIGN KEY(pp_order_workflow_id) REFERENCES pp_order_workflow DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_product_bom ADD CONSTRAINT cuom_ppproductbom FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
			      
ALTER TABLE pp_product_bom ADD CONSTRAINT mchangenotice_ppproductbom FOREIGN KEY(m_changenotice_id) REFERENCES m_changenotice DEFERRABLE INITIALLY DEFERRED;
   
ALTER TABLE pp_product_bom ADD CONSTRAINT mproduct_ppproductbom FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
		  
ALTER TABLE pp_product_bom_trl ADD CONSTRAINT adlangu_ppproductbomtrl FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE pp_product_bom_trl ADD CONSTRAINT ppproductbom_ppproductbomtrl FOREIGN KEY(pp_product_bom_id) REFERENCES pp_product_bom DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_product_bomline ADD CONSTRAINT cuom_ppproductbomline FOREIGN KEY(c_uom_id) REFERENCES c_uom DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE pp_product_bomline ADD CONSTRAINT mchangenotice_ppproductbomline FOREIGN KEY(m_changenotice_id) REFERENCES m_changenotice DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_product_bomline ADD CONSTRAINT mproduct_ppproductbomline FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE pp_product_bomline ADD CONSTRAINT ppproductbom_ppproductbomline FOREIGN KEY(pp_product_bom_id) REFERENCES pp_product_bom DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_product_bomline_trl ADD CONSTRAINT adlangu_ppproductbomlinetrl FOREIGN KEY(ad_language) REFERENCES ad_language DEFERRABLE INITIALLY DEFERRED;
   
ALTER TABLE pp_product_bomline_trl ADD CONSTRAINT ppproductbomline_ppproductboml FOREIGN KEY(pp_product_bomline_id) REFERENCES pp_product_bomline DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_product_planning ADD CONSTRAINT adworkflow_ppproductplanning FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
  
ALTER TABLE pp_product_planning ADD CONSTRAINT ddnetworkdistribution_ppproduc FOREIGN KEY(dd_networkdistribution_id) REFERENCES dd_networkdistribution DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_product_planning ADD CONSTRAINT mproduct_ppproductplanning FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE pp_product_planning ADD CONSTRAINT mwarehouse_ppproductplanning FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
  
ALTER TABLE pp_product_planning ADD CONSTRAINT planner_ppproductplanning FOREIGN KEY(planner_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE pp_product_planning ADD CONSTRAINT ppproductbom_ppproductplanning FOREIGN KEY(pp_product_bom_id) REFERENCES pp_product_bom DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE pp_product_planning ADD CONSTRAINT sresource_ppproductplanning FOREIGN KEY(s_resource_id) REFERENCES s_resource DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE pp_wf_node_asset ADD CONSTRAINT aasset_ppwfnodeasset FOREIGN KEY(a_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
		     
ALTER TABLE pp_wf_node_asset ADD CONSTRAINT adwfnode_ppwfnodeasset FOREIGN KEY(ad_wf_node_id) REFERENCES ad_wf_node DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE pp_wf_node_product ADD CONSTRAINT adwfnode_ppwfnodeproduct FOREIGN KEY(ad_wf_node_id) REFERENCES ad_wf_node DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE pp_wf_node_product ADD CONSTRAINT entityt_ppwfnodeproduct FOREIGN KEY(entitytype) REFERENCES ad_entitytype DEFERRABLE INITIALLY DEFERRED;
	  
ALTER TABLE pp_wf_node_product ADD CONSTRAINT mproduct_ppwfnodeproduct FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE qm_specification ADD CONSTRAINT adworkflow_qmspecification FOREIGN KEY(ad_workflow_id) REFERENCES ad_workflow DEFERRABLE INITIALLY DEFERRED;
       
ALTER TABLE qm_specification ADD CONSTRAINT mattributeset_qmspecification FOREIGN KEY(m_attributeset_id) REFERENCES m_attributeset DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE qm_specification ADD CONSTRAINT mproduct_qmspecification FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE qm_specification ADD CONSTRAINT ppproductbom_qmspecification FOREIGN KEY(pp_product_bom_id) REFERENCES pp_product_bom DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE qm_specificationline ADD CONSTRAINT mattribute_qmspecificationline FOREIGN KEY(m_attribute_id) REFERENCES m_attribute DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE qm_specificationline ADD CONSTRAINT qmspecification_qmspecificatio FOREIGN KEY(qm_specification_id) REFERENCES qm_specification DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE r_category ADD CONSTRAINT mproduct_rcategory FOREIGN KEY(m_product_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE r_group ADD CONSTRAINT mbom_rgroup FOREIGN KEY(m_bom_id) REFERENCES m_bom DEFERRABLE INITIALLY DEFERRED;
					   
ALTER TABLE r_group ADD CONSTRAINT mchangenotice_rgroup FOREIGN KEY(m_changenotice_id) REFERENCES m_changenotice DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE r_group ADD CONSTRAINT ppproductbom_rgroup FOREIGN KEY(pp_product_bom_id) REFERENCES pp_product_bom DEFERRABLE INITIALLY DEFERRED;
		 
ALTER TABLE r_issueknown ADD CONSTRAINT rissuerecommendation_rissuekno FOREIGN KEY(r_issuerecommendation_id) REFERENCES r_issuerecommendation DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE r_issuesystem ADD CONSTRAINT aasset_rissuesystem FOREIGN KEY(a_asset_id) REFERENCES a_asset DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE r_request ADD CONSTRAINT mchangerequest_rrequest FOREIGN KEY(m_changerequest_id) REFERENCES m_changerequest DEFERRABLE INITIALLY DEFERRED;
	 
ALTER TABLE r_requestaction ADD CONSTRAINT mproductspent_rrequestaction FOREIGN KEY(m_productspent_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE r_requestprocessor ADD CONSTRAINT rrequesttype_rrequestprocessor FOREIGN KEY(r_requesttype_id) REFERENCES r_requesttype DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE r_requesttype ADD CONSTRAINT rstatuscategory_rrequesttype FOREIGN KEY(r_statuscategory_id) REFERENCES r_statuscategory DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE r_requestupdate ADD CONSTRAINT mproductspent_rrequestupdate FOREIGN KEY(m_productspent_id) REFERENCES m_product DEFERRABLE INITIALLY DEFERRED;
     
ALTER TABLE r_status ADD CONSTRAINT nextstatus_rstatus FOREIGN KEY(next_status_id) REFERENCES r_status DEFERRABLE INITIALLY DEFERRED;
			  
ALTER TABLE r_status ADD CONSTRAINT rstatuscategory_rstatus FOREIGN KEY(r_statuscategory_id) REFERENCES r_statuscategory DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE r_status ADD CONSTRAINT updatestatus_rstatus FOREIGN KEY(update_status_id) REFERENCES r_status DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE u_posterminal ADD CONSTRAINT cardbankaccount_uposterminal FOREIGN KEY(card_bankaccount_id) REFERENCES c_bankaccount DEFERRABLE INITIALLY DEFERRED;
 
ALTER TABLE u_posterminal ADD CONSTRAINT cardtransferbankaccount_uposte FOREIGN KEY(cardtransferbankaccount_id) REFERENCES c_bankaccount DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE u_posterminal ADD CONSTRAINT cardtransfercashbook_upostermi FOREIGN KEY(cardtransfercashbook_id) REFERENCES c_cashbook DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE u_posterminal ADD CONSTRAINT cashtransferbankaccount_uposte FOREIGN KEY(cashtransferbankaccount_id) REFERENCES c_bankaccount DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE u_posterminal ADD CONSTRAINT cashtransfercashbook_upostermi FOREIGN KEY(cashtransfercashbook_id) REFERENCES c_cashbook DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE u_posterminal ADD CONSTRAINT ccashbook_uposterminal FOREIGN KEY(c_cashbook_id) REFERENCES c_cashbook DEFERRABLE INITIALLY DEFERRED;
		
ALTER TABLE u_posterminal ADD CONSTRAINT ccashbpartner_uposterminal FOREIGN KEY(c_cashbpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;
	
ALTER TABLE u_posterminal ADD CONSTRAINT checkbankaccount_uposterminal FOREIGN KEY(check_bankaccount_id) REFERENCES c_bankaccount DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE u_posterminal ADD CONSTRAINT checktransferbankaccount_upost FOREIGN KEY(checktransferbankaccount_id) REFERENCES c_bankaccount DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE u_posterminal ADD CONSTRAINT checktransfercashbook_uposterm FOREIGN KEY(checktransfercashbook_id) REFERENCES c_cashbook DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE u_posterminal ADD CONSTRAINT ctemplatebpartner_uposterminal FOREIGN KEY(c_templatebpartner_id) REFERENCES c_bpartner DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE u_posterminal ADD CONSTRAINT mwarehouse_uposterminal FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
	     
ALTER TABLE u_posterminal ADD CONSTRAINT popricelist_uposterminal FOREIGN KEY(po_pricelist_id) REFERENCES m_pricelist DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE u_posterminal ADD CONSTRAINT salesrep_uposterminal FOREIGN KEY(salesrep_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
		      
ALTER TABLE u_posterminal ADD CONSTRAINT sopricelist_uposterminal FOREIGN KEY(so_pricelist_id) REFERENCES m_pricelist DEFERRABLE INITIALLY DEFERRED;
	   
ALTER TABLE u_rolemenu ADD CONSTRAINT adrole_urolemenu FOREIGN KEY(ad_role_id) REFERENCES ad_role DEFERRABLE INITIALLY DEFERRED;
			       
ALTER TABLE u_rolemenu ADD CONSTRAINT uwebmenu_urolemenu FOREIGN KEY(u_webmenu_id) REFERENCES u_webmenu DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE u_webmenu ADD CONSTRAINT parentmenu_uwebmenu FOREIGN KEY(parentmenu_id) REFERENCES u_webmenu DEFERRABLE INITIALLY DEFERRED;
			
ALTER TABLE w_store ADD CONSTRAINT cpaymentterm_wstore FOREIGN KEY(c_paymentterm_id) REFERENCES c_paymentterm DEFERRABLE INITIALLY DEFERRED;
		   
ALTER TABLE w_store ADD CONSTRAINT mpricelist_wstore FOREIGN KEY(m_pricelist_id) REFERENCES m_pricelist DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE w_store ADD CONSTRAINT mwarehouse_wstore FOREIGN KEY(m_warehouse_id) REFERENCES m_warehouse DEFERRABLE INITIALLY DEFERRED;
			 
ALTER TABLE w_store ADD CONSTRAINT salesrep_wstore FOREIGN KEY(salesrep_id) REFERENCES ad_user DEFERRABLE INITIALLY DEFERRED;
				  

