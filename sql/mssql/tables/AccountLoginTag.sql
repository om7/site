create table AccountLoginTag (
	id int not null identity,

	account    int not null references Account(id) on delete cascade,
	tag        varchar(255) not null,
	session_id varchar(255) not null,
	createdate datetime2 not null,
	login_date datetime2 not null,
	ip_address varchar(15) not null,
	user_agent nvarchar(255),

	primary key(id)
);

create index AccountLoginTag_tag on AccountLoginTag(tag);
