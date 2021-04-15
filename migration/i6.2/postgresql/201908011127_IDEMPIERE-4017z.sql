-- Aug 1, 2019, 12:33:43 PM CEST
CREATE UNIQUE INDEX ad_tableindex_name ON AD_TableIndex (UPPER(Name))
;

SELECT register_migration_script('201908011127_IDEMPIERE-4017.sql') FROM dual
;

