

--------------query to retrieve data from Customers table whose ContactTitle is Sales Manager----------

select *from Customers
where ContactTitle='Sales Manager';


------------------ query to retrieve data from Customers table whose ContactName starts with letter s----------

select * from customers
where ContactName like 's%';

----------------query to retrieve data from Customers table who lives in London, Paris, Madrid or San Francisco city.----

select * from Customers
where city='London'or city='Paris'or city='Madrid'or city='San Francisco';


-----------------query to retrieve data from Customers table for all those customers who do not have Fax number--------



select * from Customers
where Fax is NULL;

------------query to retrieve data from Customers table arranged in alphabetical order based on ContactName--------

select * from Customers
order by ContactName asc;



-------------------query to retrieve data from Products table to find how much total UnitsInStock you have from each Supplier. 
----------------------------Group the SupplierID and calculate the sum of corresponding UnitsInStock for each supplier.
----------------Further filter the data to display records where SupplierID range between 10 to 30.
select sum(UnitsInStock) AS UNITSTOCK,SupplierID from  Products
where SupplierId between 10 and 30
group by SupplierID

----query to retrieve data from Products table where UnitsInStock is greater than or equals to 10 and less than equals to 100--

SELECT ProductID, ProductName, UnitPrice, UnitsInStock,(UnitPrice*UnitsInStock) 
AS TotalAmount from Products;



-----------------------query to retrieve data from Products table where UnitsInStock is greater than or equals to 10 and 
-------------less than equals to 100

select * from Products
where UnitsInStock>=10 and UnitsInStock<=100;



------------ query to retrieve data from Products table for all products with ProductID range between 10 to 20.-----

select * from Products
where ProductID between 10 and 20;


---------------------query to retrieve data from Products table whose QuantityPerUnit is in bottles----

select * from Products 
where QuantityPerUnit like '%bottles';


