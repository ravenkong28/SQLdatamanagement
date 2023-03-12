-- 1. 
SELECT CustomerName,
COUNT(cp.CloudId) as [Cloud Provider Count]
FROM Customer c
JOIN [Transaction] t ON c.CustomerId = t.CustomerId
JOIN TransactionDetail td ON t.TransactionDetailId = td.TransactionDetailId
JOIN CloudProvider cp ON td.CloudId = cp.CloudId
WHERE CustomerName LIKE '%e%' AND (Datepart(DAY, CustomerDob) % 2 = 0)
GROUP BY CustomerName


--2.
SELECT ServerName,
'Rp' + Replace(CAST((ServerPrice + OSPrice + DatabasePrice) AS VARCHAR(100)),'.00',',-') as [Total Price]
FROM [Server] s
JOIN OperatingSystem os ON s.OSId = os.OSId
JOIN TransactionDetail td ON s.ServerId = td.ServerId
JOIN [Database] db ON td.DatabaseId = db.DatabaseId
WHERE ServerStorage > 2 AND DatabaseStorage > 2

--3.
SELECT SUBSTRING(CustomerName, 1, 1) + SUBSTRING(CustomerName,CHARINDEX(' ', CustomerName)+1,1) as Initia, 
db.DatabasePrice AS [Database Price],
COUNT(td.TransactionDetailId) AS [Total Transaction]
FROM Customer c
JOIN [Transaction] t ON t.CustomerId = c.CustomerId
JOIN TransactionDetail td ON t.TransactionDetailId = td.TransactionDetailId
JOIN [Database] db ON td.DatabaseId = db.DatabaseId
WHERE db.DatabaseStorage > 2 AND CustomerGender = 'Female'
GROUP BY CustomerName, DatabasePrice

--4. 
SELECT SUBSTRING(CloudName,1, CHARINDEX(' ', CloudName)-1) + ' Company' AS 'Cloud Company',
COUNT(td.TransactionDetailId) AS [Total Transaction],
AVG(CustomerBalance) AS [Customer Average Account Balance]
FROM CloudProvider c 
JOIN [TransactionDetail] td ON c.CloudId =  td.CloudId
JOIN [Transaction] t ON td.TransactionDetailId = t.TransactionDetailId
JOIN [Customer] cu ON cu.CustomerId = t.CustomerId
WHERE CloudName  LIKE '%Cloud%'
GROUP BY CloudName
HAVING COUNT(td.TransactionDetailId) > 1

--5. 
SELECT UPPER(SUBSTRING(ServerName, 1,5) + '-' + SUBSTRING(s.ServerId, 3, LEN(s.ServerId)-1)) AS [Server Initial],
ProcessorName, ServerStorage
FROM [Server] s
JOIN [Processor] p ON s.ProcessorId = p.ProcessorId
JOIN TransactionDetail td ON td.ServerId = s.ServerId
JOIN [Database] db ON td.DatabaseId = db.DatabaseId
WHERE ProcessorCore > 4
GROUP BY ServerName, s.ServerId, ProcessorName, ServerStorage
HAVING ServerStorage > MAX(DatabaseStorage) 


--6. 
SELECT DBMSName, DatabasePrice,
CAST(DatabaseStorage as Varchar) + ' GB' AS [Database Storage], 
REPLACE(DBMSURL, 'https://', '') AS [Database Software]
From DBMS dbms
JOIN [Database] db ON dbms.DBMSId = db.DBMSId
JOIN TransactionDetail td ON db.DatabaseId = td.DatabaseId
JOIN [Server] s ON td.ServerId = s.ServerId
WHERE DBMSName LIKE '%DB%'
GROUP BY DBMSName, DatabasePrice, DatabaseStorage, DBMSURL
HAVING DatabasePrice > AVG(ServerPrice)


--7.
SELECT UPPER(SUBSTRING(ServerName, 1,5) +'-'+ SUBSTRING(s.ServerId, 4, LEN(s.ServerId)-1)+'-'+ 
CAST(DatabaseStorage AS VARCHAR)) AS [Server Code], 
CAST(DatabaseStorage  AS VARCHAR)+' GB' AS [Storage],
'Rp ' + CAST(DatabasePrice AS varchar) AS [Price]
From [Server] s
JOIN TransactionDetail td ON td.ServerId = s.ServerId
JOIN [Database] db ON td.DatabaseId = db.DatabaseId
JOIN OperatingSystem os ON s.OSId = os.OSId
GROUP BY ServerName, s.ServerId, DatabasePrice, ServerPrice, ServerStorage, DatabaseStorage
HAVING ServerPrice > MAX(OSPrice) AND ServerStorage > AVG(DatabaseStorage)

--8.
SELECT SUBSTRING(db.DatabaseId, 3, LEN(db.DatabaseId)-1)+'-'+ SUBSTRING(dbms.DBMSId, 3, LEN(dbms.DBMSId)-1) + 
CAST(DatabaseStorage  AS VARCHAR)+' GB' AS [Database Code]
From [Database] db 
JOIN DBMS dbms on db.DBMSId = dbms.DBMSId
JOIN TransactionDetail td ON db.DatabaseId = td.DatabaseId
JOIN [Server] s ON td.ServerId = s.ServerId
JOIN OperatingSystem os ON s.OSId = os.OSId
WHERE dbms.DBMSId Between 'DS006' AND 'DS007'
GROUP BY db.DatabaseId, dbms.DBMSId, DatabaseStorage, DatabasePrice
HAVING DatabasePrice BETWEEN MIN(ServerPrice) AND AVG(os.OSPrice)

--9.
CREATE VIEW [Affordable Server View] AS
SELECT ServerName, ProcessorName, OSName, CAST(ServerMemory AS VARCHAR) + ' GB' AS [Server Memory]
From [Database] db 
JOIN DBMS dbms on db.DBMSId = dbms.DBMSId
JOIN TransactionDetail td ON db.DatabaseId = td.DatabaseId
JOIN [Server] s ON td.ServerId = s.ServerId
JOIN [Processor] p ON s.ProcessorId = p.ProcessorId
JOIN OperatingSystem os ON s.OSId = os.OSId
WHERE ServerMemory >= 4
GROUP BY ServerName, ProcessorName, OSName, ServerMemory, ServerPrice
HAVING ServerPrice BETWEEN MIN(ServerPrice) AND AVG(ServerPrice)

--10.
CREATE VIEW [Popular Cheap Database View] AS
SELECT DBMSName, DBMSURL, CAST(DatabaseStorage AS VARCHAR) + ' GB' AS [DatabaseStorage],
Count(TransactionDetailId) AS [Total Transaction]
From [Database] db 
JOIN DBMS dbms on db.DBMSId = dbms.DBMSId
JOIN TransactionDetail td ON db.DatabaseId = td.DatabaseId
JOIN [Server] s ON td.ServerId = s.ServerId
JOIN [Processor] p ON s.ProcessorId = p.ProcessorId
JOIN OperatingSystem os ON s.OSId = os.OSId
GROUP BY DBMSName, DBMSURL, DatabaseStorage, DatabasePrice
HAVING DatabasePrice <= AVG(DatabasePrice) 
AND Count(TransactionDetailId) > 2


