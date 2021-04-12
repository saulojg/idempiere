-- Saulo Gil disabled this index since there are currently 32 duplicates
-- see select upper(columnname), count(upper(columnname)) from adempiere.ad_element group by 1 having count(upper(columnname)) > 1

-- DROP INDEX ad_element_columnname;

-- CREATE UNIQUE INDEX ad_element_uppercolumnname
--    ON ad_element(UPPER(columnname));

