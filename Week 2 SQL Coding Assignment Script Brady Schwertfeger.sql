SELECT departments.dept_name, COUNT(employees.emp_no) FROM departments
INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE employees.birth_date > ‘1965-01-01;
GROUP BY departments.dept_name;

SELECT titles.title, avg(salaries.salary) from salaries
INNER JOIN titles ON titles.emp_no = salaries.emp_no
WHERE salaries.to_date = ‘9999-01-01’ AND titles.to_date = ‘9999-01-01’
GROUP BY titles.title;

SELECT departments.dept_name, sum(salaries.salary) FROM departments
INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
INNER JOIN salaries ON salaries.emp_no = dept_emp.emp_no
WHERE YEAR(salaries.from_date) <= 1992 AND YEAR(salaries.to_date) >= 1990
AND deparments.dept_name = ‘Marketing”;
