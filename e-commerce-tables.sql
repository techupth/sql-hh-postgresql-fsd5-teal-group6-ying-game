-- Start writing code here
// users
create table users( user_id integer primary key generated always as identity,
	username varchar(225) unique not null, email varchar (225) unique not NULL, password varchar (225) not null,
create_at timestamp unique not null
)

// product 
create table product (
product_id integer primary key generated always as identity,
name varchar(255) not null,
description text ,
	price numeric(10,2) not null ,
	created_at timestamptz not null unique default current_timestamp
)

// categories
create table categories(
category_id integer primary key generated always as identity,
name varchar(255) not null unique,
created_at timestamptz default current_timestamp not null unique)

// product_categories
create table product_categories(
product_categories_id integer generated always as identity ,
	product_id int references product(product_id) not null unique,
	cartegory_id int references categories(category_id) not null unique
)