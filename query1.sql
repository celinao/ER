-- Find the number of users in the database 
select COUNT(*) from (
    select UserID from Bidders 
    union Select UserID from Sellers
)

