# https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

select max(case when occupation = 'Doctor' then name else null end) as Doctor, max(case when occupation = 'Professor' then name else null end) as Professor, max(case when occupation = 'Singer' then name else null end) as Singer, max(case when occupation = 'Actor' then name else null end) as Actor from (select name, occupation, row_number() over(partition by occupation order by name) as rk from occupations) rnk
group by rk
