use classicmodels;
select * from customers;
select * from employees;
select * from offices;
select * from orderdetails;
select * from orders;
select * from payments;
select * from productlines;
select * from products;
SELECT c.customername
FROM customers c
JOIN (
    SELECT customerNumber, COUNT(*) AS order_count
    FROM orders
    GROUP BY customerNumber
    ORDER BY customerNumber DESC
    LIMIT 1
) o ON c.customerNumber = o.customerNumber;
