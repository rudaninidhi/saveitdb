CREATE PROCEDURE dbo.uspInsertExpense
@expense_category varchar(225),
   @spend_date date ,
    @amount_spended decimal(18,2),
    @user_id int
AS
  INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
  VALUES (@expense_category,@spend_date,@amount_spended,@user_id)
RETURN 0
 