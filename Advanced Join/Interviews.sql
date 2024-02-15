# https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true

select * from (select c.contest_id, c.hacker_id, c.name, sum(total_submissions) as sum_s, sum(total_accepted_submissions) as sum_a, sum(total_views) as sum_v, sum(total_unique_views) as sum_u from contests c
inner join colleges l on c.contest_id = l.contest_id
inner join challenges g on l.college_id = g.college_id
left join (select challenge_id, sum(total_views) as total_views, sum(total_unique_views) as total_unique_views from view_stats group by challenge_id) v on g.challenge_id = v.challenge_id
left join (select challenge_id, sum(total_submissions) as total_submissions, sum(total_accepted_submissions) as total_accepted_submissions from submission_stats group by challenge_id) s on g.challenge_id = s.challenge_id
group by c.contest_id, c.hacker_id, c.name
#where sum_s + sum_a + sum_v + sum_u > 0
order by contest_id) as temp
where sum_s + sum_a + sum_v + sum_u > 0
