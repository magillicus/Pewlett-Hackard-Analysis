-- Create Retirement Titles Table
SELECT e.emp_no, e.first_name, e.last_name, 
	tt.title, tt.from_date, tt.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as tt
ON (e.emp_no = tt.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_Date DESC;

-- Retrieve Number of 'Silver Tsunami' Employees by their most recent job titles
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

-- Create Mentorship Eligibility Table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	tt.title
INTO mentorship_eligibility
FROM dept_emp as de
INNER JOIN employees as e
ON (de.emp_no = e.emp_no)
INNER JOIN titles as tt
ON (e.emp_no = tt.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;