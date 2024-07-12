create type gender_enum as enum ('male', 'female', 'other');
create type account_status_enum as enum ('active', 'inactive', 'closed');

create table address_type (
	id BIGSERIAL primary key,
	type_address VARCHAR(255) not NULL
);

create table nasabah (
	id BIGSERIAL primary key,
	nik VARCHAR(255) not null,
	name VARCHAR(255) not null,
	place_of_birth VARCHAR(255) not null,
	religion VARCHAR(255) not null,
	birth DATE not null,
	gender gender_enum,
	email VARCHAR(255) not null,
	phone_number VARCHAR(255) not null
);

create table address(
	id BIGSERIAL primary key,
	nasabah_id BIGINT not null,
	typeadd_id BIGINT not NULL,
	rt VARCHAR(10),
	rw VARCHAR(10),
	village VARCHAR(255),
	subdistrict VARCHAR(255),
	zip_code VARCHAR(10),
	foreign key (nasabah_id) references nasabah(id) on delete cascade,
	foreign key (typeadd_id) references address_type(id)
);

create table account_type(
	id BIGSERIAL primary key,
	type_account VARCHAR(255) not null
);

create table account(
	id BIGSERIAL primary key,
	nasabah_id BIGINT not null,
	typeacc_id BIGINT not null,
	balance BIGINT not null,
	status account_status_enum,
	foreign key (nasabah_id) references nasabah(id),
	foreign key (typeacc_id) references account_type(id)
);

create table transaction_type(
	id BIGSERIAL primary key, 
	type_transaction VARCHAR(255) not null
);

create table transaction(
	id BIGSERIAL primary key,
	account_id BIGINT not null,
	trasactiontype_id BIGINT not null,
	amount BIGINT not null,
	transaction_date TIMESTAMP default CURRENT_TIMESTAMP,
	description VARCHAR(255) not null,
	foreign key (account_id) references account(id),
	foreign key (trasactiontype_id) references transaction_type(id)
);