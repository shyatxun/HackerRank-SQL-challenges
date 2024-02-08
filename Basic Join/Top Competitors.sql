# https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

select h.hacker_id, h.name from hackers h
inner join submissions s on h.hacker_id = s.hacker_id
left join challenges c on c.challenge_id = s.challenge_id
inner join difficulty d on c.difficulty_level = d.difficulty_level and s.score = d.score
group by h.hacker_id, h.name
having count(s.score) > 1
order by count(s.score) desc, h.hacker_id
