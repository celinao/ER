drop table if exists Item; 
drop table if exists Categories; 

-- Creates Item Table: Does not have every column added yet, still need to add more 
create table Item 
(
    ItemID INT NOT NULL UNIQUE, 
    ItemName VARCHAR(256),
    Currently DOUBLE, 
    BuyPrice DOUBLE, 
    FirstBid DOUBLE, 
    NumberOfBids INT, 
    StartTime datetime, 
    EndTime datetime, 
    UserID int, 
    ItemDescription VARCHAR(1000), 
    PRIMARY KEY (ItemID)
);

-- add Category Table 
create table Categories 
(
    CategoryID VARCHAR(256) NOT NULL UNIQUE, 
    ItemID INT NOT NULL, 
    Category VARCHAR(256) NOT NULL, 
    PRIMARY KEY (CategoryID)
);



-- add Person Table

-- add Bid Table 