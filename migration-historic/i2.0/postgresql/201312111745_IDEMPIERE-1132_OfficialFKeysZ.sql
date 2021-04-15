ALTER TABLE ws_webservicefieldinput DROP CONSTRAINT adcolumn_wswebservicefieldinpu
;

ALTER TABLE ws_webservicefieldinput ADD CONSTRAINT adcolumn_wswebservicefieldinpu FOREIGN KEY(ad_column_id) REFERENCES ad_column(ad_column_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicefieldoutput DROP CONSTRAINT adcolumn_wswebservicefieldoutp
;

ALTER TABLE ws_webservicefieldoutput ADD CONSTRAINT adcolumn_wswebservicefieldoutp FOREIGN KEY(ad_column_id) REFERENCES ad_column(ad_column_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_taxprovidercfg DROP CONSTRAINT adorg_adtaxprovider
;

ALTER TABLE c_taxprovidercfg ADD CONSTRAINT adorg_adtaxprovider FOREIGN KEY(ad_org_id) REFERENCES ad_org(ad_org_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addresstransaction DROP CONSTRAINT adorg_caddresstransaction
;

ALTER TABLE c_addresstransaction ADD CONSTRAINT adorg_caddresstransaction FOREIGN KEY(ad_org_id) REFERENCES ad_org(ad_org_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addressvalidation DROP CONSTRAINT adorg_caddressvalidation
;

ALTER TABLE c_addressvalidation ADD CONSTRAINT adorg_caddressvalidation FOREIGN KEY(ad_org_id) REFERENCES ad_org(ad_org_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addressvalidationcfg DROP CONSTRAINT adorg_caddressvalidationcfg
;

ALTER TABLE c_addressvalidationcfg ADD CONSTRAINT adorg_caddressvalidationcfg FOREIGN KEY(ad_org_id) REFERENCES ad_org(ad_org_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_ordersource DROP CONSTRAINT adorg_cordersource
;

ALTER TABLE c_ordersource ADD CONSTRAINT adorg_cordersource FOREIGN KEY(ad_org_id) REFERENCES ad_org(ad_org_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_taxprovider DROP CONSTRAINT adorg_ctaxprovider
;

ALTER TABLE c_taxprovider ADD CONSTRAINT adorg_ctaxprovider FOREIGN KEY(ad_org_id) REFERENCES ad_org(ad_org_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE pa_dashboardcontent_access DROP CONSTRAINT adorg_padashboardcontentaccess
;

ALTER TABLE pa_dashboardcontent_access ADD CONSTRAINT adorg_padashboardcontentaccess FOREIGN KEY(ad_org_id) REFERENCES ad_org(ad_org_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE pa_dashboardcontent_access DROP CONSTRAINT adrole_padashboardcontentacces
;

ALTER TABLE pa_dashboardcontent_access ADD CONSTRAINT adrole_padashboardcontentacces FOREIGN KEY(ad_role_id) REFERENCES ad_role(ad_role_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicetypeaccess DROP CONSTRAINT adrole_wswebservicetypeaccess
;

ALTER TABLE ws_webservicetypeaccess ADD CONSTRAINT adrole_wswebservicetypeaccess FOREIGN KEY(ad_role_id) REFERENCES ad_role(ad_role_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicetype DROP CONSTRAINT adtable_wswebservicetype
;

ALTER TABLE ws_webservicetype ADD CONSTRAINT adtable_wswebservicetype FOREIGN KEY(ad_table_id) REFERENCES ad_table(ad_table_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE pa_dashboardcontent_access DROP CONSTRAINT aduser_padashboardcontentacces
;

ALTER TABLE pa_dashboardcontent_access ADD CONSTRAINT aduser_padashboardcontentacces FOREIGN KEY(ad_user_id) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_ordersource DROP CONSTRAINT aduser1_cordersource
;

ALTER TABLE c_ordersource ADD CONSTRAINT aduser1_cordersource FOREIGN KEY(createdby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_ordersource DROP CONSTRAINT aduser2_cordersource
;

ALTER TABLE c_ordersource ADD CONSTRAINT aduser2_cordersource FOREIGN KEY(updatedby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_order DROP CONSTRAINT c_order__c_orders_c_ordersou
;

ALTER TABLE c_order ADD CONSTRAINT c_order__c_orders_c_ordersou FOREIGN KEY(c_ordersource_id) REFERENCES c_ordersource(c_ordersource_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addresstransaction DROP CONSTRAINT caddressvalidation_caddresstra
;

ALTER TABLE c_addresstransaction ADD CONSTRAINT caddressvalidation_caddresstra FOREIGN KEY(c_addressvalidation_id) REFERENCES c_addressvalidation(c_addressvalidation_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_location DROP CONSTRAINT caddressvalidation_clocation
;

ALTER TABLE c_location ADD CONSTRAINT caddressvalidation_clocation FOREIGN KEY(c_addressvalidation_id) REFERENCES c_addressvalidation(c_addressvalidation_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addressvalidation DROP CONSTRAINT caddressvalidationcfg_caddress
;

ALTER TABLE c_addressvalidation ADD CONSTRAINT caddressvalidationcfg_caddress FOREIGN KEY(c_addressvalidationcfg_id) REFERENCES c_addressvalidationcfg(c_addressvalidationcfg_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addresstransaction DROP CONSTRAINT clocation_caddresstransaction
;

ALTER TABLE c_addresstransaction ADD CONSTRAINT clocation_caddresstransaction FOREIGN KEY(c_location_id) REFERENCES c_location(c_location_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_taxprovidercfg DROP CONSTRAINT createdby_adtaxprovider
;

ALTER TABLE c_taxprovidercfg ADD CONSTRAINT createdby_adtaxprovider FOREIGN KEY(createdby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addresstransaction DROP CONSTRAINT createdby_caddresstransaction
;

ALTER TABLE c_addresstransaction ADD CONSTRAINT createdby_caddresstransaction FOREIGN KEY(createdby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addressvalidation DROP CONSTRAINT createdby_caddressvalidation
;

ALTER TABLE c_addressvalidation ADD CONSTRAINT createdby_caddressvalidation FOREIGN KEY(createdby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addressvalidationcfg DROP CONSTRAINT createdby_caddressvalidationcf
;

ALTER TABLE c_addressvalidationcfg ADD CONSTRAINT createdby_caddressvalidationcf FOREIGN KEY(createdby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_taxprovider DROP CONSTRAINT createdby_ctaxprovider
;

ALTER TABLE c_taxprovider ADD CONSTRAINT createdby_ctaxprovider FOREIGN KEY(createdby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE pa_dashboardcontent_access DROP CONSTRAINT createdby_padashboardcontentac
;

ALTER TABLE pa_dashboardcontent_access ADD CONSTRAINT createdby_padashboardcontentac FOREIGN KEY(createdby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_invoicetax DROP CONSTRAINT ctaxprovider_cinvoicetax
;

ALTER TABLE c_invoicetax ADD CONSTRAINT ctaxprovider_cinvoicetax FOREIGN KEY(c_taxprovider_id) REFERENCES c_taxprovider(c_taxprovider_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_ordertax DROP CONSTRAINT ctaxprovider_cordertax
;

ALTER TABLE c_ordertax ADD CONSTRAINT ctaxprovider_cordertax FOREIGN KEY(c_taxprovider_id) REFERENCES c_taxprovider(c_taxprovider_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_tax DROP CONSTRAINT ctaxprovider_ctax
;

ALTER TABLE c_tax ADD CONSTRAINT ctaxprovider_ctax FOREIGN KEY(c_taxprovider_id) REFERENCES c_taxprovider(c_taxprovider_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE m_rmatax DROP CONSTRAINT ctaxprovider_mrmatax
;

ALTER TABLE m_rmatax ADD CONSTRAINT ctaxprovider_mrmatax FOREIGN KEY(c_taxprovider_id) REFERENCES c_taxprovider(c_taxprovider_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_taxprovider DROP CONSTRAINT ctaxprovidercfg_ctaxprovider
;

ALTER TABLE c_taxprovider ADD CONSTRAINT ctaxprovidercfg_ctaxprovider FOREIGN KEY(c_taxprovidercfg_id) REFERENCES c_taxprovidercfg(c_taxprovidercfg_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE pa_dashboardcontent_access DROP CONSTRAINT padashboardcontacc_padashboard
;

ALTER TABLE pa_dashboardcontent_access ADD CONSTRAINT padashboardcontacc_padashboard FOREIGN KEY(pa_dashboardcontent_id) REFERENCES pa_dashboardcontent(pa_dashboardcontent_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_taxprovidercfg DROP CONSTRAINT updatedby_adtaxprovider
;

ALTER TABLE c_taxprovidercfg ADD CONSTRAINT updatedby_adtaxprovider FOREIGN KEY(updatedby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addresstransaction DROP CONSTRAINT updatedby_caddresstransaction
;

ALTER TABLE c_addresstransaction ADD CONSTRAINT updatedby_caddresstransaction FOREIGN KEY(updatedby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addressvalidation DROP CONSTRAINT updatedby_caddressvalidation
;

ALTER TABLE c_addressvalidation ADD CONSTRAINT updatedby_caddressvalidation FOREIGN KEY(updatedby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_addressvalidationcfg DROP CONSTRAINT updatedby_caddressvalidationcf
;

ALTER TABLE c_addressvalidationcfg ADD CONSTRAINT updatedby_caddressvalidationcf FOREIGN KEY(updatedby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE c_taxprovider DROP CONSTRAINT updatedby_ctaxprovider
;

ALTER TABLE c_taxprovider ADD CONSTRAINT updatedby_ctaxprovider FOREIGN KEY(updatedby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE pa_dashboardcontent_access DROP CONSTRAINT updatedby_padashboardcontentac
;

ALTER TABLE pa_dashboardcontent_access ADD CONSTRAINT updatedby_padashboardcontentac FOREIGN KEY(updatedby) REFERENCES ad_user(ad_user_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicemethod DROP CONSTRAINT wswebservice_wswebservicemetho
;

ALTER TABLE ws_webservicemethod ADD CONSTRAINT wswebservice_wswebservicemetho FOREIGN KEY(ws_webservice_id) REFERENCES ws_webservice(ws_webservice_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicetype DROP CONSTRAINT wswebservice_wswebservicetype
;

ALTER TABLE ws_webservicetype ADD CONSTRAINT wswebservice_wswebservicetype FOREIGN KEY(ws_webservice_id) REFERENCES ws_webservice(ws_webservice_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicetype DROP CONSTRAINT wswebservicemethod_wswebservic
;

ALTER TABLE ws_webservicetype ADD CONSTRAINT wswebservicemethod_wswebservic FOREIGN KEY(ws_webservicemethod_id) REFERENCES ws_webservicemethod(ws_webservicemethod_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservice_para DROP CONSTRAINT wswebservicetype_wswebservicep
;

ALTER TABLE ws_webservice_para ADD CONSTRAINT wswebservicetype_wswebservicep FOREIGN KEY(ws_webservicetype_id) REFERENCES ws_webservicetype(ws_webservicetype_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicetypeaccess DROP CONSTRAINT wswebservicetype_wswebservicet
;

ALTER TABLE ws_webservicetypeaccess ADD CONSTRAINT wswebservicetype_wswebservicet FOREIGN KEY(ws_webservicetype_id) REFERENCES ws_webservicetype(ws_webservicetype_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicefieldinput DROP CONSTRAINT wswebservicetype_wswebservicfi
;

ALTER TABLE ws_webservicefieldinput ADD CONSTRAINT wswebservicetype_wswebservicfi FOREIGN KEY(ws_webservicetype_id) REFERENCES ws_webservicetype(ws_webservicetype_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

ALTER TABLE ws_webservicefieldoutput DROP CONSTRAINT wswebservicetype_wswebservicfo
;

ALTER TABLE ws_webservicefieldoutput ADD CONSTRAINT wswebservicetype_wswebservicfo FOREIGN KEY(ws_webservicetype_id) REFERENCES ws_webservicetype(ws_webservicetype_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

-- fix wrong named fk (just pg)
ALTER TABLE pp_cost_collectorma DROP CONSTRAINT ppcostcollector_ppcostcollectorma
;

ALTER TABLE pp_cost_collectorma ADD CONSTRAINT ppcostcollector_ppccma FOREIGN KEY(pp_cost_collector_id) REFERENCES pp_cost_collector(pp_cost_collector_id) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED
;

SELECT register_migration_script('201312111745_IDEMPIERE-1132_OfficialFKeys.sql') FROM dual
;

