--  Find the number of categories that include at least one item with a bid of more than $100.
SELECT COUNT(DISTINCT Category) from (
    SELECT ItemID from Items 
    WHERE Currently > 100
) as HighItems
LEFT JOIN Categories on HighItems.ItemID = Categories.ItemID