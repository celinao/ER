-- Find the number of auctions belonging to exactly 4 categories
select COUNT(*) from (
    select * from Categories
    GROUP BY ItemID 
    HAVING COUNT(ItemID) = 4
)
