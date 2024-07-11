SELECT * FROM departments LIMIT 4;
SELECT * FROM employees LIMIT 4;

# Retrieve all employees whose address is in Elgin,IL.
SELECT * FROM employees WHERE address LIKE '%ELGIN,IL';

#Retrieve all employees who were born during the 1970’s.
SELECT * FROM employees WHERE b_date BETWEEN '1970-01-01' AND '1979-12-31';
SELECT * FROM employees WHERE b_date LIKE '197%';

#Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT * FROM employees WHERE dep_id = '5' AND salary BETWEEN 60000 AND 70000;

#Retrieve a list of employees ordered by department ID.
SELECT * FROM employees ORDER BY dep_id;

#Retrieve a list of employees ordered in descending order by department ID and 
#within each department ordered alphabetically in descending order by last name.
SELECT * FROM employees ORDER BY dep_id DESC, l_name DESC;

#Retrieve a list of employees ordered by department name, and 
#within each department ordered alphabetically in descending order by last name.
SELECT d.dep_name, e.f_name, e.l_name
FROM employees as e, departments AS d
WHERE e.dep_id = d.dept_id_dep
ORDER BY d.dep_name, e.l_name DESC;

#For each department ID retrieve the number of employees in the department.
SELECT dep_id, COUNT(*) AS frecuencia FROM employees GROUP BY dep_id;

SELECT d.dep_name, COUNT(e.dep_id) AS Empleados_tot
FROM employees as e, departments as d
WHERE e.dep_id = d.dept_id_dep
GROUP BY d.dep_name;

#For each department retrieve the number of employees in the department, and the average employee salary in the department.
SELECT dep_id, COUNT(*) AS count, ROUND(AVG(salary),2) AS avg_salary FROM employees
GROUP BY dep_id;

SELECT d.dep_name, COUNT(e.dep_id) AS count, ROUND(AVG(e.salary),2) AS avg_salary
FROM employees as e, departments as d
WHERE e.dep_id = d.dept_id_dep
GROUP BY d.dep_name;

#Label the computed columns in the previous result set as NUM_EMPLOYEES and AVG_SALARY.
SELECT dep_id, COUNT(*) AS num_employees, ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY dep_id;

#In the previous result set, order the result set by Average Salary.
SELECT dep_id, COUNT(*) as num_employees, ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY dep_id
ORDER BY avg_salary;

#In the previous result set, limit the result to departments with fewer than 4 employees.
SELECT dep_id, COUNT(*) as num_employees, ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY dep_id HAVING count(*) < 4
ORDER BY avg_salary;
