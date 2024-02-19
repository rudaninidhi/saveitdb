FINANCE AND BUDGETING APP:


Introduction:
Build a financial management application that helps users track expenses, set budgets, and generate financial reports. 



Requirements: 

A User should be able to login to our application and see a dashboard that outlines the following info: 
A user should add Expenses 
A page to review past expenses 
Status of a budget that's currently under review and if it needs to modify 
A page to set budget and goals 
A way to add reminders 
A user should search the categories 
*Once created goal then it should remind periodically and give notifications 
*When new budget is created , the status updates => "on dashboard"
Bonus Feature: Show offers of loan and investments according to budget/ or if user not created budget in this month then it will get data from  past expenses 
Once user cross the certain criteria, a notification regarding loan or investment plan should be sent to the user letting them know that what offers are available 

When out of budget => a notification will be sent to the user telling them they need to take a loan. Once they've claimed an offer , 
they can re-create a budget(perhaps prompt them to make sure they've pushed their changes)  

Once user claimed an offer, the status changes => "on dashboard"  (budget status) 
A user can modify the budget if  doesn't satisfy the budget criteria/ or if don't want to create the budget => it can automatically create budget for you according past expenses 

When a user did not create a budget, it will show notification => "need a budget??" 

Bonus Feature: if user adds reminder in goals => it will automatically add that amount to budget/Expense every month 
When user successfully created a budget , they will be able to add expenses  

Step 1 - Clone the repo:
LINK---

Step 2 - Deploy AWS Database:

Install the AWS CLI

Install Terraform

Create an IAM User with programmatic access on your AWS account, name this user 'terraform-user'

Once the IAM User is created, save your Access key ID and your Secret access Key.

On your AWS account create a user group, and add your terraform-user to your newly created group

Give your user group 'AdministratorAccess'

Create an AWS CLI Profile for you IAM USER on your local machine

Open a terminal on your machine
Type this into your terminal and press enter
 aws configure --profile terraform-user
Enter your AWS Access Key ID and Secret access Key when promted
Enter your region when promted, e.g: eu-west-1
Press enter when they ask for output format
AWS Access Key ID [NONE]: <enter your access key ID>
AWS Secret Access Key [NONE]: <enter your secret access key>
Default region name [NONE]: eu-west-1
Default output formate [NONE]: 
Open the cloned repo in VSCode

Open the Terraform folder in your terminal

Enter this command into your terminal

    terraform apply
Enter username and password when prompted

View your created database on AWS cloud







Flyway


Flyway is a tool that allows you to increase the reliability of deployments by versioning your database. It places changes to your database in version control so that it can be repeated in a new environment. This allows you to repeat deployments in different environments without being concerned about


Manual with Desktop client

Set up Database Connection
Install Flyway Desktop Client.
Make a redgate profile, and log in with it.
Make a new project
Assign a relevant project name and location
Select your database type (In our case SQL Server)
Set up a target database
Server: Your aws rds endpoint
Port: 1433
Database Name: Database name
Check "encrypt" and "trust server certificate"
Select the right type of authentication
For SQL Server, this is "SQL Server Authentication"
Use your database username and password
Test and save, which verifies a functional connection
Add new changes to database (migration)
Add a new migration (it will generate version)
Enter your database changes (Sql script)
Save and select "Run migrate"
Flyway (CI/CD pipeline)
Create a new folder in your project '.github'
Add a folder to it called 'workflows'
Copy the generalised workflow for a Flyway CI/CD pipeline
Configure this for your specific use case
Select a branch to run from
Modify the working directory to your migrations folder
Add your schema to the file (default dbo)
Add github repository secrets to your repository:
DB_BUILD_URL: Your jdbc connection string
DB_BUILD_USERNAME: database username
DB_BUILD_PASSWORD: database password
Add new migrations (as .sql scripts) to your folder and push them to the branch
You can view the progress of the github action on your online repository (the "actions") tab to verify that it ran successfully.



Team:
Nidhi Rudani
Chandni khan
