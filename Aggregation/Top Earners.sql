# https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

select max(salary * months), sum(if(salary * months = (select max(salary * months) from employee), 1, 0)) from employee
