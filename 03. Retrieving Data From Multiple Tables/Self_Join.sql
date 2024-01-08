use sql_hr;

select * from employees;

select employee_id as eid, first_name as fname, last_name as lname
from employees;


SELECT e.employee_id,e.first_name AS 'Empolyee Name',m.employee_id AS 'Manager ID', m.first_name AS "Manager Name"
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;