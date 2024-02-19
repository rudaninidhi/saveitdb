-- Insert sample data into User table
INSERT INTO [User] (user_name, email_id, mobile_no, password)
VALUES
('Oliver Taylor', 'oliver@example.com', '3334445555', 'securepass'),
('Emma Johnson', 'emma@example.com', '9998887777', 'password123'),
('Sophie Anderson', 'sophie@example.com', '5551112222', 'securepass'),
('Bob Williams', 'bob@example.com', '1112223333', 'securepass'),
('Eva Davis', 'eva@example.com', '4445556666', 'eva123'),
('Michael Jackson', 'michael@example.com', '7778889999', 'thriller'),
('John Doe', 'john@example.com', '1234567890', 'password123'),
('Jane Smith', 'jane@example.com', '9876543210', 'pass123'),
('Alice Johnson', 'alice@example.com', '5555555555', 'securepwd');
 
 -- Insert sample data into Expense table for user 5
 
INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
 
VALUES  
 
('Travel', '2024-02-15', 200.00, 5),
 
('Entertainment', '2024-02-14', 30.75, 5),
 
('Clothing', '2024-02-13', 80.50, 5),
 
('Groceries', '2024-02-12', 60.25, 5),
 
('Home Decor', '2024-02-11', 100.00, 5);

 
-- Insert sample data into Expense table for user 5
 
INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
 
VALUES  
 
('Travel', '2024-02-15', 200.00, 5),
 
('Entertainment', '2024-02-14', 30.75, 5),
 
('Clothing', '2024-02-13', 80.50, 5),
 
('Groceries', '2024-02-12', 60.25, 5),
 
('Home Decor', '2024-02-11', 100.00, 5);
 
 
 
-- Insert sample data into Expense table for user 4
 
INSERT INTO Expense (expense_category,spend_date, amount_spended, user_id)
 
VALUES  
 
('Electronics', '2024-02-15', 120.00, 4),
 
('Fitness', '2024-02-14', 45.75, 4),
 
('Books', '2024-02-13', 25.50, 4),
 
('Dining out', '2024-02-12', 90.25, 4),
 
('Home Improvement', '2024-02-11', 150.00, 4);
 
 
 
-- Insert sample data into Expense table for user 3
 
INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES  
 
('Clothing', '2024-02-15', 75.50, 3),
 
('Home Decor', '2024-02-14', 40.25, 3),
 
('Gadgets', '2024-02-13', 120.75, 3),
 
('Hobbies', '2024-02-12', 60.00, 3),
 
('Vacation', '2024-02-11', 500.00, 3);
 
 
 
 
-- Insert sample data into Expense table for user 2
 
INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES  
 
('Transportation', '2024-02-15', 30.00, 2),
 
('Books', '2024-02-14', 15.75, 2),
 
('Electronics', '2024-02-13', 200.50, 2),
 
('Fitness', '2024-02-12', 50.25, 2),
 
('Travel', '2024-02-11', 300.00, 2);
 
 
 
-- Insert sample data into Expense table for user 1
 
INSERT INTO Expense (expense_category, spend_date, amount_spended, user_id)
 
VALUES
('Groceries', '2024-02-15', 50.00, 1),
 
('Entertainment', '2024-02-14', 25.50, 1),
 
('Utilities', '2024-02-13', 100.00, 1),
 
('Dining out', '2024-02-12', 75.25, 1),
 
('Shopping', '2024-02-11', 120.50, 1);


-- Insert sample data into Income table for user 5
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Freelance Design', 800.00, '2024-02-15', 5),
('Dividend Investments', 150.25, '2024-02-14', 5),
('Programming Projects', 600.50, '2024-02-13', 5),
('E-commerce Sales', 350.75, '2024-02-12', 5),
('Real Estate Rental', 1200.00, '2024-02-11', 5);
 
 
-- Insert sample data into Income table for user 4
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Business Sales', 1200.00, '2024-02-15', 4),
('Investment Returns', 300.25, '2024-02-14', 4),
('Consultancy Income', 500.50, '2024-02-13', 4),
('Freelance Writing', 200.75, '2024-02-12', 4),
('Online Courses', 1000.00, '2024-02-11', 4);
 
 
-- Insert sample data into Income table for user 3
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Consulting Project', 1800.00, '2024-02-15', 3),
('Dividend Stocks', 250.75, '2024-02-14', 3),
('Online Freelancing', 700.50, '2024-02-13', 3),
('E-commerce Sales', 450.25, '2024-02-12', 3),
('Investment Gains', 1200.00, '2024-02-11', 3);
 
 
-- Insert sample data into Income table for user 2
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Part-time Job', 600.00, '2024-02-15', 2),
('Consulting Fees', 1500.25, '2024-02-14', 2),
('Stock Dividends', 200.50, '2024-02-13', 2),
('Online Sales', 400.75, '2024-02-12', 2),
('Tutoring', 300.00, '2024-02-11', 2);
 
 
-- Insert sample data into Income table for user 1
 
INSERT INTO Income (income_source, income, income_date, user_id)
VALUES
('Salary', 5000.00, '2024-02-15', 1),
('Freelance Work', 1200.50, '2024-02-14', 2),
('Investment Dividends', 300.00, '2024-02-13', 3),
('Side Business', 800.75, '2024-02-12', 4),
('Rental Income', 1000.00, '2024-02-11', 5);

-- Insert sample data into Budget table for user 5
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 1500.00, '2024-02-01', '2024-02-28', 200.00, 5),
( 100.00, '2024-02-01', '2024-02-28', 10.00, 5),
( 50.00, '2024-02-01', '2024-02-28', 15.00, 5),
( 300.00, '2024-02-01', '2024-02-28', 40.00, 5),
( 75.00, '2024-02-01', '2024-02-28', 5.00, 5);
 
 
-- Insert sample data into Budget table for user 4
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 200.00, '2024-02-01', '2024-02-28', 30.00, 4),
(50.00, '2024-02-01', '2024-02-28', 5.00, 4),
(120.00, '2024-02-01', '2024-02-28', 15.00, 4),
( 80.00, '2024-02-01', '2024-02-28', 10.00, 4),
(150.00, '2024-02-01', '2024-02-28', 20.00, 4);
 
 
-- Insert sample data into Budget table for user 3
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
(150.00, '2024-02-01', '2024-02-28', 20.00, 3),
(300.00, '2024-02-01', '2024-02-28', 40.00, 3),
( 50.00, '2024-02-01', '2024-02-28', 10.00, 3),
( 100.00, '2024-02-01', '2024-02-28', 15.00, 3),
( 80.00, '2024-02-01', '2024-02-28', 25.00, 3);
 
 
-- Insert sample data into Budget table for user 2
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
( 1200.00, '2024-02-01', '2024-02-28', 100.00, 2),
( 100.00, '2024-02-01', '2024-02-28', 15.00, 2),
( 50.00, '2024-02-01', '2024-02-28', 10.00, 2),
(200.00, '2024-02-01', '2024-02-28', 25.00, 2),
( 75.00, '2024-02-01', '2024-02-28', 5.00, 2);
 
 
-- Insert sample data into Budget table for user 1
INSERT INTO Budget (amount, start_date, end_date, description, user_id)
VALUES
(300.00, '2024-02-01', '2024-02-28', 50.00, 1),
( 150.00, '2024-02-01', '2024-02-28', 20.00, 2),
( 200.00, '2024-02-01', '2024-02-28', 30.00, 3),
( 100.00, '2024-02-01', '2024-02-28', 15.00, 4),
( 250.00, '2024-02-01', '2024-02-28', 40.00, 5);