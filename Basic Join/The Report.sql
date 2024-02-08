# https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

select (case when s.marks>=70 then s.name else null end) as name, g.grade, s.marks from students s
left join grades g on s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name, s.marks
