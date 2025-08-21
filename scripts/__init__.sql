/*

Create Database and Schemas.

script purpose:
	To create a new Database called DataWarehousePJ after checking if it already existing.
	if existed before it will be dropped and created again.
	The script also creates three new Schemas(bronze, silver, gold) for the project.

Warnings:
	Running this script will the entire datawarehouse.

*/


USE MASTER;
GO


IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehousePJ')

BEGIN
	ALTER DATABASE DataWarehousePJ SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehousePJ;
END;
GO


CREATE DATABASE DataWarehousePJ
GO

USE DataWarehousePJ;
GO


CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
