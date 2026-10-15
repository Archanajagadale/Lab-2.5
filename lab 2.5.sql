Alter table loans add column Customer_id int;

Select * from loans;

alter table loans add constraint f_k foreign key(Customer_id) references customer(customer_id);

Alter table transaction_table add column account_id int;

alter table transaction_table add constraint f foreign key(account_id) references account_table(account_id);

alter table Account_table add constraint pk primary key (Account_id);

Alter table account_table add column branch_id int;

alter table account_table add constraint kk foreign key(branch_id) references branches(branch_id);

alter table branches add constraint pk primary key (branch_id);
