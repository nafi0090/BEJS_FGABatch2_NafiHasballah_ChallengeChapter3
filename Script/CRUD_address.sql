-- Add Data Address
insert into address ("nasabah_id", "typeadd_id", "rt", "rw", "village", "subdistrict", "zip_code")
values
	(1,1,3,4,'Jambangan','jambangan',14616),
	(1,1,5,6,'Ketintang','Gunung Sari',14617);
	
-- Read Data Address
select * from address;

--update Data Address
update address set subdistrict = 'Gayungan' where id=2;

-- Delete Data Address
delete from address where id=1;