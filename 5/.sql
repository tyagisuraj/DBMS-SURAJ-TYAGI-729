'''1. Display the total number of employee working in the
company.
2. Display the total salary being paid to all employees.
3. Display the maximum salary from employee table.
4. Display the minimum salary from employee table.
5. Display the average salary from employee table
6. Display the maximum salary being paid to clerk.
7. Display the maximum salary being paid in dept no 20.
8. Display the minimum salary paid to any salesman.
9. Display the average salary drawn by managers.
10. Display the total salary drawn by analyst working in dept no
40.
11. Display the names of the employee in Uppercase.
12. Display the names of the employee in Lowercase.
13. Display the names of the employee in Proper case.
14. Display the length of Your name using appropriate function.
15. Display the length of all the employee names.'''
# 🔹 AGGREGATE & STRING FUNCTIONS (EMPLOYEE TABLE)

## 1. Total number of employees working in the company


SELECT COUNT(*) AS total_employees FROM employee;


## 2. Total salary being paid to all employees


SELECT SUM(sal) AS total_salary FROM employee;


## 3. Maximum salary from employee table


SELECT MAX(sal) AS max_salary FROM employee;


## 4. Minimum salary from employee table


SELECT MIN(sal) AS min_salary FROM employee;


## 5. Average salary from employee table


SELECT AVG(sal) AS avg_salary FROM employee;


## 6. Maximum salary being paid to clerks


SELECT MAX(sal) AS max_clerk_salary FROM employee
WHERE job = 'CLERK';


## 7. Maximum salary being paid in department no 20

SELECT MAX(sal) AS max_dept20_salary FROM employee
WHERE deptno = 20;


## 8. Minimum salary paid to any salesman


SELECT MIN(sal) AS min_salesman_salary FROM employee
WHERE job = 'SALESMAN';

## 9. Average salary drawn by managers


SELECT AVG(sal) AS avg_manager_salary FROM employee
WHERE job = 'MANAGER';


## 10. Total salary drawn by analyst working in dept 40


SELECT SUM(sal) AS total_analyst_salary FROM employee
WHERE job = 'ANALYST' AND deptno = 40;


# 🔹 STRING FUNCTIONS

## 11. Display employee names in UPPERCASE


SELECT UPPER(ename)
FROM employee;


## 12. Display employee names in LOWERCASE


SELECT LOWER(ename) FROM employee;


## 13. Display employee names in Proper Case


SELECT CONCAT(
       UPPER(LEFT(ename,1)),
       LOWER(SUBSTRING(ename,2))
) AS Proper_Name FROM employee;


## 14. Display the length of your name


SELECT LENGTH('SURAJ TYAGI') AS name_length;


## 15. Display the length of all employee names

SELECT ename, LENGTH(ename) AS name_length FROM employee;

