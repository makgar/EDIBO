# SQL

## MS SQL Server
[Quickstart: Install SQL Server and create a database on Ubuntu](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15)  
[Installation guidance for SQL Server on Linux](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup?view=sql-server-ver15)  
[Walkthrough for the security features of SQL Server on Linux](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-security-get-started?view=sql-server-ver15)  
[CREATE LOGIN (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-login-transact-sql?view=sql-server-ver15)  
[IS_SRVROLEMEMBER (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/functions/is-srvrolemember-transact-sql?view=sql-server-ver15)  

## Tools
[Alternatives to SQL Server Management Studio for Linux](https://alternativeto.net/software/sql-server-management-studio/?platform=linux)  
[Quickstart: Use Visual Studio Code to connect and query](https://docs.microsoft.com/en-us/azure/azure-sql/database/connect-query-vscode)  
[Install sqlcmd and bcp the SQL Server command-line tools on Linux](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-tools?view=sql-server-ver15)  
[sqlcmd Utility](https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility?view=sql-server-ver15)  

## Plan from 31.08.20 to 04.09.20
DB - datu bāze  

1. DB -> SQL (MySQL)  
DB serveris satur DB (DB nosaukumi servera ietvaros nedrīkst atkārtoties)  
DB sastāv no tabulām (tabulu nosaukumi DB ietvaros nedrīkst atkārtoties)  
Tabulas sastāv no kolonnām (kolonnu nosaukumi tabulu ietvaros nedrīkst atkārtoties)  
Kolonnai ir nosaukums un datu tips  
* Komentāra rinda (--), komentāra bloks (/* */)  
1.0. DB struktūras izzināšana  
1.0.1. aktīvs DB lietotājs - SELECT CURRENT_USER();  
* lietotāja tiesības - SHOW GRANTS;  
1.0.2. lietotāja tiesību noskaidrošana - SHOW GRANTS FOR 'user'@'localhost';  
1.0.3. aktīva DB - SELECT DATABASE();  
1.0.4. visas DB - SHOW DATABASES;  
1.0.5. DB izvēle - USE DBNAME; (var pārbaudīt ar komandu no 1.0.3.)  
* DB tiek izvēlēta līdz atslēgšanas brīdim vai citas DB USE sākumam  
1.0.6. DB veidošana - CREATE DATABASE DBNAME;  
1.0.7. DB dzēšana - DROP DATABASE DBNAME;  
1.0.8. visas tabulas - SHOW TABLES;  
1.0.9. tabulas struktūras apraksts - DESCRIBE TABLE_NAME; (SHOW COLUMNS FROM TABLE_NAME;)  
1.0.10. tabulas detalizēts apraksts un statistika - SHOW TABLE STATUS FROM DBNAME;  
* SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE TABLE_NAME='MyTBL_0';  
** SHOW CREATE TABLE MyTBL_0;  
1.0.11. tabulas ierakstu izgūšana - SELECT * FROM TABLE_NAME;  
1.0.12. tabulas ierakstu izgūšana ar filtru - SELECT * FROM TABLE_NAME WHERE COLUMN_NAME=VALUE;  
* filtrs var būt daudz līmeņu  
1.0.13. tabulas veidošana - CREATE TABLE TABLE_NAME (COLUMN_NAME DATATYPE ...);  
... - var būt vēl vairākas īpašības:  
   NULL/NOT NULL  
   DEFAULT  
   PRIMARY KEY (ja tabulai tas ir, tad pirms pievienošanas sākumā ir jāpilda DROP PRIMARY KEY)  
   AUTO_INCREMENT  
   FOREIGN KEY  
* CURRENT_TIMESTAMP()  
1.0.14. tabulas struktūras modificēšana - ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATATYPE ...;  
* modificēšana - pielikt lauku, izmainīt lauka īpašības, dzēst lauku  
** ALTER TABLE TABLE_NAME MODIFY COLUMN_NAME DATATYPE ...;  
*** ALTER TABLE TABLE_NAME DROP COLUMN_NAME;  
1.0.15. ierakstu pievienošana - INSERT INTO TABLE_NAME (COLUMN_NAME) VALUES (VALUE);  
1.0.16. ierakstu rediģēšana - UPDATE TABLE_NAME SET COLUMN_NAME=VALUE WHERE COLUMN_NAME=VALUE;  
1.0.17. ierakstu dzēšana - DELETE FROM TABLE_NAME WHERE COLUMN_NAME=VALUE;  
1.0.18. trigeru saraksts - SHOW TRIGGERS;  
1.0.19. trigera veidošana (trigera nosaukums ir unikāls visas datu bāzes ietvaros)  
DELIMITER $$  
CREATE TRIGGER TRIGGER_NAME BEFORE INSERT ON TABLE_NAME  
FOR EACH ROW  
BEGIN  
IF NEW.COLUMN_NAME=VALUE THEN  
SIGNAL SQLSTATE '50000' SET message_text='MESSAGE_TEXT!';  
END IF;  
END;$$  
DELIMITER ;  
* SHOW TRIGGERS LIKE '%TRIGGER_NAME%' \G;  
** https://www.w3resource.com/mysql/mysql-triggers.php  

1.1. SQl online simulator  
https://paiza.io  
https://www.w3schools.com/sql/  

1.2. SQL local DB (?)  
1.2.1. Do we have local mysql tool  
whereis mysql  
1.2.2. Do we have local mysql service  
ps aux | grep mysql (| utt. | utt.)  
service mysql stop  
service mysql start  
mysql (slēdzas sistēmas lietotājs, var uzzināt ar whoami, pie localhost eq 127.0.0.1)  
mysql -u user  
mysql -u user -p  
mysql -h 127.0.0.1 -u user -p  

1.3. SQL AWS (Amazon Web Services)  
* https://www.researchgate.net/post/Is_there_any_free_SQL_database_server_online  
2. .NET webapp ar konektoru uz DB  
3. .NET webapp ar Angular (visādas grafiskās formas)  
4. -"- ar konektoru uz DB  
5. "Native" Angular  
6. -"- (visādas grafiskās formas)  
7. -"- ar konektoru uz DB  
