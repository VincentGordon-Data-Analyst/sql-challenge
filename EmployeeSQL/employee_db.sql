-- Create new table
CREATE TABLE departments(
dept_no VARCHAR(20) PRIMARY KEY NOT NULL,
dept_name VARCHAR(20) NOT NULL
);

-- Create new table
CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR(20) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create new table
CREATE TABLE dept_manager(
dept_no VARCHAR(20) NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create new table
CREATE TABLE employees(
emp_no INT NOT NULL,
emp_title_id VARCHAR(20) NOT NULL,
birth_date VARCHAR(20) NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex CHAR(1) NOT NULL,
hire_date VARCHAR(20) NOT NULL
);

-- Create new table
CREATE TABLE salaries(
emp_no INT NOT NULL,
salary INT NOT NULL
);

-- Create new table
CREATE TABLE titles(
title_id VARCHAR(20) NOT NULL,
title VARCHAR(20) NOT NULL
);


-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.sex,
	s.salary
FROM employees AS e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE'%/%/1986';


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM ((dept_manager
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no)
INNER JOIN employees ON  employees.emp_no = dept_manager.emp_no);


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT departments.dept_no,
	departments.dept_name,
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name
FROM ((dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no)
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no);


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE last_name LIKE 'B%'
AND first_name = 'Hercules';


-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.first_name,
	employees.last_name,
	dept_emp.emp_no,
	departments.dept_name
FROM ((dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no)
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no)
WHERE dept_name = 'Sales';


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departments.dept_name
FROM ((dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no)
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development';


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) as Frequency
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;