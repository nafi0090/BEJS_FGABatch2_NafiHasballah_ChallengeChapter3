drop view if exists detail_nasabah;

create or replace view detail_nasabah 
as
	select 
		n.nik, 
		n.name as name_nasabah, 
		a.village, 
		a.subdistrict,
		m.name as name_mother
	from nasabah n
	left join address a on n.id= a.nasabah_id
	left join mother_nasabah m on n.id = m.nasabah_id;
	
select * from detail_nasabah n ;

