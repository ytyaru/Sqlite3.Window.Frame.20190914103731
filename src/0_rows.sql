CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
INSERT INTO t1 VALUES   (1, 'A', 'one'  ),
                        (2, 'B', 'two'  ),
                        (3, 'C', 'three'),
                        (4, 'D', 'one'  ),
                        (5, 'E', 'two'  ),
                        (6, 'F', 'three'),
                        (7, 'G', 'one'  );
select 
  min(b) over (
    order by b 
    rows unbounded preceding
  ) 
from t1;

select 
  min(b) over (
    order by b 
    rows 1 preceding
  ) 
from t1;

select 
  min(b) over (
    order by b 
    rows current row
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between unbounded preceding and 3 preceding
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between unbounded preceding and current row
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between unbounded preceding and 1 following
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between unbounded preceding and unbounded following
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between 1 preceding and 1 preceding
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between 3 preceding and 1 preceding
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between 3 preceding and current row
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between 1 preceding and 1 following
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between 1 preceding and unbounded following
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between current row and 1 preceding
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between current row and current row
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between current row and 1 following
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between current row and unbounded following
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between 1 following and 1 preceding
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between 1 following and current row
  ) 
from t1;
select 
  group_concat(b) over (
    order by b 
    rows between 1 following and 2 following
  ) 
from t1;
select 
  group_concat(b) over (
    order by b 
    rows between 1 following and 1 following
  ) 
from t1;
select 
  group_concat(b) over (
    order by b 
    rows between 2 following and 1 following
  ) 
from t1;

select 
  group_concat(b) over (
    order by b 
    rows between 1 following and unbounded following
  ) 
from t1;












