-- part 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s
on e.emp_no = s.emp_no;

-- part 2
select first_name, last_name, hire_date
from employees
where right(hire_date, 4) = '1986';

-- part 3
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager
on departments.dept_no = dept_manager.dept_no
inner join employees
on dept_manager.emp_no = employees.emp_no;

-- part 4
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
inner join dept_emp
on departments.dept_no = dept_emp.dept_no
inner join employees
on dept_emp.emp_no = employees.emp_no;


-- part 5
select first_name, last_name, sex from employees
where first_name = 'Hercules'
and last_name like 'B%';

-- part 6
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
inner join dept_emp
on departments.dept_no = dept_emp.dept_no
inner join employees
on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales';

-- part 7
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
inner join dept_emp
on departments.dept_no = dept_emp.dept_no
inner join employees
on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Development'
or departments.dept_name = 'Sales';

-- part 8
select last_name, count(first_name) from employees
group by last_name
order by count(first_name) desc;