-- Create a database (done in Azure Portal or via T-SQL in master)
CREATE DATABASE raw_db;

-- In the raw_db database
CREATE SCHEMA raw AUTHORIZATION dbo;

-- Create a table inside that schema
CREATE TABLE raw.contract_hire (
    [plant_cde] INT,
    [client_name] NVARCHAR(100),
    [division] NVARCHAR(100),
    [address] NVARCHAR(100),
    [state] NVARCHAR(100),
    [country_code] NVARCHAR(100),
    [zip_code] INT,
    [hiring_manager] NVARCHAR(100),
    [pay_code] NVARCHAR(100),
    [invoice_number] NVARCHAR(100),
    [invoice_date] NVARCHAR(100),           -- we’ll parse/clean this in Data Flow
    [job_title] NVARCHAR(100),
    [employee_id] INT,
    [first_name] NVARCHAR(100),
    [last_name] NVARCHAR(100),
    [hours] DECIMAL(18,2),
    [charge_dollars] DECIMAL(18,2),
    [vendor] NVARCHAR(100),
    [insert_ts] DATETIME2,
    [file_name] NVARCHAR(512)
);

-- After pipeline run, to verify data load
SELECT * FROM raw.contract_hire;