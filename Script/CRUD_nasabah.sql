--Create Data Nasabah
insert into nasabah("nik","name","place_of_birth","religion","birth","gender","email","phone_number") 
values 
	('0938475849102991','Anton Saputra','London','Islam','1980-01-01','male','antonsaputra@gmail.com','085837467823'),
	('0938475849102992','Doni Saputra','Moscow','Islam','1990-02-01','male','saputradoni@gmail.com','085837467824'),
	('0938475849102993','Dewi Saputri','Casablanca','Islam','2000-03-01','female','dewisaputri@gmail.com','085837467825');
	
-- Read All Data Nasabah
select * from nasabah; 

-- Update Data Nasabah
update nasabah set name = 'Ando' where id=1;

--De;ete Data Masanaj
delete from nasabah where id=1;