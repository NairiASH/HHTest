CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories VALUES (1, 'Food'), (2, 'Furniture'), (3, 'Clothes'), (4, 'Painting');

CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products VALUES (1, 'Apple'), (2, 'Chair'), (3, 'Jeans'), (4, 'Brush');

CREATE TABLE ProductCategories (
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	ProductId INT FOREIGN KEY REFERENCES Products(Id),	
	PRIMARY KEY (ProductId, CategoryId)
);

INSERT INTO ProductCategories VALUES (1, 1), (2, 2), (3, 3), (4,4);

SELECT P."Name", C."Name" FROM Products P
LEFT JOIN ProductCategories PC
	ON P.Id = PC.ProductId
LEFT JOIN Categories C
	ON PC.CategoryId = C.Id;