# https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

select c1.name from city c1
left join country c2 on c1.countrycode = c2.code
where c2.continent = 'Africa'
