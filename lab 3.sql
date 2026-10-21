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



