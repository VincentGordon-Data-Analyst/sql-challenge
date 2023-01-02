# Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

To complete this project a database was created along with tables that would be used to answer questions about the given data. This was accomplished by following these steps: 

1. Data Modelsing
2. Data Engineering
3. Data Analysis


## Data Modeling 

Requries understanding the realtionship that tables might have with each other. This was done by looking at the six CSV files and creating an Entity Relationship Diagram (ERD). 

![ERD](https://user-images.githubusercontent.com/66184004/210253366-77773b49-834b-455e-9e93-433db3563237.png)

## Data Engineering

The provided CSV files were used to create the tables needed for this project. The creation of these tables included setting primary keys for certain tables, creating foreign keys that referenced other tables, using NOT NULL conditions and defining lengths values for columsn with string types.

## Data Analysis

After completing the first two steps for this project, the following questions were answered: 

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2.List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
