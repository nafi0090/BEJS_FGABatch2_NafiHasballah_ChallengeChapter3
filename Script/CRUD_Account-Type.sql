-- Add Data Account Type --
insert into account_type (type_account) 
values 
	('Rekening Tabungan'), 
	('Rekening Giro'),
	('Deposito Berjangka'),
	('Rekening Valas (Foreign Currency Account)'),
	('Rekening Investasi'),
	('Tabungan Anak'),
	('Rekening Bisnis')
;

-- Read Data Account Type
select * from account_type where id=1;

-- Update Data Account Type --
update account_type set type_account = 'Tabunganku' where id=1

-- Delete Data Account Type --
delete from account_type where id=1

-- Read All Data Account Type
select * from account_type