SET DATESTYLE TO PostgreSQL,European;


CREATE SCHEMA employees;
CREATE SCHEMA salaries;
CREATE SCHEMA titles;
CREATE SCHEMA departments;
CREATE SCHEMA dept_emp;
CREATE SCHEMA dept_manager;


CREATE TABLE employees.employees (
emp_no varchar(20) primary key,
birth_date date,
first_name varchar (50),
last_name varchar (50),
gender char,
hire_date date
);

CREATE TABLE salaries.salaries (
emp_no varchar(20) references employees.employes(emp_no),
salary money,
from_date date,
to_date date
);

CREATE TABLE titles.titles (
emp_no varchar(20) references employees.employes(emp_no),
title varchar(50),
from_date date,
to_date date
);

CREATE TABLE departments.departments (
dept_no varchar(20) primary key,
dept_name varchar(50)
);

CREATE TABLE dept_emp.dept_emp (
dept_no varchar(20) references departments.departments(dept_no),
emp_no varchar(50) references employees.employes(emp_no),
from_date date,
to_date date
);

CREATE TABLE dept_manager.dept_manager (
dept_no varchar(20) references departments.departments(dept_no),
emp_no varchar(20) references employees.employes(emp_no),
from_date date,
to_date date
);

--alterar tipo de dados em tabela
alter table employees.employees alter column gender type char


-- consultar criação e/ou população de tabelas
select * from employees.employees


-- importando dados de tabela csv

COPY employees.employees
FROM 'C:\sql-exercise\data\employees.csv'
DELIMITER ';'
csv header;

COPY salaries.salaries
FROM 'C:\sql-exercise\data\salaries.csv'
DELIMITER ';'
csv header;

COPY titles.titles
FROM 'C:\sql-exercise\data\titles.csv'
DELIMITER ';'
csv header;

COPY departments.departments 
FROM 'C:\sql-exercise\data\departments.csv'
DELIMITER ';'
csv header;

COPY dept_emp.dept_emp
FROM 'C:\sql-exercise\data\dept_emp.csv'
DELIMITER ';'
csv header;

COPY dept_manager.dept_manager
FROM 'C:\sql-exercise\data\dept_manager.csv'
DELIMITER ';'
csv header;
