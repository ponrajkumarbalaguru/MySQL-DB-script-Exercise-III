USE task5;
SELECT first_name, last_name FROM employees WHERE (employee_id IN (SELECT manager_id FROM employees));