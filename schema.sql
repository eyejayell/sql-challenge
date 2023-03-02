CREATE TABLE employees (
	emp_no int,
	emp_title VARCHAR(255),
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255,
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments (
	dept_no VARCHAR(255),
	dept_name VARCHAR(255),
	PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
	title_id VARCHAR(255),
	title VARCHAR(255),
	PRIMARY KEY (title_id),
	FOREIGN KEY (title_id) REFERENCES employees(emp_title)
);

CREATE TABLE dept_emp (
	emp_no IN
)