# SQL Data Management
This Database Management using SQL on SQL Server Database Management as a fullfilment of the assignment project on Database System in Bina Nusantara University.

Cloud BRoker is a company which helps customers to buy their own servers and databases and host them on their chosen cloud provider. In order to maintain transactions, you, as a database administrator, are tasked to create a database system to store data and maintain transactions. The tasks that you must do are:

a. Create Entity Relationship Diagram to maintain transactions.

b. Create a database system using DDL syntax that is relevant with transactions.

c. Create query using DML syntax to fill the tables in the database system with data based on the following conditions:

1.  Master table must be filled with more than or equals 15 data.

2.  Transaction table must be filled with more than or equals 15 data

3.  Transaction detail table must be filled with more than or equals 25 data.

d. To support management process in Cloud BRoker, you are tasked to provide some query that produces important data. The query requirements are:

1.	Display customer name and Cloud Providers Count (obtained from the total of purchased cloud providers by the customer) for every customer whose name contains the letter “e” and the birthdate day is even number.

2.	Display server name and Total Price (obtained from the sum of server price, operating system price, and database price with “Rp” added at  the front, then replacing “.00” with “,-”, for every server with memory more than 2 and database storage more than 1.

3.	Display Initial (obtained from the first letter from the first word of customer name and first letter from the second word of customer name), Database Price (obtained from the total of all databases price which was purchased by the customer), and Transaction Count (obtained from the total of transactions made by the customer) for every database with storage more than 2 and the customer gender is female.

4.	Display Cloud Company (obtained from the first word of cloud provider name and “ Company” added at the end), Total Transaction (obtained from the total of transactions which include the cloud provider), and Customer Average Account Balance (obtained from the average of customer account balance) for every cloud provider name which contains the word “Cloud” and Total Transaction more than 1.

5.	Display Server Initial (obtained from the first five letters of server name, combined with “-“, and combined with the last three letters of server ID in uppercased form), processor name, and server storage for every server storage that is more than maximum storage of all databases and processor cores at least 4.
6.	Display DBMS software name, database price, database storage with “GB” added at the back, and DBMS software website URL with “https://” removed for every database with price above the average price of all servers and DBMS software name contains “DB”.

7.	Display Server Code (obtained from the first five letters of server name, combined with “-“, combined with the last two letters of server ID, combined with “-“, and combined with database storage, all in uppercase), Storage (obtained from database storage with “GB” added at the end), and Price (obtained from database price with “Rp” added at the front) for every server with price above the maximum price from all operating systems, and server storage above the average storage of all databases.

8.	Display Database Code (obtained from the last three letters from database ID, combined with “-“, combined with the last three letters from DBMS software ID, combined with “-“, and combined with database storage with “GB” added at the end) for every database with price between the minimum price of all servers and the average price of all operating systems, and DBMS software ID either “DS006” or “DS007”.

9.	Create a view named as “Affordable Server View” to display server name, processor name, operating system name, and server memory with “GB” added at the end for every server with price is between the cheapest price of all servers and average price of all servers, and memory is at least 4.

10.	Create a view named as “Popular Cheap Databases View” to display database name, website URL, and storage with “GB” added at the end, and Transaction Count (obtained from the total of transactions which include the database) for every database with price equals or below the average price of all databases and Transaction Count more than 2.
