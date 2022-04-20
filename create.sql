drop table if exists Items;
drop table if exists Categories;
drop table if exists Bids;
drop table if exists Bidders;
drop table if exists Sellers;


-- Creates Item Table: Does not have every column added yet, still need to add more 
create table Items 
(
    ItemID INT NOT NULL UNIQUE, 
    ItemName VARCHAR(256),
    Currently DOUBLE, 
    BuyPrice DOUBLE, 
    FirstBid DOUBLE NOT NULL, 
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
    PRIMARY KEY (CategoryID),     
    FOREIGN KEY(ItemID) references Items
);

-- add Bid Table 
create table Bids
(
    BidID VARCHAR(256) NOT NULL UNIQUE, 
    ItemID INT NOT NULL, 
    UserID INT NOT NULL, 
    Amount DOUBLE NOT NULL, 
    bidTime datetime NOT NULL, 
    PRIMARY KEY(BidID), 
    FOREIGN KEY(ItemID) references Items
);

-- add Bidder Table
create table Bidders
(
    UserID VARCHAR(256) NOT NULL UNIQUE,
    Rating INT NOT NULL,
    Country VARCHAR(256),
    Location VARCHAR(256),
    PRIMARY KEY(UserID)
);

-- add Seller Table
create table Sellers
(
    UserID VARCHAR(256) NOT NULL UNIQUE,
    Rating INT NOT NULL,
    Country VARCHAR(256) NOT NULL,
    Location VARCHAR(256) NOT NULL,
    PRIMARY KEY(UserID), 
    FOREIGN KEY(UserID) references Bidders
);