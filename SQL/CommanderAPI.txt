SELECT name FROM sys.sql_logins;
CREATE LOGIN <login_name> WITH PASSWORD = '<enterStrongPasswordHere>';
EXEC master..sp_addsrvrolemember @loginame = N'CommanderAPI', @rolename = N'sysadmin';
SELECT IS_SRVROLEMEMBER ( 'sysadmin' , 'CommanderAPI' );