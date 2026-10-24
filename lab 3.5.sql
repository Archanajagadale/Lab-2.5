use bank;

select *from customer;
insert into customer value(101,"rahul","Sharma","rahul.sharma@gmail.com",9999999999,"1998-04-15"),
(102,"priya","Patil","priya@gmil.com",9988776655,"2000-09-20"),
(103,"Amit","Patel","Amit.patel@gmail.com",9876500001,"1995-06-18"),
(104,"Sneha","Joshi","Sneha.joshi@gmial.com",9876500002,"1997-09-12"),
(105,"Rohan","kulkarni","Rohan.k@gmail.com",9876500003,"1993-11-25");

Insert into loans value(301,500000,8.5,"2025-01-15","2030-01-15",101),
(302,300000,9.25,"2025-02-10","2028-02-10",102),
(303,750000,8.75,"2025-03-20","2032-03-20",103),
(304,250000,10,"2025-04-05","2029-04-05",104),
(305,1000000,7.95,"2025-05-2","2035-05-12",105);
Select *From loans;

Insert into transaction_table value (301,"2025-05-10",5000,"Deposit",201),
(302,"2025-05-11",2500,"Withdraw",202),
(303,"2025-05-12",10000,"Deposit",203),
(304,"2025-05-13",3000,"Withdraw",204),
(305,"2025-05-14",7000,"Deposit",205);
Select* from transaction_table;

insert into branches value(1,"Mumbai branch","Andheri,Mumbai",0221111111),
(2,"Pune branch","Shivajinagar, pune",02002222222),
(3,"Nashik branch","College road Nashik",0253222222),
(4,"Nagpur branch","Sitabuldi nagpur",0712333333),
(5,"navi Mumbai Branch","vashi,navi Mumbai",022444444);
Select *from branches;

Insert into account_table value(201,"savings",25000,101,default),
(202,"Current",40000,102,default),
(203,"Savings",35000,103,default),
(204,"Current",60000,104,default),
(205,"Savings",45000,105,default);
Select *From account_table;

Update customer
set phone ="88888888888"
Where customer_id=101;
select *from customer 
where customer_id=101;

Update customer 
set email ="Rahul_Sharma@gmail.com"
where customer_id=101;
Select *from customer;

Update account_table
Set balance=30000
where account_id=201;
Select *from account_table;

Delete from transaction_table
where transaction_id=302;
select*from Transaction_table;

Delete from account_table
where account_id =202;
select * from account_table;

-- Que 1
Select Account_id, account_type, balance from account_table;

-- Que2
Select * from account_table
where account_type = 'savings';

-- que 3
select * from account_table
where balance >25000 and account_type ='savings'

-- Que 4
Select * from transaction_table
where amount >=500 and amount <=20000;

Select * from transaction_table
where amount between 550 and 20000;

Select * from Transaction_table
where account_id between 202 and 204;

-- Que 5
select * from customer
where customer between 101 and 104;

Select *from customer 
where customer_id in (101,102,103,104);

select * from customer
where customer_id =101 or customer_id=102 or customer_id=103 or customer_id =104;

-- Que 6
select * from Account_table
where account_type ='current';

-- Que7
Select * from account_table
Where balance < 15000;

-- Que 8
select * from transaction_table
where amount between 1000 and 10000;

-- Que 9
Select * from customer 
where customer_id in (104,105);

-- retrieve customer records for customer_id from 102 and 105
-- find accounts with balance between 500 to 5000

Select * from customer 
where customer_id in (102,105);

select * from transaction_table
where amount between 500 and 5000;

-- 1. fetch loan record whose interest is greter than 9 and loan amount greater than 50000
select * from loans where intrest_rate >9 and Loan_amount>50000;

-- 2. fetch branch record where branch address is shivaji nagar pune
Select * from branches where branch_adress ='shivajinagar, Pune';

-- 3.find accounts with balance between 500 to 5000
Select * from Account_table where balance between 500 and 5000;

-- fetch the records where balance is less than 25000 and account type is savings.
Select * from account_table where balance >25000 and account_type ='savings';

-- Retrieve all records where  Interest Rate less than 8.50
select * from loans where intrest_rate <8.5;

-- Display customers born after 1 January 1998
Select * from customer where date_of_birth > '1998-01-01';

-- Display branches whose Branch_id is between 2 and 4.
Select * from branches where branch_id in (2,4);

-- Display only the branch name and branch phone number of all branches.
Select branch_name, branch_phone from branches;

--  fetch customer records with limit 2 offset 1
Select *from customer
limit 2 offset 1;

-- Retrieve all Deposit Transaction_Type 
Select * from transaction_table 
where transaction_type ='deposit';

--  skip first 2 transaction and select next 3 transaction
Select *from transaction_table
limit 2 offset 3;

-- display amount from transaction which amount is greater than 5000
select * from transaction_table
where amount >5000;

-- find account which account type is saving
Select * from account_table
where account_type ='savings';

-- Fetch TransactionDate between 11 ro 13
Select * from transaction_table 
where date in (11,13);

-- display branches in branchId 1 and 4
Select * from branches where branch_id in(1,4);

-- fetch the customer records whose customer name is rahul otherwise sneha
Select * from customer
where first_name ="rahul" OR first_name ="Sneha";

-- fetch the transactions record whose transactin ammount is greater than 3000 and transaction type is deposit 
Select * from transaction_table
where amount> 3000 and transaction_type= 'deposit';

-- Display Loan Records whose Loan Ends After 1 january 2029
select * from Loans
where end_date > "2029-01-01";

-- Display Loan amount is Greater than 300000 and skip first 2 records
Select * from Loans
Where Loan_Amount >300000
limit 100 offset 2;

