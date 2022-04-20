drop table if exists Items;
drop table if exists Categories;
drop table if exists Bids;
drop table if exists Bidders;
drop table if exists Sellers;


-- Create Item Table
create table Items 
(
    ItemID INT NOT NULL UNIQUE, 
    ItemName VARCHAR(256),
    Currently DOUBLE NOT NULL, 
    Buy_Price DOUBLE, 
    First_Bid DOUBLE NOT NULL, 
    Number_of_Bids INT NOT NULL, 
    Started datetime NOT NULL, 
    Ends datetime NOT NULL, 
    UserID int NOT NULL, 
    ItemDescription VARCHAR(1000) NOT NULL, 
    PRIMARY KEY (ItemID)
);

-- Create Category Table 
create table Categories 
(
    ItemID INT NOT NULL, 
    Category VARCHAR(256) NOT NULL, 
    PRIMARY KEY (ItemID, Category),     
    FOREIGN KEY(ItemID) references Items
);

-- Create Bid Table 
create table Bids
(
    ItemID INT NOT NULL, 
    UserID INT NOT NULL, 
    Amount DOUBLE NOT NULL, 
    bidTime datetime NOT NULL, 
    PRIMARY KEY(ItemID, UserID, Amount), 
    FOREIGN KEY(ItemID) references Items
);

-- Create Bidder Table
create table Bidders
(
    UserID VARCHAR(256) NOT NULL UNIQUE,
    Rating INT NOT NULL,
    Country VARCHAR(256),
    Location VARCHAR(256),
    PRIMARY KEY(UserID)
);

-- Create Seller Table
create table Sellers
(
    UserID VARCHAR(256) NOT NULL UNIQUE,
    Rating INT NOT NULL,
    Country VARCHAR(256) NOT NULL,
    Location VARCHAR(256) NOT NULL,
    PRIMARY KEY(UserID), 
    FOREIGN KEY(UserID) references Bidders
);