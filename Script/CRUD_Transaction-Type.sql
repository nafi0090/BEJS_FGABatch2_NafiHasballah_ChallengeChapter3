insert into transaction_type (type_transaction)
values
	('deposit'),
	('withdraw'),
	('transfer'),
	('payment'),
	('fee');
	
select * from transaction_type;

update transaction_type set type_transaction = 'depo ajah' where id=1;

delete from transaction_type where id =1;