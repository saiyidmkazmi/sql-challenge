-- Create new tables to import data
DROP TABLE departments

CREATE TABLE departments (
	dept_no VARCHAR(20),
	dept_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments

DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments(dept_no)
);

SELECT * FROM dept_emp

DROP TABLE dept_manager

CREATE TABLE dept_manager (
	dept_no VARCHAR(20),
	emp_no INT,
	FOREIGN KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments(dept_no)
);

SELECT * FROM dept_manager

DROP TABLE employees

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(20),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex	VARCHAR(2),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

SELECT * FROM employees

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) references employees(emp_no)
);

SELECT * FROM salaries

DROP TABLE titles

CREATE TABLE titles (
	title_id VARCHAR(20),
	title VARCHAR(20)
);

SELECT * FROM titles