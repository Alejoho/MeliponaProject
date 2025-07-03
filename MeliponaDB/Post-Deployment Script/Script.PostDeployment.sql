/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF EXISTS (
    SELECT 1 
    FROM sys.database_scoped_configurations 
    WHERE name = 'IDENTITY_CACHE' AND value = 1
)
BEGIN
    PRINT 'Disabling IDENTITY_CACHE (first time only)';
    ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = OFF;
END
ELSE
BEGIN
    PRINT 'IDENTITY_CACHE is already disabled';
END