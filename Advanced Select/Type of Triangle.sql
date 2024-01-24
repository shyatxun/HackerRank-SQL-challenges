# https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

select case when (a = b and b = c) then 'Equilateral' when (a + b <= c or a + c <= b or b + c <= a) then 'Not A Triangle' when (a <> b and b <> c and a <> c) then 'Scalene' else 'Isosceles' end as type from triangles
