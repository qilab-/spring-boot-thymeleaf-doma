DROP TABLE IF EXISTS student;

CREATE TABLE student
(
id INT AUTO_INCREMENT,
name VARCHAR(20),
age INT,
address VARCHAR(255),
INDEX(id)
);



-- advanced level --
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS sales_detail;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS hobby;
DROP TABLE IF EXISTS users_hobby;


CREATE TABLE member
(
  id serial NOT NULL,
  name text  NOT NULL,
  name_kana text NOT NULL,
  mail_address text NOT NULL,
  join_date timestamp NOT NULL,
  area text NOT NULL,
  group_id integer NOT NULL,
  CONSTRAINT member_pkey PRIMARY KEY (id)
);

CREATE TABLE groups
(
  id serial NOT NULL,
  name text NOT NULL,
  CONSTRAINT group_pkey PRIMARY KEY (id)
);


CREATE TABLE sales
(
  id serial NOT NULL,
  customer_name text NOT NULL,
  staff_name text NOT NULL,
  sale_date timestamp NOT NULL,
  CONSTRAINT sales_pkey PRIMARY KEY (id)
);


CREATE TABLE sales_detail
(
  id serial NOT NULL,
  item_id integer NOT NULL,
  quantity integer NOT NULL,
  sales_id integer NOT NULL,
  CONSTRAINT sales_detail_pkey PRIMARY KEY (id)
);


CREATE TABLE item
(
  id serial NOT NULL,
  name text NOT NULL,
  price integer NOT NULL,
  CONSTRAINT item_pkey PRIMARY KEY (id)
);


CREATE TABLE users
(
  id serial NOT NULL,
  name text NOT NULL,
  mail_address text NOT NULL,
  birthday timestamp NOT NULL,
  CONSTRAINT users_pkey PRIMARY KEY (id)
);

CREATE TABLE hobby
(
  id serial NOT NULL,
  name text,
  CONSTRAINT hobby_pkey PRIMARY KEY (id)
);

CREATE TABLE users_hobby
(
  id serial NOT NULL,
  users_id integer NOT NULL,
  hobby_id integer NOT NULL,
  CONSTRAINT users_hobby_pkey PRIMARY KEY (id)
);

