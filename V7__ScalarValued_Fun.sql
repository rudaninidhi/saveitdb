CREATE FUNCTION GetTotalExpense(@user_id INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
DECLARE @totalExpense DECIMAL(18,2);
SELECT @totalExpense = SUM(amount_spended)
FROM Expense
WHERE user_id = @user_id;
RETURN ISNULL(@totalExpense, 0);
END;
GO

CREATE FUNCTION GetTotalIncome(@userId INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
   DECLARE @totalIncome DECIMAL(18,2);
   
   SELECT @totalIncome = SUM(income)
   FROM Income
   WHERE user_id = @userId;
 
   RETURN ISNULL(@totalIncome, 0);
END;
GO