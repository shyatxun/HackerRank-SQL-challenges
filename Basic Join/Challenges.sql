# *** https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

select hacker_id, name, created from (select h.hacker_id, h.name, count(c.challenge_id) as created, dense_rank() over(order by count(c.challenge_id) desc) as rk from hackers h inner join challenges c on h.hacker_id = c.hacker_id group by h.hacker_id, h.name order by created desc, h.hacker_id) rnk
where rk = 1 or rk in (select rk from (select h.hacker_id, h.name, count(c.challenge_id) as created, dense_rank() over(order by count(c.challenge_id) desc) as rk from hackers h inner join challenges c on h.hacker_id = c.hacker_id group by h.hacker_id, h.name order by created desc, h.hacker_id) rnk group by rk having count(hacker_id) = 1)
