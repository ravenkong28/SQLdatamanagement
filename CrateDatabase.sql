CREATE DATABASE CloudeBRoker
--DROP DATABASE CloudeBRoker
USE CloudeBRoker

CREATE TABLE Customer(
	CustomerId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkCustomerId CHECK (CustomerId LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(255)
		 CONSTRAINT ChkCustomerName CHECK (CustomerName LIKE '% %'),
	CustomerEmail NVARCHAR(255),
	CustomerAddress VARCHAR(255),
	CustomerDob DATE,
	CustomerGender VARCHAR(6)
		CONSTRAINT ChkCustomerGender CHECK (CustomerGender IN('Male', 'Female')),
	CustomerPhone VARCHAR(12),
	CustomerPassword NVARCHAR(50),
	CustomerBalance INTEGER
)

CREATE TABLE CloudProvider(
	CloudId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkCloudId CHECK (CloudId LIKE 'CP[0-9][0-9][0-9]'),
	CloudName VARCHAR(255),
	CloudEmail NVARCHAR(255),
	CloudRegion VARCHAR(50),
	CloudURL NVARCHAR(50)
)

CREATE TABLE DBMS(
	DBMSId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkDBMSId CHECK (DBMSId LIKE 'DS[0-9][0-9][0-9]'),
	DBMSName VARCHAR(255),
	DBMSURL NVARCHAR(255)
)

CREATE TABLE [Database](
	DatabaseId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkDatabaseId CHECK (DatabaseId LIKE 'DB[0-9][0-9][0-9]'),
	DBMSId CHAR(5) NOT NULL FOREIGN KEY REFERENCES DBMS(DBMSId) ON UPDATE CASCADE ON DELETE CASCADE,
	DatabaseStorage INT
		CONSTRAINT ChkDatabaseStorage CHECK(DatabaseStorage > 0),
	DatabasePrice Decimal(20,2)
)

CREATE TABLE Processor(
	ProcessorId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkProcessorId CHECK (ProcessorId LIKE 'PR[0-9][0-9][0-9]'),
	ProcessorName VARCHAR(255),
	ProcessorCore INT,
	BaseClockSpeed INT,
	BoostClockSpeed INT
)

CREATE TABLE OperatingSystem(
	OSId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkOSId CHECK (OSId LIKE 'OS[0-9][0-9][0-9]'),
	OSName VARCHAR(255),
	OSFamily VARCHAR(255),
	OSPrice Decimal(20,2)
		CONSTRAINT ChkOSPrice CHECK (OSPrice BETWEEN 500000.00 AND 1500000.00)
)

CREATE TABLE [Server](
	ServerId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkServerId CHECK (ServerId LIKE 'SV[0-9][0-9][0-9]'),
	ProcessorId  CHAR(5) NOT NULL FOREIGN KEY REFERENCES Processor(ProcessorId) ON UPDATE CASCADE ON DELETE CASCADE,
	OSId CHAR(5) NOT NULL FOREIGN KEY REFERENCES OperatingSystem(OSId) ON UPDATE CASCADE ON DELETE CASCADE,
	ServerName VARCHAR(255),
	ServerMemory INT
		CONSTRAINT ChkServerMemory CHECK (ServerMemory % 2 = 0),
	ServerPrice Decimal(20,2)
		CONSTRAINT ChkServerPrice CHECK (ServerPrice BETWEEN 10000.00 AND 300000.00),
	ServerStorage INT
)

CREATE TABLE [TransactionDetail](
	TransactionDetailId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkTransactionDetailId CHECK (TransactionDetailId LIKE 'TD[0-9][0-9][0-9]'),
	CloudId CHAR(5) NOT NULL FOREIGN KEY REFERENCES CloudProvider(CloudId) ON UPDATE CASCADE ON DELETE CASCADE,
	DatabaseId CHAR(5) NOT NULL FOREIGN KEY REFERENCES [Database](DatabaseId) ON UPDATE CASCADE ON DELETE CASCADE,
	ServerId CHAR(5) NOT NULL FOREIGN KEY REFERENCES [Server](ServerId) ON UPDATE CASCADE ON DELETE CASCADE,
	TransactionDate DATE 
)

CREATE TABLE [Transaction](
	TransactionId CHAR(5) NOT NULL PRIMARY KEY
		CONSTRAINT ChkTransactionId CHECK (TransactionId LIKE 'TR[0-9][0-9][0-9]'),
	TransactionDetailId CHAR(5) NOT NULL FOREIGN KEY REFERENCES TransactionDetail(TransactionDetailId) ON UPDATE CASCADE ON DELETE CASCADE,
	CustomerId CHAR(5) NOT NULL FOREIGN KEY REFERENCES Customer(CustomerId) ON UPDATE CASCADE ON DELETE CASCADE
)
