use bank;

Select * From Account_table;

-- Retrieve only the following details from the Accounts table: AccountID, AccountType, and Balance.
Select Account_id,Account_type,balance from account_table;

-- Retrieve Customers with Savings Accounts
Select * from account_table where Account_type="Savings";

-- Retrieve Accounts with Balance Greater Than 25000
Select * from Account_table where balance>25000;

-- Retrieve Transactions Between Specific Amounts 5000 -20000
Select * from transaction_table where amount between 5000 and 20000;

-- Retrieve Records for Selected Customers 101,102,103,104
Select * from customer where Customer_id in (101,102,103,104);

-- This displays customers whose names start with the letter R.
Select * from customer where first_name like "R%";

-- 1. Retrieve all current account records
Select * from account_table where account_type ="Current";

-- Find accounts with balance less than 15000
Select * from account_table where balance <15000;

--  Display transactions between 1000 and 10000
Select * from transaction_table where amount between 1000 and 10000;

-- 4. Retrieve customer records for CustomerID 104 and 105
Select * from customer where Customer_id in (104,105);

-- 5. Display customers whose last name starts with S
Select * from customer where first_name like "s%";
 
 
-- Display Customers in Alphabetical Order
Select * from customer order by First_name;

-- Display Accounts with Highest Balance First
Select * from account_table order by balance desc;

-- Retrieve Unique Account Types
Select distinct account_type as unique_account from account_table;

-- Display Top 3 Highest Balance Accounts
Select * from account_table order by balance desc
limit 3;

-- Skip Initial Records While Viewing Transactions
Select * from transaction_table limit 4 offset 1;

 -- Display customers sorted by LastName
 Select * from customer order by last_name asc;

--  Retrieve top 5 transactions with highest amount
Select * from transaction_table order by amount desc limit 5;

--  Display unique transaction types
Select distinct (Transaction_type) from transaction_table;

-- Skip the first 3 transaction records and display the next 4 records
Select * from transaction_table
limit 7 offset 3;
 
-- Find Customers Without Phone Numbers
Select * from customer where phone is null;

-- Find Customers Having Email Addresses
Select * from Customer where email is not null;

-- Find customers without email addresses
Select * from Customer where email is null;

--  Display all accounts where balance information is available
 Select * from account_table where balance is not null;
 
-- Search Customers Whose First Name Starts with “A”
Select * from customer where First_name like "A%";

-- Search Customers Whose Email Contains “gmail”
select * from customer where email like "%gmail%";

-- Search Customers Whose Last Name Ends with “kar”
select * from customer where Last_name like "%Kar";

--  Display customers whose first name starts with R
select * from customer where First_name like "R%";

--  Find customers whose email contains yahoo
Select * from Customer where email like "%yahoo%";

-- Display customers whose last name starts with P
Select * from Customer where Last_name like "P%";

-- Search customers whose phone number ends with 99
Select * from Customer where phone like "%99";  
 
-- The finance team wants to review only Savings and Current account holders.
Select * from account_table where account_type in ("Savings","Current");

-- The audit department wants to investigate only Deposit and Withdrawal transactions.
Select * from transaction_table where Transaction_type in ("Deposit","withdrawa");

-- The customer relationship team wants to review records for a specific set of customers. 101,102,105
Select * from customer where Customer_id in (101,102,105);
 
-- Display accounts belonging to Salary and Savings account types
Select * from Account_table where account_type ="savings" and Account_type ="Salary";
Select * from Account_table where account_type ="savings";

-- Retrieve transactions for Payment and Deposit categories
Select * from transaction_table where transaction_type ="Payment" and transaction_type ="Deposit";
Select * from transaction_table where transaction_type ="Deposit";

-- Display customer records for CustomerID 103 and 104
Select * from customer where customer_id in (103,104);

--  Retrieve selected account records using AccountID values
Select * from Account_table where account_id in (203,204);
 
-- Display Customers in Ascending Order of Last Name
Select * from customer order by Last_name;

-- Display Accounts with Highest Balance First
select * from account_table order by balance DESC;

-- Display Transactions Sorted by Transaction Date
Select * from Transaction_table order by Transaction_date;

-- Display customers sorted by FirstName
Select * from customer order by First_name;

-- Display accounts sorted by AccountType
Select * from account_table order by account_type;

-- Display transactions sorted by Amount in descending order
Select * from transaction_table order by Amount desc;

-- Display customers sorted by DateOfBirth
Select * from Customer order by date_of_birth;
 
-- Display Only Top 5 Highest Balance Accounts
Select * from account_table order by balance desc limit 5;

-- Display First 3 Customer Records
Select * from account_table limit 3;

-- Skip Initial Transaction Records 3 While Viewing Data record 2
Select * from transaction_table limit 5 offset 3;

 
-- Display top 3 transactions with highest amount
Select * from transaction_table order by amount desc limit 3;

-- Retrieve only 4 customer records
Select * from customer limit 4;

-- Skip first 2 account records and display next 3 records
Select * from account_table limit 5 offset 2;

-- Display top 5 latest transactions
Select * from transaction_table order by Transaction_date limit 5;
 
-- Display Savings Account Customers Sorted by Balance
Select * from account_table where account_type ="Savings"
order by balance;

-- Categorize Accounts Using Balance
-- Balance >50000 then premium account
-- Balance >2500 then standar account

Select Account_id,balance, case when balance>50000 then "premium account" when balance >2500 then "Standard account" End as category from account_table;
 
-- · High Transaction
-- · Medium Transaction
-- · Low Transaction
-- based on transaction amount.
Select * from transaction_table;
Select Transaction_id, Amount, case when Amount>7000 then "High" When Amount>5000 then "medium" when amount >1000 then "Low" END as category from transaction_table; 