select COUNT(*) from (
    select * from Categories
    GROUP BY ItemID 
    HAVING COUNT(ItemID) = 4
)
