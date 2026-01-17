Run below query as per need

1. psql template1 -U postgres -c 'drop database db_credilio'
2. psql template1 -U postgres -c 'RENAME DATABASE db_credilio TO db_credilio_old'
3. psql template1 -U postgres -c 'create database db_credilio'
4. pg_dump -U postgres db_credilio > db_credilio_full_2022_04_02_12_25_27.dump
5. pg_restore -d db_credilio -U postgres -C ./db_credilio_full_2023_04_05_14_15_18.dump

**Grant Access**
 
GRANT CONNECT ON DATABASE db_credilio TO db_read;
GRANT USAGE ON SCHEMA public to db_read;
GRANT SELECT ON ALL TABLES IN SCHEMA public to db_read;
REVOKE CREATE ON SCHEMA public FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR USER postgres IN SCHEMA public GRANT SELECT ON TABLES TO db_read;

**Backup**

- pg_dump -h localhost -U postgres -d db_credilio -t tbl_partner_auths > ../Partner_Auth_Backup.sql

- psql -h localhost -U postgres -d db_credilio < ../Partner_Auth_Backup.sql



**Queries**

- JSON to ROW

With DATA AS(SELECT status, sub_status, current_value, current from tbl_status_sub_statuses where lender_id = 'IDFC_FIRST' and product_id = 'CREDIT_CARD')

SELECT 
    d.current_value,
    d.status,
    value::text as sub_status
FROM data d,
LATERAL jsonb_array_elements(d.sub_status->'status') AS sub_status_elements(value);

- Export in CSV

\copy (query) to 'path.csv' DELIMITER ',' CSV header;