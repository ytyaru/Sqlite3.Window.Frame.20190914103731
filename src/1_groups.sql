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
    partition by c 
    order by b 
    groups unbounded preceding
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups 1 preceding
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups current row
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between unbounded preceding and 3 preceding
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between unbounded preceding and current row
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between unbounded preceding and 1 following
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between unbounded preceding and unbounded following
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between 1 preceding and 1 preceding
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between 3 preceding and current row
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between 1 preceding and 1 following
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between 1 preceding and unbounded following
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between current row and 1 preceding
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between current row and current row
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between current row and 1 following
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between current row and unbounded following
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between 1 following and 1 preceding
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between 1 following and current row
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between 1 following and 2 following
  ), b, c
from t1;

select 
  group_concat(b) over (
    partition by c 
    order by b 
    groups between 1 following and unbounded following
  ), b, c
from t1;

