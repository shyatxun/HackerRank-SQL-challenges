# https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true

select pj_start, min(pj_end) from 
(select start_date as pj_start from projects where start_date not in (select end_date from projects)) pj_s, 
(select end_date as pj_end from projects where end_date not in (select start_date from projects)) pj_e
where pj_start<pj_end
group by pj_start
order by datediff(min(pj_end), pj_start), pj_start
