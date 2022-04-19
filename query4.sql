-- Find the ID(s) of auction(s) with the highest current price.
SELECT ItemID from Items 
WHERE Currently = (
    SELECT MAX(Currently) from Items
)