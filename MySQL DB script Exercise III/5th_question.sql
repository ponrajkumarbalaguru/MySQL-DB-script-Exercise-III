USE task5;
SELECT first_name, last_name FROM employees WHERE manager_id in (select employee_id FROM employees WHERE department_id 
IN (SELECT department_id FROM departments WHERE location_id 
IN (select location_id from task4.locations where country_id='CN')));
# I did not use the US based department and employee location, so I used CN
