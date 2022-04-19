--  Find the number of categories that include at least one item with a bid of more than $100.
SELECT COUNT(DISTINCT Category) FROM Items 
LEFT Join Categories ON Categories.ItemID = Items.ItemID 
WHERE Currently > 100 AND NumberOfBids > 0