drop table products;
create table products
(
id int auto_increment primary key,
product_name varchar(100) not null,
category varchar(100) not null,
price int not null,
unique( product_name)
);

insert into products ( product_name,category,price) values
( 'Good to Great', 'BOOKS', 20),
( 'Six Thinking Hats', 'BOOKS', 25),
( 'Clean Coder', 'BOOKS', 15), 
( 'OneNote 7', 'MOBILE', 200),
('iPhone', 'MOBILE', 400);

select * from products;

select count(*) from products;
select min(price),max(price), sum(price), avg(price) from products;

select category, min(price),max(price) from products 
group by category;

select category, min(price),max(price) from products 
group by category having min(price) >= 100;
