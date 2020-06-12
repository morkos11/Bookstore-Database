CREATE TABLE Author(

             ID INT PRIMARY KEY IDENTITY,
			 AuthorName VARCHAR(60) UNIQUE NOT NULL,
);
 INSERT INTO Author VALUES ('Naguib Mahfouz'),('Taha Hussein'),('Tawfiq al-Hakim'),('Alaa Al Aswany'),('Miral al-Tahawy');
 
CREATE TABLE Books(

             ID INT PRIMARY KEY IDENTITY,
			 ISBN VARCHAR(50) UNIQUE NOT NULL,
			 Year INT ,
			 BookName VARCHAR(60) NOT NULL,
			 BookPrice INT NOT NULL,
			 BookCatogery VARCHAR(50),
			 AuthorID INT NOT NULL REFERENCES Author(ID),
);

INSERT INTO Books VALUES ('97-0961-741-9',1959,'Children of Gebelawi',100,'Novel',1),
('97-0385-066-9',1956,'Palace Walk',75,'Novel',1),('96-8622-643-5',1957,'Palace of Desire',120,'Novel',1),('96-8918-368-0',1957,'Sugar Street',75,'Novel',1);
INSERT INTO Books VALUES ('98-7430-475-8',1929,'The Days',80,'Novel',2),('95-0541-558-3',1932,'An Egyptian Childhood: The Autobiography of Taha Hussein',150,'Autobiography',2),
('95-0377-661-9',1938,'The Future of Culture in Egypt',200,'Politics',2),('98-7926-668-4',1943,'The stream of days',150,'Novel',2);
INSERT INTO Books VALUES ('99-9058-452-4',1933,'The Return of the Spirit',120,'Novel',3),('99-9058-550-4',1973,'Fate of a Cockroach and Other Plays',180,'Novel',3),
('99-9051-277-9',1938,'A Sparrow from the East',70,'Novel',3),('99-9056-251-2',1940,'Al-Hakims Donkey',170,'Social',3);
INSERT INTO Books VALUES ('99-9056-064-1',2002,'The Yacoubian Building',120,'Novel',4),('99-9059-659-10',2007,'Chicago',250,'Novel',4),
('99-9055-149-9',2009,'Friendly Fire',95,'Novel',4),('99-9059-967-10',2020,'The Republic of False Truths',150,'Novel',4);
INSERT INTO Books VALUES ('95-9057-650-5',2011,'Brooklyn Heights',175,'Novel',5),('95-8171-645-9',2008,'Gazelle Tracks',150,'Novel',5),
('95-8411-768-8',2002,'Blue aubergine',125,'Novel',5),('95-8485-159-4',1996,'The tent',80,'Novel',5);

CREATE TABLE Client(
             
			 ID INT PRIMARY KEY IDENTITY,
			 Name VARCHAR(50) NOT NULL UNIQUE,
			 Phone VARCHAR(50) NOT NULL UNIQUE,
			 [E-mail] VARCHAR(50) UNIQUE,
			 Address VARCHAR(150),
);
INSERT INTO Client VALUES ('Morkos Shaaban','01275826843','morkos@gmail.com','Alex , K21'),
('Said Ahmed','01175826843','said@gmail.com','Alex , K21'),
('Salma Ahmed','01575826843','salma@gmail.com','Alex , Sidi_Bishr'),
('Ziad Ragab','01275826852','ziad@gmail.com','Alex , MohrmBih'),
('Sara Abd_Azim','01275826870','sara@gmail.com','Alex , AL_Dkhila');

CREATE TABLE ClientBooks(
             
			 ClientID INT NOT NULL REFERENCES Client(ID),
			 BookID INT NOT NULL REFERENCES Books(ID),
			 [Number of Books] INT NOT NULL,
);

INSERT INTO ClientBooks VALUES (1,1,2),(1,2,1),(1,8,1),(1,16,1);
INSERT INTO ClientBooks VALUES (2,20,5),(2,6,1),(2,15,9),(2,18,1),(2,1,3);
INSERT INTO ClientBooks VALUES (3,1,1),(3,14,1);
INSERT INTO ClientBooks VALUES (4,22,15);
INSERT INTO ClientBooks VALUES (5,1,1),(5,7,6),(5,17,2),(5,11,3);


CREATE TABLE SoldBooks(

             ID INT PRIMARY KEY IDENTITY,
			 BookID INT NOT NULL REFERENCES Books(ID),
			 NoOfSoldBooks INT ,
			 BookProfit INT ,
);





