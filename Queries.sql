CREATE DATABASE Ecommerce_orders;
USE Ecommerce_orders;
SHOW TABLES;

CREATE TABLE ORDERS(
    OrderID VARCHAR(20),
    OrderDate VARCHAR(30),
    CustomerID VARCHAR(20),
    Product VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(100),
    PaymentMethod VARCHAR(30),
    OrderStatus VARCHAR(30),
    TrackingNumber VARCHAR(30),
    ItemsInCart INT,
    CouponCode VARCHAR(30),
    ReferralSource VARCHAR(30),
    TotalPrice DECIMAL(10,2),
    Month INT,
    Year INT
);


-- SELECT QUERY----

SELECT * FROM ORDERS;


-- WHERE QUERY --

SELECT * FROM ORDERS WHERE OrderStatus = 'Delivered';


-- ORDER BY --

SELECT OrderID, Product, unitprice
FROM ORDERS
ORDER BY UnitPrice Desc;


-- GROUP BY --

SELECT Product, ROUND(SUM(TotalPrice),2) AS Total_Revenue
FROM Orders
GROUP BY Product;


-- AGGREGATIONS (COUNT) --

SELECT COUNT(*) AS TOTAL_ORDERS
FROM ORDERS;


-- AGGREGATIONS (SUM) --

SELECT ROUND(SUM(TotalPrice),2) AS Total_Revenue
FROM ORDERS;



-- AGGREGATIONS (AVG) --

SELECT ROUND(AVG(TotalPrice),2) AS Average_Order_Value
FROM ORDERS;







