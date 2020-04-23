USE employees;

# Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department
# along with the name of the current manager for that department.
SELECT dept.dept_name AS 'Department Name',
CONCAT(drones.first_name, ' ', drones.last_name) AS 'Department Manager'
FROM employees AS drones
JOIN dept_manager AS dm
    ON drones.emp_no = dm.emp_no
JOIN departments AS dept
    ON dm.dept_no = dept.dept_no
WHERE dm.to_date > CURDATE()
ORDER BY dept.dept_name;


# Find the name of all departments currently managed by women.
SELECT dept.dept_name
    AS 'Department Name', CONCAT(drones.first_name, ' ', drones.last_name)
    AS 'Department Manager'
FROM employees AS drones
JOIN dept_manager dm
    ON drones.emp_no = dm.emp_no
JOIN departments dept
    ON dm.dept_no = dept.dept_no
WHERE dm.to_date > CURDATE()
AND drones.gender = 'F'
ORDER BY dept.dept_name;


# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS 'Title', COUNT(titles.emp_no) AS 'COUNT'
FROM titles
    JOIN dept_emp
        ON titles.emp_no = dept_emp.emp_no
    JOIN departments
        ON dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01'
    AND departments.dept_name = 'Customer Service'
    AND dept_emp.to_date = '9999-01-01'
GROUP BY titles.title;