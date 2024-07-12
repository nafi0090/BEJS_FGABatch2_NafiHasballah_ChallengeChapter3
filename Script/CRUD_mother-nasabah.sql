create table mother_nasabah (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	name VARCHAR(255) not null,
	birth date not null
);

insert into mother_nasabah (name, birth, nasabah_id)
values 
	('Dewi Santosi', '1950-12-12', 2);

alter table mother_nasabah add nasabah_id BIGINT not null;
ALTER TABLE
    mother_nasabah ADD CONSTRAINT "mother_nasabah_fk" FOREIGN KEY("nasabah_id") REFERENCES "nasabah"("id");

SELECT * FROM mother_nasabah;

delete from mother_nasabah;