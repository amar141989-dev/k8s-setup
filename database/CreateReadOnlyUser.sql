CREATE USER ro_qa  WITH ENCRYPTED PASSWORD 'ro@123';
GRANT USAGE ON SCHEMA public to ro_qa;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO ro_qa;

-- repeat code below for each database:
GRANT CONNECT ON DATABASE raptor_qa to ro_qa;
\c raptor_qa
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO ro_qa;
GRANT USAGE ON SCHEMA public to ro_qa; 
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO ro_qa;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO ro_qa;