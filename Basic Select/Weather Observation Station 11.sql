# https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true

select distinct city from station
where substring(city, 1, 1) not in ('a', 'e', 'i', 'o', 'u') or substring(city, -1) not in ('a', 'e', 'i', 'o', 'u')
