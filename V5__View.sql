CREATE VIEW vwUserAndIncome AS
SELECT u.user_id, u.user_name, i.income
FROM [User] u
INNER JOIN Income i ON u.user_id = i.user_id;
 

