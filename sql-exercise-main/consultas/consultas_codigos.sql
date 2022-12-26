--consulta_1
select employees.employees.emp_no, employees.employees.last_name, 
employees.employees.first_name, employees.employees.gender, salaries.salaries.salary
from employees.employees, salaries.salaries
where employees.employees.emp_no = salaries.salaries.emp_no

--consulta_2
select employees.employees.emp_no, employees.employees.last_name, 
employees.employees.first_name, employees.employees.hire_date
from employees.employees
where hire_date between '1986-01-01' and '1986-12-31'

--consulta_3
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date,dept_manager.to_date
from departments.departments, dept_manager.dept_manager, employees.employees
where employees.employees.emp_no =dept_manager.dept_manager.emp_no

--consulta_4
select employees.employees.emp_no, employees.employees.last_name, employees.employees.first_name, departments.departments.dept_name
from employees.employees, dept_emp.dept_emp, departments.departments
where employees.employees.emp_no = dept_emp.dept_emp.emp_no
and departments.departments.dept_no = dept_emp.dept_emp.dept_no

--consulta_5
select first_name, last_name
from employees.employees where first_name = 'Hercules' and last_name like 'B%'

--consulta_6
select employees.employees.emp_no, employees.employees.last_name, employees.employees.first_name,departments.departments.dept_name
from employees.employees, departments.departments, dept_emp.dept_emp 
where employees.employees.emp_no = dept_emp.dept_emp.emp_no
and departments.departments.dept_no = dept_emp.dept_emp.dept_no
and dept_emp.dept_emp.dept_no = 'd007'

--consulta_7

--consulta_8