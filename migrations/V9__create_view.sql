CREATE VIEW UserSummaryView AS
SELECT
    U.user_id,
    U.username,
    E.expense_id,
    E.expense_category,
    E.spend_date AS expense_date,
    E.amount_spended AS expense_amount,
    B.budget_id,
    B.amount AS budget_amount,
    B.start_date AS budget_start_date,
    B.end_date AS budget_end_date
FROM
    [User] U
JOIN
    Expense E ON U.user_id = E.user_id
LEFT JOIN
    Budget B ON U.user_id = B.user_id;
