drop table if exists Item; 

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

-- create table Item 
-- (
--     ItemID INT NOT NULL UNIQUE, 
--     ItemName VARCHAR(256) NOT NULL,
--     Currently DOUBLE NOT NULL, 
--     BuyPrice DOUBLE, 
--     FirstBid DOUBLE NOT NULL, 
--     NumberOfBids INT NOT NULL, 
--     StartTime datetime not null, 
--     EndTime datetime not null, 
--     UserID int NOT NULL, 
--     ItemDescription VARCHAR(1000) NOT NULL, 
--     PRIMARY KEY (ItemID)
-- );

-- add Person Table

-- add Bid Table 

-- add Category Table 