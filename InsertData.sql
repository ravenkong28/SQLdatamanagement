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
VALUES('CU123','Raven Kongnando','raven@gmail.com','Dimanawelah','2001-10-28','Male','082213799082','test','2000000'),
('CU345','Anton Simanjuntak','anton@gmail.com','Jl ABC no 1 Jakarta Barat','2001-11-28','Male','082213799082','test1','1000000'),
('CU678','Siska Susanti','siskadimanamanasenang@gmail.com','Jl DEF no 2 Jakarta Utara','2005-12-29','Female','085671868633','test2','3000000'),
('CU901','Leo Fernando','leo123@gmail.com','Jl GHJ no 3 Jakarta Timur','1998-01-17','Male','081963767663','test3','4000000'),
('CU131','Tuti Melrimba','panggilsayatuti@gmail.com','Jl KLM no 4 Jakarta Selatan','1990-02-07','Female','08229787878','rahasia','00000')
('CU415','Malas Pake Z','MalaZZZ99@gmail.com','Jl Panjang no 44 Jakarta Barat','2003-04-22','Male','08112337799','24446666688888888','5000000')
('CU161','Raflesia Nainggolan','RNainggolan@gmail.com','Jl Hassanudin no 88D Pekanbaru','1995-11-27','Female','08778777788','ngak tahu','5000000')
('CU171','Ari Hendrawan','saya_bocil18thun@gmail.com','Jl Senayan C4 Jakarta Selatan','1983-11-11','Male','08229787878','apa yah?','5000000')
('CU819','Martin Panjaitan','Akusiapa???@gmail.com','Jl Pattimura no 32B Jakarta Selatan','2002-06-19','Male','08449782451','Tanyakan dengan ada diatas','5000000')
('CU202','Livia Ivanka','testajahat@gmail.com','Perumahan Intan Regeny Blok J No 4, Jakarta Selatan','2005-12-02','Female','08333487878','hmdengan8x','5000000')


INSERT INTO CloudProvider 
VALUES('CP001','Cloud Asia 1','cloudasia1@gmail.com','Singapore','https://www.cloudasia1.com'),
('CP002','Cloud Afrika 1','cloudafrika2@gmail.com','Zimbabuwe','https://www.cloudafrika2.com'),
('CP003','Cloud Amerika 1','cloudamerika3@gmail.com','New York','https://www.cloudamerika3.com'),
('CP004','Cloud Eropa 1','clouderopa4@gmail.com','Paris','https://www.clouderopa4.com'),
('CP005','Cloud Australia 1','cloudaustralia5@gmail.com','Sydney','https://www.cloudaustralia5.com')
('CP006','Cloud Serba Salah','CLOUDSS1@gmail.com','Daegu','https://www.cloudSSalah.com'),
('CP007','Cloud Genshin Impact','CGI2019@gmail.com','Hokaido','https://www.cloudGIMihoyoman.com'),
('CP010','Cloud Jurnal','JurnalCloud3@gmail.com','United Kingdom','https://www.cloudJurnal.com'),
('CP777','Cloud Mobile Legend','MLMoonton4@gmail.com','Jakarta','https://www.cloudMobileMoonton.com'),
('CP999','Cloud 2 Juta Rupiah','hadiahundian5@gmail.com','Beijing','https://www.cloudUndian19.com')


INSERT INTO DBMS 
VALUES('DS001','IT Data 1','https://www.dbmsIT1.com'),
('DS002','Management Database','https://www.DatabaseMono2.com'),
('DS003','Software Database','https://www.ApplServer3.com'),
('DS004','Maybelie','https://www.MakeUp4.com'),
('DS005','Alkaline','https://www.MesinMinyak5.com')
('DS006','Binussian','https://www.BinusmayaKW6.com'),
('DS007','Junal','https://www.Jurnalaja7.com'),
('DS008','Software Database','https://www.testingsaja8.com'),
('DS009','File Penting','https://www.Penting9sekali.com'),
('DS010','File 1001 cara','https://www.1001cara10.com')


INSERT INTO [Database] 
VALUES('DB001','DS002',2,10000000.00),
('DB002','DS004',1,8000000.00),
('DB003','DS005',4,6200000.00)
('DB004','DS009',100,10000000.00),
('DB005','DS007',52,9300000.00),
('DB006','DS006',60,5000000.00)
('DB007','DS008',30,1300000.00),
('DB008','DS010',12,1200000.00),
('DB009','DS003',42,5500000.00),
('DB010','DS001',24,6600000.00)

INSERT INTO Processor
VALUES('PR001','Intel Core I7', 128, 1000, 1000),
('PR002','Intel Core I5', 256, 2000, 2000),
('PR003','Intel Core I2', 64, 3000, 3000)
('PR004','Radeon VGA', 128, 1000, 1000),
('PR005','Radeon R3', 200, 100, 50),
('PR006','Radeon R5', 300, 150, 200),
('PR007','Radeon R7', 200, 100, 300),
('PR008','Intel VGA', 500, 1000, 200),
('PR009','RADEON XGMAX', 204, 3052, 820)
('PR010','RADEON Pro', 303, 522, 110)


INSERT INTO OperatingSystem
VALUES('OS001','Windows', 'Windows Family', 600000.00),
('OS002','LINUX', 'LINUX Family', 700000.00),
('OS003','IOS', 'IOS Family', 800000.00)
('OS004','Windows', 'Windows Family', 600000.00),
('OS005','LINUX', 'LINUX Family', 700000.00),
('OS006','IOS', 'IOS Family', 800000.00)


INSERT INTO Server
VALUES('SV001','PR002', 'OS001', 'Server Test 1.2.3', 10, 20000, 128),
('SV002','PR003', 'OS002', 'Server Test 2.3.2', 8, 30000, 256),
('SV003','PR001', 'OS003', 'Server Test 3.1.3', 4, 40000, 64),
('SV001','PR005', 'OS006', 'Server Test 1.5.6', 200, 50000, 100),
('SV002','PR007', 'OS001', 'Server Test 2.7.1', 150, 33000, 50),
('SV003','PR008', 'OS004', 'Server Test 3.8.4', 40, 24000, 128),
('SV001','PR010', 'OS005', 'Server Test 1.10.5', 100, 29000, 32),
('SV002','PR004', 'OS004', 'Server Test 2.4.4', 1000, 49000, 516),
('SV003','PR006', 'OS002', 'Server Test 3.6.2', 2, 43000, 10)

INSERT INTO [TransactionDetail]
VALUES('TD001', 'CP002','DB003', 'SV001', '2021-01-02'),
('TD002', 'CP009','DB002', 'SV002', '2001-02-18'),
('TD003', 'CP003','DB003', 'SV003', '1990-03-09'),
('TD004', 'CP004','DB002', 'SV008', '2001-04-13'),
('TD005', 'CP005','DB001', 'SV003', '1987-05-28')
('TD006', 'CP004','DB006', 'SV005', '1974-06-13'),
('TD007', 'CP004','DB007', 'SV007', '2003-07-18'),
('TD008', 'CP002','DB010', 'SV003', '1998-08-30'),
('TD009', 'CP001','DB009', 'SV006', '1989-09-12'),
('TD010', 'CP006','DB005', 'SV001', '1990-12-28')


INSERT INTO [Transaction]
VALUES('TR001','TD005', 'CU123'),
('TR002','TD005', 'CU345'),
('TR003','TD004', 'CU901'),
('TR004','TD001', 'CU112'),
('TR005','TD008', 'CU131'),
('TR006','TD009', 'CU415'),
('TR007','TD005', 'CU161'),
('TR008','TD002', 'CU123'),
('TR009','TD004', 'CU901'),
('TR010','TD003', 'CU171'),
('TR011','TD001', 'CU819'),
('TR012','TD008', 'CU202'),
('TR013','TD005', 'CU123'),
('TR014','TD007', 'CU202'),
('TR015','TD006', 'CU171'),
('TR016','TD005', 'CU415'),
('TR017','TD004', 'CU161'),
('TR018','TD003', 'CU123'),
('TR019','TD007', 'CU901'),
('TR020','TD002', 'CU171'),
('TR021','TD003', 'CU819'),
('TR022','TD005', 'CU202'),
('TR023','TD003', 'CU123'),
('TR024','TD009', 'CU202'),
('TR025','TD010', 'CU171')