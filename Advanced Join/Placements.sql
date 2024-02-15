# https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true

select s.name from students s
left join packages p1 on s.id = p1.id
left join friends f on s.id = f.id
left join packages p2 on f.friend_id = p2.id
where p2.salary - p1.salary > 0
order by p2.salary
