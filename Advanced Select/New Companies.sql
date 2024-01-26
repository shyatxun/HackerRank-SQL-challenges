# https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true

select c.company_code, c.founder, count(distinct l.lead_manager_code) as lead_managers_total, count(distinct s.senior_manager_code) as senior_managers_total, count(distinct m.manager_code) as managers_total, count(distinct e.employee_code) as employees_total from company c
left join lead_manager l on c.company_code = l.company_code
left join senior_manager s on c.company_code = s.company_code and l.lead_manager_code = s.lead_manager_code
left join manager m on c.company_code = m.company_code and l.lead_manager_code = m.lead_manager_code and s.senior_manager_code = m.senior_manager_code
left join employee e on c.company_code = e.company_code and l.lead_manager_code = e.lead_manager_code and s.senior_manager_code = e.senior_manager_code and m.manager_code = e.manager_code
group by c.company_code, c.founder
order by c.company_code
