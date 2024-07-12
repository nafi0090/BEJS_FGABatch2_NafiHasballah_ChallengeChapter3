-- Add Data Account
insert into account (nasabah_id, typeacc_id, balance, status)
values
	(2,2,1000000,'active'),
	(3,5,12300000,'inactive'),
	(3,7,0,'closed');

-- Read Data Account
select * from account;

-- Update Data Account
update account set status = 'active' where id=2;

-- Delete Data Account
delete from account where id=1