CREATE EXTENSION dblink;

-- Check the dbs connection
SELECT dblink_connect('host=localhost user=postgres password=emeka dbname=test1');
 
CREATE FOREIGN DATA WRAPPER postgres VALIDATOR postgresql_fdw_validator;

-- Creating virtual server for connection to source
CREATE SERVER lamis FOREIGN DATA WRAPPER postgres OPTIONS (hostaddr '127.0.0.1', dbname 'test1');
 
CREATE USER MAPPING FOR postgres SERVER lamis OPTIONS (user 'postgres', password 'emeka');
 
SELECT dblink_connect('lamis');



-- step 1 for drop
Drop USER MAPPING FOR postgres SERVER lamis;
--step 2
Drop server lamis;

