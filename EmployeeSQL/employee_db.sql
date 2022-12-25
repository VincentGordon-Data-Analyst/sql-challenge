CREATE TABLE departments(
dept_no VARCHAR(20) PRIMARY KEY NOT NULL,
dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR(20) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
dept_no VARCHAR(20) NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees(
emp_no INT NOT NULL,
emp_title_id VARCHAR(20) NOT NULL,
birth_date VARCHAR(20) NOT NULL,
first_name VARCHAR(30) NOT NULL,
lat_name VARCHAR(30) NOT NULL,
sex CHAR(1) NOT NULL,
hire_date VARCHAR(20) NOT NULL
);

CREATE TABLE salaries(
emp_no INT NOT NULL,
salary INT NOT NULL
);

CREATE TABLE titles(
title_id VARCHAR(20) NOT NULL,
title VARCHAR(20) NOT NULL
);