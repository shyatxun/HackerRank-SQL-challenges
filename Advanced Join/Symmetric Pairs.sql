# https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true

select distinct f1.x, f1.y from 
(select x, y, row_number() over(order by x, y) as row1 from functions) as f1,
(select x, y, row_number() over(order by x, y) as row2 from functions) as f2 
where f1.x = f2.y and f2.x = f1.y and row2 <> row1 and f1.x <= f1.y
order by f1.x
