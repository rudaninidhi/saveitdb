USE dbsaveit;
--User table
CREATE TABLE [User] (
   user_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   user_name VARCHAR(50) NOT NULL,
   email_id VARCHAR(50) NOT NULL,
   mobile_no VARCHAR(15) NOT NULL,
   password VARCHAR(50) NOT NULL,
);
 
 
---Expense table
CREATE TABLE Expense (
   expense_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   expense_category VARCHAR(50) NOT NULL,
   spend_date DATE NOT NULL,
   amount_spended DECIMAL(18,2) NOT NULL,
   user_id INT FOREIGN KEY REFERENCES [User](user_id)
);
 
 
--Income table
CREATE TABLE Income (
   income_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   income_source VARCHAR(50),
   income DECIMAL(18,2) NOT NULL,
   income_date DATE NOT NULL,
   user_id INT FOREIGN KEY REFERENCES [User](user_id)
);
 
 
--Budget table
CREATE TABLE Budget (
   budget_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   amount DECIMAL(18,2) NOT NULL,
   start_date DATE NOT NULL,
   end_date DATE NOT NULL,
   description VARCHAR(255),
   user_id INT FOREIGN KEY REFERENCES [User](user_id)
);
 
 
--Goal table
CREATE TABLE Goal (
   goal_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   goal_for VARCHAR(50) NOT NULL,
   target_amount DECIMAL(18,2),
   desired_date DATE NOT NULL,
   saved_already DECIMAL(18,2) NOT NULL,
   user_id INT FOREIGN KEY REFERENCES [User](user_id)
);
 
 
 
--reminder table
CREATE TABLE Reminder (
   reminder_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
   remind_for VARCHAR(50) NOT NULL,
   description VARCHAR(255),
   remind_date DATE NOT NULL,
   due_date DATE NOT NULL,
   user_id INT FOREIGN KEY REFERENCES [User](user_id)
);
 