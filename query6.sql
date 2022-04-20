-- Find the number of users who are both sellers and bidders
SELECT COUNT(*) from Sellers 
INNER JOIN Bidders ON Sellers.UserID = Bidders.UserID