insert into category values(4, 'swim', 'This is new entry');
insert into category values(5, 'swim and dance', 'This is new entry');

update category SET Name='Swimming' where Category_id=1;
update category SET Name='Swimming' where Category_id=2;

delete from category where Category_id=4;

select * from category where Name='Swimming';

Select * from orderr Join customer ON orderr.customer_id=customer.customer_id;
Select * from product Join category ON product.category_id=Category.Category_id;

select count(product_id) from product;
select max(weight) from product;
select sum(stock) from product;

select * from product,category;






