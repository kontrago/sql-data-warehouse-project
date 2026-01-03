USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--Create the DataWarehouse Database
CREATE DATABASE DataWarehouse;
GO

--Switch the database context from master to DataWarehouse
USE DataWarehouse;
GO

--Create schemas for bronze, silver and gold layers
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
