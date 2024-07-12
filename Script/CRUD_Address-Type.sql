-- Add Data Address Type --
insert into address_type(type_address) values ('Home'), ('Office');

-- Read Data Address Type --
select * from address_type where id=1

-- Update Data Address Type --
update address_type set type_address = 'Rumah' where id=1 

-- Delete Data Address Type --
delete from address_type where id=1

-- Read All Data Address Type
select * from address_type