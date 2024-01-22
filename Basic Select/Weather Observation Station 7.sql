# https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true

select distinct city from station
where substring(city, -1) in ('a', 'e', 'i', 'o', 'u')
