use task5;
SELECT e.first_name, e.last_name, e.job_id, e.department_id, d.department_name,l.city
FROM task5.employees e 
JOIN task5.departments d ON (e.department_id = d.department_id) 
JOIN task4.locations l ON (d.location_id = l.location_id) 
WHERE LOWER(l.city) = 'London';