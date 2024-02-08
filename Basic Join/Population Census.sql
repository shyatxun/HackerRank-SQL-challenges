# https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

select sum(c1.population) from city c1
left join country c2 on c1.countrycode = c2.code
where c2.continent = 'Asia'
