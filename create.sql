drop table if exists Item; 

create table Item 
(
    ItemID INT NOT NULL UNIQUE, 
    ItemName VARCHAR(255) NOT NULL,
    Currently DOUBLE NOT NULL, 
    PRIMARY KEY (ItemID)
);