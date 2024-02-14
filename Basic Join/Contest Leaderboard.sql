# https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

select hacker_id, name, sum(best) as total from (select h.hacker_id, h.name, s.challenge_id, max(s.score) as best from hackers h inner join submissions s on h.hacker_id = s.hacker_id group by h.hacker_id, h.name, s.challenge_id) best_scores
group by hacker_id, name
having sum(best) > 0
order by sum(best) desc, hacker_id
