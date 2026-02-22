'''Perform Following Query using Employee Table. (Retrieving Data)
1. List all distinct job in Employee.
2. List all information about employee in Department Number
30.
3. Find all department number with department names greater
than 20.
4. Find all information about all the managers as well as the
clerks in department 30.
5. List the Employee name, Employee numbers and department
of all clerks.
6. Find all managers not in department 30.
7. List information about all Employees in department 10 who
are not manager or clerks.
8. Find Employees and jobs earning between 1200 and 1400.
9. List Name and Department Number of employee who are
clerks, analyst or salesman.
10. List Name and Department Number of employee whose names
began with M''''
# RETRIEVING DATA USING EMPLOYEE TABLE'''

## 1.''' List all distinct jobs in Employee table'''


SELECT DISTINCT job FROM Employee;


## 2.''' List all information about employees in Department 30'''


SELECT * FROM Employee WHERE deptno = 30;


## 3. '''Find all department numbers with department names greater than 20'''


SELECT deptno FROM department WHERE deptno > 20;




## 4.''' Find all information about managers and clerks in department 30'''


SELECT * FROM employee
WHERE deptno = 30 AND job IN ('MANAGER','CLERK');


## 5. '''List Employee name, Employee number, Department of all clerks'''


SELECT empno, ename, deptno FROM employee
WHERE job = 'CLERK';

## 6. '''Find all managers NOT in department 30'''


SELECT * FROM employee
WHERE job = 'MANAGER' AND deptno <> 30;


## 7. '''List all employees in department 10 who are not managers or clerks'''


SELECT * FROM employee
WHERE deptno = 10 AND job NOT IN ('MANAGER','CLERK');

## 8. '''Find employees and jobs earning between 1200 and 1400'''


SELECT ename, job, sal FROM employee
WHERE sal BETWEEN 1200 AND 1400;


## 9. '''List Name and Department Number of employees who are clerks, analyst or salesman'''


SELECT ename, deptno FROM employee
WHERE job IN ('CLERK','ANALYST','SALESMAN');




## 10.''' List Name and Department Number of employees whose names begin with M'''


SELECT ename, deptno FROM employee
WHERE ename LIKE 'M%';

