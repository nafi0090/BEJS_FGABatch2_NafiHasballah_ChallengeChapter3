insert into transactions (account_id,trasactiontype_id,amount,description)
values 
	(2, 4, 10000,'pembayaran tagihan'),
	(2, 2, 120000,'penarikan tunai'),
	(2, 4, 13000,'biaya administrasi'),
	(2, 5, 14000,'pengembalian uang');

select * from transactions t;

update transactions set amount = 5000 where id=3;

delete from transactions where id=4