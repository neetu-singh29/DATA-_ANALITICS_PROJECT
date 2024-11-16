Create database RetailSalesData;
use RetailSalesData;

 Create table Sales_Data_transactions (
 customer_id varchar(255),
 trans_date varchar(255),
 Tran_amount int);

drop  table Sales_Data_transactions;

 Create table Sales_Data_Response (
 customer_id varchar(255) primary key,
 response int);
 
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_transactions.csv'
into table Sales_Data_transactions
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;
 
-- select * from Sales_Data_transactions limit 10;
 explain select * from Sales_Data_transactions where customer_id = 'cs5295';
 
 create index idx_id on Sales_Data_transactions(customer_id);
 