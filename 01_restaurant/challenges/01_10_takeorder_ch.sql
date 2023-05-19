-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
SELECT CustomerID FROM Customers WHERE FirstName = 'Loretta' AND LastName = 'Hundey';

INSERT INTO Orders(CustomerID, OrderDate) VALUES(70, '2022-09-20 14:00:00');

SELECT * FROM Orders WHERE CustomerID = 70 AND OrderDate = '2022-09-20 14:00:00';

SELECT DishID FROM Dishes WHERE Name = 'House Salad' OR 
                                Name = 'Mini Cheeseburgers' OR 
                                Name = 'Tropical Blue Smoothie';

SELECT SUM(Price) FROM Dishes WHERE DishID = 4 OR DishID = 7 OR DishID = 20;

INSERT INTO OrdersDishes (OrderID, DishID) VALUES (1001, 4), (1001, 7), (1001, 20);

SELECT * FROM OrdersDishes WHERE OrderID = 1001;
