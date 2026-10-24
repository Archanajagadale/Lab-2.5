CREATE TABLE t1 (
  TransactionID   INT PRIMARY KEY,
  CustomerName    VARCHAR(50),
  City            VARCHAR(30),
  TransactionType VARCHAR(20),
  Amount          INT,
  Mode            VARCHAR(10),
  TransactionDate DATE,
  Remarks         VARCHAR(20)
);

INSERT INTO t1 VALUES
(1,  'Amit Sharma',    'Pune',      'Deposit',    15000, 'UPI',  '2026-01-05', 'Salary'),
(2,  'Priya Patil',    'Mumbai',    'Withdrawal',  3000, 'Cash', '2026-01-12', NULL),
(3,  'Rahul Verma',    'Delhi',     'Transfer',    8500, 'NEFT', '2026-01-18', 'Rent'),
(4,  'Sneha Kulkarni', 'Pune',      'Deposit',     4500, 'Card', '2026-02-02', NULL),
(5,  'Arjun Singh',    'Nagpur',    'Withdrawal', 12000, 'Cash', '2026-02-09', 'ATM'),
(6,  'Neha Joshi',     'Mumbai',    'Deposit',    25000, 'NEFT', '2026-02-15', 'Bonus'),
(7,  'Vikram Rao',     'Hyderabad', 'Transfer',    6000, 'UPI',  '2026-03-01', NULL),
(8,  'Anjali Desai',   'Pune',      'Withdrawal',  1500, 'Card', '2026-03-07', 'Shopping'),
(9,  'Rohan Mehta',    'Delhi',     'Deposit',     9800, 'UPI',  '2026-03-14', NULL),
(10, 'Kavita Nair',    'Kochi',     'Transfer',    2200, 'NEFT', '2026-03-21', 'Gift'),
(11, 'Sanjay Kapoor',  'Mumbai',    'Withdrawal',  7500, 'Cash', '2026-04-03', 'Rent'),
(12, 'Pooja Sharma',   'Nagpur',    'Deposit',    18000, 'Card', '2026-04-10', 'Salary'),
(13, 'Aakash Gupta',   'Pune',      'Transfer',    5000, 'UPI',  '2026-04-18', NULL),
(14, 'Meera Iyer',     'Chennai',   'Deposit',     3500, 'NEFT', '2026-05-02', 'Refund'),
(15, 'Aditya Bhosale', 'Pune',      'Deposit',    30000, 'UPI',  '2026-05-09', 'Bonus');

Select * from t1;

-- Q1
Select * from t1
Where city ="pune";

Select customername as c_name,city from t1
Where city ="pune";

-- q2
Select * from t1
Where transactiontype ="withdrawal" and mode="cash";

-- Q3


Where mode = "UPI" and Amount>=1000
order by amount desc
limit 1;

-- Q4
Select transactiontype, max(amount) from t1
group by transactiontype
order by max(amount) desc
limit 1;

-- Q5
select * from t1 where customername like "A%";

-- Q6 
select * from t1 where customername like "%A";

-- Q7
select * from t1 where customername like "%A%";

-- Q8
select * from t1 where mode like "U_I";

-- Q9
select * from t1 where mode like "---";

-- q10
select * from t1 where customername regexp "^A";

-- q11
select * from t1 where customername regexp "a$";

-- Q12
select * from t1 where mode regexp "UPI";

-- Q13
select * from t1 where mode regexp "UPI|cash";

-- Q1 Show all Deposit transactions.
Select * from t1 where TransactionType = "deposit";

-- Q2 Show TransactionID, CustomerName and Amount for transactions above 10000.
Select TransactionID,Customername,Amount from t1
where amount >10000;

-- Q3 Show all transactions made in Pune.
Select * from t1 
where city ="pune";

-- 4.  Show Deposits with an amount above 10000.
select * from t1 where TransactionType = "Deposit" and amount >10000;

-- 5.  Show Withdrawals made in Cash.
Select * from t1 where TransactionType = "withdrawal" and Mode ="cash";

-- 6. Show transactions from Mumbai or Delhi
Select * from t1 where city="Mumbai" or city ="Delhi";
Select * from t1 where city in ("mumbai","delhi");

-- 8. Show transactions that were not made through UPI.
Select * from t1 where mode not in ("UPI");

-- 9. Show transactions with an amount between 5000 and 10000.
Select * from t1 where amount between 5000 and 10000;

-- 10. Show transactions from cities other than Pune, Mumbai and Delhi
Select * from t1 where city not in ("pune","Mumbai","Delhi");

-- 11.  Show transactions made in March 2026.
Select * from t1 where TransactionDate like "2026-03%";

-- 12. Show customers whose name starts with A.
Select * from t1 where customername like "A%";
Select * from t1 where customername regexp "^A";

-- 13.  Show customers whose name ends with a.
Select * from t1 where customername like "%A";
Select * from t1 where customername regexp "A$";

-- 14. Show customers whose second letter is a.
Select * from t1 where customername like "_A%";

-- 15. Show customers whose name contains sh.
Select * from t1 where customername like "%sh%";

-- 16 Show customers whose name does not start with A.
Select * from t1 where customername Not like "A%";

-- 17.  Show transactions where Remarks is empty (NULL).
Select * from t1 where remarks is null;

-- 18. Use REGEXP to show customers whose name starts with A or P.
Select * from t1 where customername regexp "^A|^P";

-- 19. Use REGEXP to show customers whose name ends with a or i.
Select * from t1 where customername regexp "a$|i$";

-- 20 Shw Deposits or Transfers above 5000 that were made through UPI or NEFT.
Select * from t1 where TransactionType in ("deposit","Transfer") AND Amount >5000 AND mode in ("UPI","NEFT");


