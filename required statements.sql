
/*SELECT statements 
1) SELECT Name FROM Client;
2) DECLARE @Book_Price INT;
   SET  @Book_Price = ( SELECT MAX(BookPrice) FROM Books);
   PRINT 'The most expensive value of a book equals ' + CAST(@Book_Price AS VARCHAR(10));
3) DECLARE @Min_Book_Price INT;
   SET  @Min_Book_Price = ( SELECT MIN(BookPrice) FROM Books);
   PRINT 'The cheapest value of a book equals ' + CAST(@Min_Book_Price AS VARCHAR(10));
4) ANS: SELECT SUM(BookProfit) FROM SoldBooks;
5) SELECT SUM(BookProfit)/SUM(NoOfSoldBooks) FROM SoldBooks ;
6) SELECT SUM([Number of Books]) FROM ClientBooks WHERE ClientID = 1;
7) SELECT CURRENT_TIMESTAMP;
8) SELECT Name +' the phone number is '+Phone as [clients data] FROM Client;
9) SELECT AVG(NoOfSoldBooks) FROM SoldBooks;
10) SELECT REPLACE(Name ,'Morkos','Khamis') FROM Client;
11) SELECT * FROM Client;
12) SELECT SYSTEM_USER;
13) SELECT BookPrice FROM Books WHERE ID =6; 
14) SELECT CONCAT(BookName ,' it is price is ',BookPrice) AS [Books Prices] FROM Books;
15) SELECT SUM(NoOfSoldBooks) FROM SoldBooks;
16) SELECT TOP 5 BookName,BookPrice FROM Books ORDER BY BookPrice DESC;
17) SELECT TOP 5 BookName,BookPrice FROM Books ORDER BY BookPrice;
18) SELECT COUNT(BookName) FROM Books WHERE AuthorID=1;
19) SELECT BookName, BookCatogery FROM Books WHERE BookCatogery = 'Novel'; 
20) SELECT BookName, Year FROM Books WHERE Year BETWEEN 1970 AND 2020;
*/

/*SubQuery Statements
1) SELECT Name FROM Client WHERE ID IN  (SELECT ClientID FROM ClientBooks WHERE BookID = 1);
2) SELECT BookName FROM Books WHERE ID IN (SELECT BookID FROM ClientBooks WHERE ClientID = 1);
3) SELECT AuthorName FROM Author WHERE ID IN (SELECT AuthorID FROM Books WHERE BookName = 'A Sparrow from the East');
*/

/*Select Statements using Count and Group Functions
1) SELECT BookID , SUM([Number of Books]) FROM ClientBooks GROUP BY BookID;
2) SELECT BookCatogery,COUNT(BookName) FROM Books GROUP BY [BookCatogery];
3) SELECT AuthorID,COUNT(BookName) FROM Books GROUP BY AuthorID;
*/


/* Select Statements using Different Joins:
1) SELECT Books.BookName, Books.BookPrice, Books.BookCatogery, Author.AuthorName, Books.ISBN
   FROM     Author INNER JOIN
                  Books ON Author.ID = Books.AuthorID;

2) SELECT Author.AuthorName, COUNT(Books.BookName) AS [Number of Written Books]
   FROM     Author full JOIN
                  Books ON Author.ID = Books.AuthorID
   GROUP BY Author.AuthorName;

3) SELECT Client.Name, Client.Phone, Books.BookName, ClientBooks.[Number of Books], Books.BookPrice
   FROM     dbo.Client INNER JOIN
                  ClientBooks ON Client.ID = dbo.ClientBooks.ClientID INNER JOIN
                  Books ON ClientBooks.BookID = Books.ID

4) SELECT Client.Name, SUM(ClientBooks.[Number of Books]) AS [Number of Books]
   FROM     Client INNER JOIN
                  ClientBooks ON Client.ID = ClientBooks.ClientID INNER JOIN
                  Books ON ClientBooks.BookID = Books.ID
   GROUP BY Client.Name

5) SELECT TOP (1) PERCENT Client.Name, Client.Phone, Client.Address, ClientBooks.[Number of Books]
   FROM     Client INNER JOIN
                  ClientBooks ON Client.ID = ClientBooks.ClientID INNER JOIN
                  Books ON ClientBooks.BookID = Books.ID
   ORDER BY ClientBooks.[Number of Books] DESC ;
*/
/*INSERT Statement
INSERT INTO Author VALUES ('Agatha Christie');
INSERT INTO Books VALUES ('77-1325-465-80',1935,'Murder on the Orient Express',140,'Crime',6);
INSERT INTO Client VALUES ('John Peter','01245678950','john@yahoo.com','Alex,AL_Bitach');
INSERT INTO ClientBooks VALUES (6,23,1);
INSERT INTO SoldBooks VALUES(23,1,140);
*/

/* UPDATE Statements
UPDATE Author SET AuthorName = 'Agatha Mary Clarissa Christie' WHERE ID = 6;
UPDATE Books SET  BookPrice = 150 WHERE ID = 23;
UPDATE Client SET Name = 'John Micheal' WHERE ID = 6;
UPDATE ClientBooks SET [Number of Books] = 2 WHERE ClientID = 6;
UPDATE SoldBooks SET BookProfit = 2*150 WHERE BookID = 23;
UPDATE SoldBooks SET NoOfSoldBooks = 2 WHERE BookID = 23;
*/

/*DELETE Statements
DELETE SoldBooks WHERE BookID = 23;
DELETE ClientBooks WHERE ClientID = 6;
DELETE Client WHERE ID = 6;
DELETE Books  WHERE ID = 23;
DELETE Author WHERE ID = 6;
*/