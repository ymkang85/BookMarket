create table if not exists book(
	b_id varchar(10) not null,
	b_name varchar(20),
	b_unitPrice integer,
	b_author varchar(50),
	b_publishor varchar(20),
	b_description text,
	b_category varchar(20),
	b_unitsInStock long,
	b_totalPages long,
	b_releaseDate varchar(20),
	b_condition varchar(20),
	b_fileName varchar(20),
	primary key (b_id)
)default charset=utf8;