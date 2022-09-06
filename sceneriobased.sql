- 
select * from tblDPT;
select * from tblEMP;



--a list of MANAGERS. 
select * from tblEMP where job='MANAGER';


select ename, salary from tblEMP where salary > 1000;



select ename, salary from tblEMP where ename != 'JAMES';




select * from tblEMP where ename like 'S%';



select ename from tblEMP where ename like '%A%';



select ename from tblEMP where ename like '___L%';




select salary/30 as 'DAILY SALARY OF JONES' from tblEMP where ename = 'JONES';




select sum(salary) as 'TOTAL MONTHLY SALARY OF ALL EMPLOYEES' from tblEMP;




select AVG(salary*12) as 'AVERAGE ANNUAL SALARY' from tblEMP;



select ename, job, salary, deptno from tblEMP where job != 'SALESMAN' OR deptno <> 30;




select distinct(e.deptno) as 'DEPARTMENTS',(select dname from tblDPT where deptno = e.deptno) 'DEPARTMENT NAME'  from tblEMP e where deptno is not null;




select ename 'EMPLOYEE', salary 'MONTLY SALARY'from tblEMP where salary > 1500 and deptno in (10, 30)


 
select ename , job ,  salary from tblEMP where job in ('MANAGER', 'ANALYST') AND salary not in 
(1000, 3000, 5000);




select ename, job, comm 'commission' from tblEMP where comm > (salary + salary * 0.1);




select ename from tblEMP where ename like '%L%L%' and deptno = 30 or mgr_id = 7782;




select ename from tblEMP where DATEDIFF(YEAR, hiredate, GETDATE())  BETWEEN 10 AND 20;
select COUNT(empno) from tblEMP where DATEDIFF(YEAR, hiredate, GETDATE())  BETWEEN 10 AND 20;




select ename, dname from tblEMP e join tblDPT d on e.deptno = d.deptno order by dname asc , ename desc;




select DATEDIFF(YEAR, hiredate, GETDATE()) 'EXPERIENCE OF MILLER' from tblEMP where ename='MILLER';
