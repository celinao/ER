-- Find the number of users from New York (i.e., users whose location is the string "New York")
select COUNT(*) from (
    select UserID, Location from Bidders
    union 
    select UserID, Location from Sellers
)
where Location = "New York"