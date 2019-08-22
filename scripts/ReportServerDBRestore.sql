ALTER DATABASE ReportServer SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE IF EXISTS ReportServer;

RESTORE DATABASE ReportServer
FROM DISK = N'D:\Backup\ReportServer.bak'
WITH
	MOVE 'ReportServer'
	TO 'D:\Data\ReportServer.mdf',
	MOVE 'ReportServer_log'
	TO 'L:\Logs\ReportServer\_log.LDF',
	NORECOVERY,
	REPLACE;

ALTER DATABASE ReportServerTempDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE IF EXISTS ReportServerTempDB;

RESTORE DATABASE ReportServerTempDB
FROM DISK = N'D:\Backup\ReportServerTempDB.bak'
WITH
	MOVE 'ReportServerTempDB'
	TO 'D:\Data\ReportServerTempDB.mdf',
	MOVE 'ReportServerTempDB_log'
	TO 'L:\Logs\ReportServerTempDB\_log.LDF',
	NORECOVERY,
	REPLACE;