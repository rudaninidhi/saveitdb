<h1>FINANCE AND BUDGETING APP:</h1>


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


<h2>Technology Used : </h2>
 
   <h3> 1. Terraform:   </h3>
            Used for RDS instance creation from Infrastructure as a Code.
<h3> 2. FlyWay:   </h3>
            Used For The Migration of The Database
 
    
<h3> 3. GitHub Actions:   </h3>
            Used For The CICD Pipeline.
 
 
<h2>Terraform</h2>


### Prerequisites
 
Before you begin, ensure you have the following tools installed:
 
- [Terraform](https://www.terraform.io/downloads.html)
 
 
<h2>1.  Initialize Terraform:</h2>
Run the following command to initialize Terraform:
 
bash
Copy code
terraform init
Create a main.tf File:
Create a main.tf file in your project directory and add the following content:
 
hcl
Copy code


## Getting Started
 
These instructions will help you get a copy of the project up and running on your local machine for development and testing purposes.

Step 1 - Clone the repo:
https://github.com/rudaninidhi/saveitdb.git

Step 2 - Deploy AWS Database:

Install the AWS CLI

Install Terraform


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



## Workflow Script
```yaml
name: flyway
on:
  push:
    branches:
      - main
jobs:
  deploy:
    runs-on: ubuntu-latest
    env:
      FLYWAY_USER: ${{ secrets.DB_BUILD_USERNAME }}
      FLYWAY_PASSWORD: ${{ secrets.DB_BUILD_PASSWORD }}
      FLYWAY_URL: ${{ secrets.DB_BUILD_URL }}
      FLYWAY_CLEAN_DISABLED: false
      FLYWAY_LOCATIONS: "filesystem:./migrations/"
      FLYWAY_CONFIG_FILES: "filesystem:./conf/flyway.toml"
    steps:
      - name: Checkout code
        uses: actions/checkout@v4
      - name: Setup Flyway CLI
        run: |
          sudo apt update
          sudo apt install -y default-jre
          wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/7.9.1/flyway-commandline-7.9.1-linux-x64.tar.gz | tar xvz
          sudo ln -s $(pwd)/flyway-7.9.1/flyway /usr/local/bin/flyway
      - name: Flyway Repair
        run: |
          flyway repair
 
      - name: Flyway Migrate
        run: |
          flyway migrate \
             -url="${FLYWAY_URL}" \
            -user="${FLYWAY_USER}" \
            -password="${FLYWAY_PASSWORD}" \
            -configFiles="${FLYWAY_CONFIG_FILES}"
```
## Workflow Steps
1. **Checkout code:** This step checks out the repository code.
2. **Setup Flyway CLI:** Installs the required dependencies and sets up Flyway CLI.
3. **Create Secrets in GitHub:**
   - Navigate to your GitHub repository.
   - Go to the "Settings" tab.
   - In the left sidebar, click on "Secrets."
   - Click on "New repository secret" and add the following secrets:
      - `DB_BUILD_USERNAME`: Your database username.
      - `DB_BUILD_PASSWORD`: Your database password.
      - `DB_BUILD_URL`: Your database URL.
4. **Flyway Repair:** Repairs the metadata table if necessary.
5. **Flyway Migrate:** Executes database migrations using Flyway.
## Conclusion
You now have a comprehensive setup covering KindnessKettle, AWS CloudFormation deployment, Flyway installation, and GitHub Actions for automating database migrations, with the added step of creating necessary secrets in GitHub Actions for secure storage of sensitive information.


Team:
Nidhi Rudani
Chandni khan
