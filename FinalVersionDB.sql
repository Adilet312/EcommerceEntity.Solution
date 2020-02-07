DROP  DATABASE IF EXISTS Ecommerce;
CREATE DATABASE Ecommerce;
USE Ecommerce;
/*Create three tables two tables joined via linking table*/
/*Create Products table */
CREATE TABLE Products(
			 ProductId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			`Name` VARCHAR(255) NOT NULL,
            `Description` VARCHAR(1000) NOT NULL,
             Price DOUBLE NOT NULL,
             Sku VARCHAR(250) NOT NULL,
             ProductImage VARCHAR(250) NOT NULL
);
CREATE INDEX IX_Products_Name ON Products (`Name`);
/*Order*/
CREATE TABLE Orders(
			 OrderId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			`Date` DATETIME NOT NULL
);
CREATE INDEX IX_Orders_Date ON Orders(`Date`);
/*Joining Table taht joins two tables such as Product and Orders*/
CREATE TABLE OrderProduct(
			 OrderProductId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			 ProductId INT NOT NULL,
             OrderId INT NOT NULL,
             CONSTRAINT fk_Products_ProductId FOREIGN KEY (ProductId) REFERENCES Products(ProductId) ON DELETE CASCADE,
             CONSTRAINT fk_Orders_OrderId FOREIGN KEY (OrderId) REFERENCES Orders(OrderId) ON DELETE CASCADE
             
);
CREATE INDEX IX_OrderProduct_OrderProductId ON OrderProduct(OrderProductId);

/*Populate DataBase with data*/
/*There are four different products*/
INSERT INTO Products
			VALUES
					 (1, "Gortex Backpack","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.", 57, "187420-1217", "https://picsum.photos/200" ),
					 (2,  "Tent","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.", 129,"187420-1217","https://picsum.photos/200" ),
					 (3, "Boots", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  199,  "187420-1217","https://picsum.photos/200" ),
                     (4, "Sleeping Bag", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.", 99, "187420-1217",  "https://picsum.photos/200" ),
                     (5, "Gortex Backpack",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  57,  "187420-1217",  "https://picsum.photos/200" ),
                     (6, "Tent",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  129, "187420-1217",  "https://picsum.photos/200" ),
                     (7, "Boots",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  199,  "187420-1217",  "https://picsum.photos/200" ),
                     (8,  "Sleeping Bag",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  99,  "187420-1217",  "https://picsum.photos/200" ),
                     (9,  "Gortex Backpack",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  57,  "187420-1217",  "https://picsum.photos/200" ),
                     (10,  "Tent",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  129, "187420-1217", "https://picsum.photos/200" ),
                     (11, "Boots", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  199,  "187420-1217",  "https://picsum.photos/200" ),
                     (12,  "Sleeping Bag",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.", 99, "187420-1217", "https://picsum.photos/200" ),
					 (13,  "Gortex Backpack", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.",  57, "187420-1217", "https://picsum.photos/200" ),
					 (14,  "Tent",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.", 129, "187420-1217",  "https://picsum.photos/200" ),
                     (15,  "Boots",  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non odio euismod lacinia at. Consequat interdum varius sit amet mattis vulputate enim nulla. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Lorem mollis aliquam ut porttitor leo a. Nibh tellus molestie nunc non. Urna cursus eget nunc scelerisque. Nullam vehicula ipsum a arcu cursus vitae congue. Facilisis sed odio morbi quis commodo odio aenean. Orci ac auctor augue mauris.", 199, "187420-1217", "https://picsum.photos/200" );


-- -- /*Lets make query to check our relationship*/
-- -- /*Print all product's name and price   based on order #2*/
-- -- SELECT Products.`Name`,Price FROM Products 
-- -- 					RIGHT JOIN OrderProduct Using(ProductId)
-- --                     RIGHT JOIN Orders Using(OrderId)
-- --                     WHERE OrderId=2;
-- -- /*Print all orders for specific product(Sumsung)*/
-- -- SELECT `Name`,Price,`Date` FROM Products 
-- -- 						   JOIN OrderProduct Using(ProductId)
-- -- 						   JOIN Orders Using(OrderId)
-- -- 						   WHERE `Name`='Sumsung';
-- --             
-- -- 
SELECT* FROM OrderProduct;
Select* from Orders;
SELECT* FROM Products;
-- DELETE FROM Products
-- WHERE ProductId>4;
DELETE FROM Orders
 WHERE OrderId>0;		
