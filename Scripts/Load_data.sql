//create file format for the stage
CREATE OR REPLACE FILE FORMAT Myformat_CSV
TYPE = CSV 
SKIP_HEADER = 1
FIELD_DELIMITER = ','
FIELD_OPTIONALLY_ENCLOSED_BY = '"';

SHOW FILE FORMATS;


//create internal stage for file staging
CREATE STAGE snowflake_data_load.myschema.Mystage
FILE_FORMAT = (FORMAT_NAME = 'Myformat_CSV');

LIST @snowflake_data_load.myschema.Mystage;

//validate the data from stages before loading into table
SELECT
$1 AS ID,
$2 AS ustomer_Name,
$3 AS Email,
$4 AS Phone,
$5 AS City,
$6 AS Country,
$7 AS Signup_date
FROM @snowflake_data_load.myschema.Mystage/mydata/Customer_data.csv 
(FILE_FORMAT => 'Myformat_CSV');

SELECT 
$1 AS Order_id,
$2 AS Customer_id,
$3 AS Order_date,
$4 AS Product,
$5 AS Quantity,
$6 AS Price,
$7 AS Total_amount
FROM @snowflake_data_load.myschema.Mystage/mydata/order_data.csv


//load the data from stages into table
COPY INTO snowflake_data_load.myschema.Customer
FROM @snowflake_data_load.myschema.Mystage/mydata/Customer_data.csv
FILE_FORMAT = (FORMAT_NAME = 'Myformat_CSV');


COPY INTO snowflake_data_load.myschema.Orders
FROM @snowflake_data_load.myschema.Mystage/mydata/order_data.csv
FILE_FORMAT = (FORMAT_NAME = 'Myformat_CSV');

select * from snowflake_data_load.myschema.Orders;

select * from snowflake_data_load.myschema.Customer;
