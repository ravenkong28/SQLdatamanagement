SELECT * FROM Customer
SELECT * FROM CloudProvider
SELECT * FROM DBMS
SELECT * FROM [Database]
SELECT * FROM Processor
SELECT * FROM OperatingSystem
SELECT * FROM [Server]
SELECT * FROM [Transaction]
SELECT * FROM TransactionDetail


INSERT INTO Customer 
VALUES
('CU123', 'John Doe', 'john.doe@example.com', '123 Main St, Springfield', '1990-05-14', 'Male', '081234567890', 'password123', 1500000),
('CU345', 'Jane Smith', 'jane.smith@example.com', '456 Oak St, Springfield', '1985-09-23', 'Female', '082345678901', 'securePass!45', 2500000),
('CU678', 'Robert Johnson', 'robert.johnson@example.com', '789 Pine St, Springfield', '1992-11-30', 'Male', '083456789012', 'robertP@ss', 1000000),
('CU901', 'Emily Davis', 'emily.davis@example.com', '101 Maple St, Springfield', '1988-03-22', 'Female', '084567890123', 'emilyD#88', 3000000),
('CU112', 'Michael Brown', 'michael.brown@example.com', '202 Birch St, Springfield', '1995-07-08', 'Male', '085678901234', 'mikeB_1995', 5000000),
('CU234', 'Olivia Martinez', 'olivia.martinez@example.com', '303 Cedar St, Springfield', '1991-02-16', 'Female', '086789012345', 'OliviaM@r', 1800000),
('CU456', 'William Garcia', 'william.garcia@example.com', '404 Elm St, Springfield', '1987-08-14', 'Male', '087890123456', 'WillG_87', 2200000),
('CU789', 'Sophia Hernandez', 'sophia.hernandez@example.com', '505 Spruce St, Springfield', '1993-12-11', 'Female', '088901234567', 'SophiaH#93', 2750000),
('CU912', 'James Lee', 'james.lee@example.com', '606 Willow St, Springfield', '1989-03-03', 'Male', '089012345678', 'JamesL1989', 3200000),
('CU134', 'Ava Taylor', 'ava.taylor@example.com', '707 Poplar St, Springfield', '1994-06-06', 'Female', '080123456789', 'AvaT@94', 1400000),
('CU567', 'Benjamin Wilson', 'benjamin.wilson@example.com', '808 Chestnut St, Springfield', '1986-11-22', 'Male', '081345678901', 'BenW@lson', 2750000),
('CU890', 'Mia Anderson', 'mia.anderson@example.com', '909 Walnut St, Springfield', '1997-09-19', 'Female', '082456789012', 'MiaA1997', 2000000),
('CU145', 'Noah Thomas', 'noah.thomas@example.com', '1010 Ash St, Springfield', '1990-01-25', 'Male', '083567890123', 'NoahT@1990', 3500000),
('CU246', 'Isabella Moore', 'isabella.moore@example.com', '1111 Birch St, Springfield', '1991-04-30', 'Female', '084678901234', 'IsaM@re', 1600000),
('CU357', 'Liam Jackson', 'liam.jackson@example.com', '1212 Cedar St, Springfield', '1988-07-21', 'Male', '085789012345', 'LiamJ@son', 3100000),
('CU468', 'Charlotte White', 'charlotte.white@example.com', '1313 Oak St, Springfield', '1989-10-10', 'Female', '086890123456', 'CharW@ite', 1900000);


INSERT INTO CloudProvider 
VALUES
('CP001', 'Azure Cloud', 'support@azure.com', 'Seattle, USA', 'https://azure.microsoft.com'),
('CP002', 'Amazon Web Services', 'support@aws.com', 'Virginia, USA', 'https://aws.amazon.com'),
('CP003', 'Google Cloud', 'support@googlecloud.com', 'California, USA', 'https://cloud.google.com'),
('CP004', 'IBM Cloud', 'support@ibmcloud.com', 'New York, USA', 'https://www.ibm.com/cloud'),
('CP005', 'Alibaba Cloud', 'support@alibabacloud.com', 'Hangzhou, China', 'https://www.alibabacloud.com'),
('CP006', 'Oracle Cloud', 'support@oraclecloud.com', 'Redwood City, USA', 'https://www.oracle.com/cloud'),
('CP007', 'Salesforce Cloud', 'support@salesforce.com', 'San Francisco, USA', 'https://www.salesforce.com/cloud'),
('CP008', 'DigitalOcean', 'support@digitalocean.com', 'New York, USA', 'https://www.digitalocean.com'),
('CP009', 'Tencent Cloud', 'support@tencentcloud.com', 'Shenzhen, China', 'https://cloud.tencent.com'),
('CP010', 'Huawei Cloud', 'support@huaweicloud.com', 'Shenzhen, China', 'https://www.huaweicloud.com');


INSERT INTO DBMS 
VALUES
('DS001', 'MySQL', 'https://www.mysql.com'),
('DS002', 'PostgreSQL', 'https://www.postgresql.org'),
('DS003', 'Oracle DB', 'https://www.oracle.com/database'),
('DS004', 'Microsoft SQL Server', 'https://www.microsoft.com/sqlserver'),
('DS005', 'MongoDB', 'https://www.mongodb.com'),
('DS006', 'MariaDB', 'https://mariadb.org'),
('DS007', 'SQLite', 'https://www.sqlite.org'),
('DS008', 'Cassandra', 'https://cassandra.apache.org'),
('DS009', 'Redis', 'https://redis.io'),
('DS010', 'Elasticsearch', 'https://www.elastic.co');


INSERT INTO [Database] 
VALUES
('DB001', 'DS002', 50, 7500000.00),
('DB002', 'DS003', 100, 12000000.00),
('DB003', 'DS004', 200, 20000000.00),
('DB004', 'DS001', 500, 30000000.00),
('DB005', 'DS005', 250, 15000000.00),
('DB006', 'DS006', 150, 18000000.00),
('DB007', 'DS007', 10, 2500000.00),
('DB008', 'DS008', 300, 22000000.00),
('DB009', 'DS009', 40, 7000000.00),
('DB010', 'DS010', 80, 14000000.00),
('DB011', 'DS002', 60, 8000000.00),
('DB012', 'DS003', 120, 12500000.00);

INSERT INTO Processor
VALUES
('PR001', 'Intel Xeon E5', 8, 2000, 3000),
('PR002', 'AMD Ryzen 7', 16, 3500, 4500),
('PR003', 'Intel Core i9', 10, 3200, 5200),
('PR004', 'AMD EPYC 7742', 64, 2300, 3500),
('PR005', 'Intel Xeon Gold', 24, 2800, 4200),
('PR006', 'AMD Ryzen 5', 12, 3400, 4400),
('PR007', 'Intel Xeon Platinum', 28, 3100, 4300),
('PR008', 'AMD Threadripper', 32, 3600, 4800),
('PR009', 'Intel Core i7', 6, 2500, 4000),
('PR010', 'AMD Athlon', 4, 2900, 3600);


INSERT INTO OperatingSystem
VALUES
('OS001', 'Windows Server 2019', 'Windows', 1200000.00),
('OS002', 'Ubuntu Server 20.04', 'Linux', 800000.00),
('OS003', 'Red Hat Enterprise Linux 8', 'Linux', 1000000.00),
('OS004', 'CentOS 7', 'Linux', 600000.00),
('OS005', 'Debian 10', 'Linux', 700000.00),
('OS006', 'Fedora Server', 'Linux', 900000.00),
('OS007', 'SUSE Linux Enterprise', 'Linux', 950000.00),
('OS008', 'Arch Linux', 'Linux', 500000.00),
('OS009', 'Windows Server 2016', 'Windows', 1100000.00),
('OS010', 'Amazon Linux 2', 'Linux', 750000.00);


INSERT INTO Server
VALUES
('SV001', 'PR002', 'OS001', 'Enterprise Server A', 64, 300000.00, 1024),
('SV002', 'PR003', 'OS002', 'High Performance Server B', 128, 450000.00, 2048),
('SV003', 'PR004', 'OS003', 'Standard Server C', 32, 150000.00, 512),
('SV004', 'PR001', 'OS004', 'Budget Server D', 16, 100000.00, 256),
('SV005', 'PR005', 'OS005', 'Compute-Optimized Server E', 96, 500000.00, 4096),
('SV006', 'PR006', 'OS006', 'Memory-Optimized Server F', 64, 340000.00, 2048),
('SV007', 'PR007', 'OS007', 'Storage-Optimized Server G', 128, 480000.00, 8192),
('SV008', 'PR008', 'OS008', 'Graphics-Optimized Server H', 96, 520000.00, 4096),
('SV009', 'PR009', 'OS009', 'Low Latency Server I', 48, 280000.00, 1024),
('SV010', 'PR010', 'OS010', 'General Purpose Server J', 32, 220000.00, 512),
('SV011', 'PR001', 'OS002', 'Advanced Server K', 256, 600000.00, 8192),
('SV012', 'PR003', 'OS001', 'Power Server L', 128, 400000.00, 2048),
('SV013', 'PR005', 'OS004', 'High Capacity Server M', 512, 1200000.00, 16384);


INSERT INTO TransactionDetail
VALUES
('TD001', 'CP002', 'DB003', 'SV001', '2022-01-15'),
('TD002', 'CP001', 'DB002', 'SV002', '2022-02-20'),
('TD003', 'CP003', 'DB004', 'SV003', '2022-03-25'),
('TD004', 'CP005', 'DB001', 'SV004', '2022-04-10'),
('TD005', 'CP004', 'DB005', 'SV005', '2022-05-05'),
('TD006', 'CP006', 'DB006', 'SV006', '2022-06-12'),
('TD007', 'CP007', 'DB007', 'SV007', '2022-07-08'),
('TD008', 'CP008', 'DB008', 'SV008', '2022-08-22'),
('TD009', 'CP009', 'DB009', 'SV009', '2022-09-14'),
('TD010', 'CP010', 'DB010', 'SV010', '2022-10-05'),
('TD011', 'CP001', 'DB011', 'SV011', '2022-11-01'),
('TD012', 'CP002', 'DB012', 'SV012', '2022-12-15'),
('TD013', 'CP003', 'DB001', 'SV003', '2022-01-30'),
('TD014', 'CP004', 'DB002', 'SV004', '2022-02-27'),
('TD015', 'CP005', 'DB003', 'SV005', '2022-03-13'),
('TD016', 'CP006', 'DB004', 'SV006', '2022-04-21'),
('TD017', 'CP007', 'DB005', 'SV007', '2022-05-17'),
('TD018', 'CP008', 'DB006', 'SV008', '2022-06-09'),
('TD019', 'CP009', 'DB007', 'SV009', '2022-07-03'),
('TD020', 'CP010', 'DB008', 'SV010', '2022-08-28'),
('TD021', 'CP001', 'DB009', 'SV001', '2022-09-15'),
('TD022', 'CP002', 'DB010', 'SV002', '2022-10-11'),
('TD023', 'CP003', 'DB011', 'SV003', '2022-11-07'),
('TD024', 'CP004', 'DB012', 'SV004', '2022-12-03'),
('TD025', 'CP005', 'DB001', 'SV005', '2022-12-30');


INSERT INTO [Transaction]
VALUES
('TR001', 'TD001', 'CU123'),
('TR002', 'TD002', 'CU345'),
('TR003', 'TD003', 'CU678'),
('TR004', 'TD004', 'CU901'),
('TR005', 'TD005', 'CU112'),
('TR006', 'TD006', 'CU234'),
('TR007', 'TD007', 'CU456'),
('TR008', 'TD008', 'CU789'),
('TR009', 'TD009', 'CU912'),
('TR010', 'TD010', 'CU134'),
('TR011', 'TD011', 'CU567'),
('TR012', 'TD012', 'CU890'),
('TR013', 'TD013', 'CU145'),
('TR014', 'TD014', 'CU246'),
('TR015', 'TD015', 'CU357');
