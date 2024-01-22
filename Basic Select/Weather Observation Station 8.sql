# https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true

select distinct city from station
where substring(city, 1, 1) in ('a', 'e', 'i', 'o', 'u') and substring(city, -1) in ('a', 'e', 'i', 'o', 'u')
