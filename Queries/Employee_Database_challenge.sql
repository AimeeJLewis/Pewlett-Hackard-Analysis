-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT * FROM employees;

-- Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT * FROM titles;

-- Create a new table for retirees by title.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_by_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
SELECT * FROM retirement_by_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rbt.emp_no) rbt.emp_no,
	rbt.first_name,
	rbt.last_name,
	rbt.title
INTO unique_titles
FROM retirement_by_titles as rbt
WHERE rbt.to_date = ('9999-01-01')
ORDER BY rbt.emp_no ASC, rbt.to_date DESC;

-- Retrieve the number of titles from the Unique Titles table.
SELECT * FROM unique_titles;

-- Create a Retiring Titles table.
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;


-- DELIVERABLE 2
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM titles;

-- Use DISTINCT ON to retrieve first occurrence of the employee number 
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;
