-- 1. Display empno, ename, deptno from employee table. Instead
-- of display department numbers display the related department
-- name (Use decode function).
-- 2. Display your age in days.
-- 3. Display your age in months.
-- 4. Display the current date as 15th August Friday Nineteen
-- Ninety-Seven.
-- 5. Display the following output for each row from employee
-- table.
-- 6. Scott has joined the company on Wednesday 13th August
-- Nineteen Ninety
-- 7. Find the date for nearest Saturday after current date.
-- 8. Display current time.
-- 9. Display the date three months Before the current date
-- 10. Display those employees who joined in the company in the
-- month of Dec.
-- 11. Display those employees whose first 2 characters from hire
-- date -last 2 characters of salary.
-- 12. Display those employees whose 10% of salary is equal to the
-- year of joining.
-- 13. Display those employees who joined the company before 15 of
-- the months.
-- 14. Display those employees who has joined before 15th of the
-- month
-- 15. Display those employees whose joining DATE is available in
-- deptno

# 🔹 RETRIEVING DATA

## 1. Display empno, ename, dept name instead of deptno


SELECT
    e.empno,
    e.ename,
    CASE e.deptno
        WHEN 10 THEN 'RESEARCH'
        WHEN 20 THEN 'ACCOUNTING'
        WHEN 30 THEN 'SALES'
        WHEN 40 THEN 'OPERATIONS'
    END AS department
FROM employee e;


## 2. Display your age in days


SELECT DATEDIFF(CURDATE(), '2006-11-29') AS age_in_days;

## 3. Display your age in months


SELECT TIMESTAMPDIFF(MONTH, '2006-11-29', CURDATE()) AS age_in_months;


## 4. Display current date as 15th August Friday Nineteen Ninety-Seven


SELECT DATE_FORMAT('1997-08-15', '%D %M %W %Y') AS formatted_date;


## 5. Display formatted output for each employee as Scott joined company on Wednesday 13th August Nineteen Ninety


SELECT CONCAT(
        ename,' has joined the company on ',
        DATE_FORMAT(hiredate,'%W %D %M %Y')
    ) AS joining_info FROM employee
WHERE ename = 'SCOTT';


## 6. Find nearest Saturday after current date


SELECT DATE_ADD(CURDATE(), INTERVAL (7 - DAYOFWEEK(CURDATE())) DAY) AS next_saturday;


## 7. Display current time


SELECT CURTIME();


## 8. Display the date three months before current date


SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH);


## 9. Employees who joined in the month of December


SELECT ename, hiredate FROM employee
WHERE MONTH(hiredate) = 12;


## 10. Employees whose first 2 characters of hiredate = last 2 characters of salary


SELECT ename FROM employee
WHERE LEFT(YEAR(hiredate),2) = RIGHT(sal,2);



## 11. Employees whose 10% salary = year of joining


SELECT ename FROM employee
WHERE sal \* 0.10 = YEAR(hiredate);


## 12. Employees who joined before 15th of the month


SELECT ename, hiredate FROM employee
WHERE DAY(hiredate) < 15;



## 13. Employees whose joining date is available in deptno




SELECT ename FROM employee
WHERE DAY(hiredate) = deptno;

