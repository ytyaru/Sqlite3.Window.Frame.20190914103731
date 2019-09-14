create table T(price integer, buyed text);
insert into T values(100, '2019-01-01 00:00:00');
insert into T values(130, '2019-01-01 01:00:00');
insert into T values(108, '2019-01-01 20:00:00');
insert into T values(120, '2019-01-02 00:00:00');
insert into T values(105, '2019-01-02 10:00:00');
insert into T values(112, '2019-01-03 05:00:00');
insert into T values(119, '2019-01-03 14:00:00');
insert into T values(200, '2019-02-01 00:00:00');
insert into T values(300, '2019-03-01 00:00:00');
insert into T values(999, '2020-01-01 00:00:00');

select 
  min(price) over (
    order by buyed 
    range unbounded preceding
  ) 
from T;

select 
  group_concat(price) over (
    order by buyed 
    range unbounded preceding
  ), price
from T;

select 
  group_concat(price) over (
    order by buyed 
    range '1 day' preceding
  ) 
from T;

select 
  group_concat(price) over (
    order by buyed 
    range '2019-01-03 00:00:00' preceding
  ) 
from T;

select 
  group_concat(price) over (
    order by price 
    range 110 preceding
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range current row
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between unbounded preceding and 110 preceding
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between unbounded preceding and 50 preceding
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between unbounded preceding and 20 preceding
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between unbounded preceding and current row
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between unbounded preceding and 10 following
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between unbounded preceding and unbounded following
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between 50 preceding and 10 preceding
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between 10 preceding and current row
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between 10 preceding and 20 following
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between 10 preceding and unbounded following
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between current row and 10 preceding
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between current row and current row
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between current row and 10 following
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between current row and unbounded following
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between 10 following and 20 preceding
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between 10 following and current row
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between 10 following and 20 following
  ), price
from T;

select 
  group_concat(price) over (
    order by price 
    range between 10 following and unbounded following
  ), price
from T;

