'''1. Display the list of employees who have joined the company
before 30th June 80 or after 31st Dec 81.
2. Display the names of employees whose names have second
alphabet A in their names.
3. Display the names of employees whose name is exactly five
characters in length
4. Display the names of employees whose names have second
alphabet A in their names.
5. Display the names of employees who are not working as
salesman or clerk or analyst.
6. Display the name of the employee along with their annual
salary (sal*12). The name of the employee earning highest
salary should appear first.
7. Display name, sal, hra, pf, da, totalsal for each employee. The
output should be in the order of total sal, hra 15% of sal, da
10% of sal, pf 5% of sal. Total salary will be (sal*hra*da)-pf.
8. Update the salary of each employee by 10% increment who are
not eligible for commission.
9. Display those employees whose salary is more than 3000 after
giving 20% increment.
10. Display those employees whose salary contains atleast 3 digits.'''
#RETRIEVING DATA – EMPLOYEE TABLE'''

## 1. Employees who joined before 30-Jun-1980 OR after 31-Dec-1981'''


SELECT * FROM employee
WHERE hiredate < '1980-06-30' OR hiredate > '1981-12-31';


## 2. '''Names of employees whose second alphabet is A'''


SELECT ename
FROM employee
WHERE ename LIKE '_A%';


## 3. '''Names of employees whose name is exactly 5 characters'''


SELECT ename
FROM employee
WHERE LENGTH(ename) = 5;


## 4.''' Names of employees whose second alphabet is A'''



SELECT ename FROM employee
WHERE ename LIKE '_A%';



## 5. '''Employees NOT working as salesman, clerk or analyst'''


SELECT ename
FROM employee
WHERE job NOT IN ('SALESMAN','CLERK','ANALYST');



## 6.''' Employee name & annual salary,
highest salary first'''


SELECT ename, sal*12 AS annual_salary FROM employee
ORDER BY sal DESC;


## 7.''' Name, sal, hra, pf, da, totalsal

HRA = 15% of sal

DA = 10% of sal

PF = 5% of sal

TotalSal = (sal + hra + da) − pf'''


SELECT
    ename,
    sal,
    sal*0.15 AS hra,
    sal*0.10 AS da,
    sal*0.05 AS pf,
    (sal + (sal*0.15) + (sal*0.10) - (sal*0.05)) AS totalsal
FROM employee
ORDER BY totalsal DESC;


## 8.''' Update salary by 10% increment for employees NOT eligible for commission'''

UPDATE employee SET sal = sal + (sal * 0.10)
WHERE comm IS NULL OR comm = 0;

## 9.''' Employees whose salary is > 3000 after 20% increment'''


SELECT ename FROM employee WHERE sal + (sal * 0.20) > 3000;


## 10. '''Employees whose salary contains at least 3 digits'''


SELECT ename, sal FROM employee WHERE LENGTH(sal) >= 3;
