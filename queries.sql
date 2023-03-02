SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
	ON (e.emp_no = s.emp_no);

SELECT first_name, last_name, hire_date
FROM employees
WHERE date_part('year', hire_date) = 1986;

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN employees e
	ON (dm.emp_no = e.emp_no)
JOIN departments d
	ON (dm.dept_no = d.dept_no);

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e
	ON (de.emp_no = e.emp_no)
JOIN departments d
	ON (de.dept_no = d.dept_no);

SELECT first_name, last_name, sex
FROM employees
WHERE
	first_name = 'Hercules'
	AND
	last_name LIKE 'B%';
	
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN (
	select emp_no
	from dept_emp
	where dept_no = 'd007'
);

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
	ON (e.emp_no = de.emp_no)
JOIN departments d
	ON (de.dept_no = d.dept_no)
WHERE e.emp_no IN (
	SELECT de.emp_no
	FROM dept_emp
	WHERE de.dept_no = 'd007' OR de.dept_no = 'd005'
);

SELECT last_name,COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;