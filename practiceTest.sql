create table employees(
    employee_id int primary key,
    first_name varchar(20),
    last_name varchar(20),
    dept_id int,
    salary int,
    foreign key(dept_id) references departments(dept_id)
);

create table departments(
    dept_id int primary key,
    dept_name varchar(20)
);

1- Retrieve the first and last names of all employees.
select first_name,last_name from employees;

2-List the first and last names of employees who earn more than $5,500.
select first_name,last_name from employees where salary>5500;

3-Display all employees' first and last names along with their salaries, 
sorted by salary in descending order.
select first_name, last_name,salary from employee order by salary desc;

4-calculate the average salary of all employees
select avg(salary) from employee;

5-Retrieve the first and last names of employees along with the name
 of their respective departments.
select e.first_name,e.last_name,d.dept_name from employees e join departments d on e.dept_id=d.dept_id;

6-For each department, show the department name and the average salary of 
employees in that department, but only for departments where 
the average salary is greater than $5,500.
select d.dept_name,avg(e.salary) as avg_salary from employees e join departments d on e.dept_id=d.dept_id group by dept_name having avg_salary > 5500;

7-Find the first and last names of employees who earn more than the average salary of all employees.
select first_name,last_name from employees where salary > (select avg(salary) from employees);