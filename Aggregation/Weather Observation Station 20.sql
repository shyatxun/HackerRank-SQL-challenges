# https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true

select 
  case when count(*)%2 = 1 then (select round(lat_n, 4) from (select lat_n, row_number() over(order by lat_n) as rk from station) as rnk where rk = (select (count(*)+1)/2 from station)) 
  else (select round(avg(lat_n), 4) from (select lat_n, row_number() over(order by lat_n) as rk from station) as rnk where rk in ((select count(*)/2 from station), (select count(*)/2+1 from station))) end 
  from station
