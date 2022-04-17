drop table if exists Item; 

-- Creates Item Table: Does not have every column added yet, still need to add more 
create table Item 
(
    ItemID INT NOT NULL UNIQUE, 
    ItemName VARCHAR(255) NOT NULL,
    Currently DOUBLE NOT NULL, 
    PRIMARY KEY (ItemID)
);

-- add Person Table

-- add Bid Table 

-- add Category Table 