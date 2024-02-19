CREATE FUNCTION udfRemindMe(@user_id INT, @remindDate DATE)
RETURNS TABLE
AS
RETURN (
    SELECT remind_for, description
    FROM Reminder
    WHERE user_id = @user_id
      AND remind_date = @remindDate
);
