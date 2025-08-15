//set the context
//set the role
use role sysadmin;

//set the warehouse
use warehouse compute_wh;

//create database and schema

create database snowflake_data_load;
create schema snowflake_data_load.myschema;


//create tables
CREATE OR REPLACE table snowflake_data_load.myschema.Customer(
Id INTEGER,
Customer_name STRING,
Email VARCHAR,
Phone VARCHAR,
City STRING,
Country VARCHAR,
Signup_date DATE
);

CREATE OR REPLACE table snowflake_data_load.myschema.Orders(
Order_id INTEGER,
Customer_id INTEGER,
Order_date DATE,
Product VARCHAR,
Quantity INTEGER,
Price DOUBLE,
Total_amount DOUBLE
);




