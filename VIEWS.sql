USE HR;
CREATE VIEW EMPINFO (emp_id, firstname, lastname, address, job_id, manager_id, dep_id)
AS SELECT emp_id, f_name, l_name, address, job_id, manager_id, dep_id
FROM employees;
SELECT * FROM EMPINFO

CREATE VIEW EMPINFO_30002 (emp_id, firstname, lastname, address, job_id, manager_id, dep_id)
AS SELECT emp_id, f_name, l_name, address, job_id, manager_id, dep_id
FROM employees
WHERE manager_id = '30002';
SELECT * FROM EMPINFO_30002

CREATE VIEW EMPSALARY AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, SALARY
FROM EMPLOYEES;
SELECT * FROM EMPSALARY;

CREATE OR REPLACE VIEW EMPSALARY  AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, JOB_TITLE, MIN_SALARY, MAX_SALARY
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

SELECT * FROM EMPSALARY;

DROP VIEW EMPSALARY;