//transforming the data
CREATE OR REPLACE TABLE snowflake_data_load.myschema.Customer_orders AS
SELECT 
    c.Id AS customer_id,
    c.Customer_name,
    c.Email,
    o.Order_id,
    o.Product,
    o.Quantity,
    o.Total_amount
FROM snowflake_data_load.myschema.Customer c
JOIN snowflake_data_load.myschema.Orders o
    ON c.Id = o.Customer_id;

    select * from snowflake_data_load.myschema.Customer_orders;

//query the table customer_orders (final) table
SELECT Customer_name,Email,Product,SUM(Total_amount) AS Total_spent
FROM snowflake_data_load.myschema.Customer_orders
GROUP BY Customer_name,Email,Product
ORDER BY Total_spent DESC;

