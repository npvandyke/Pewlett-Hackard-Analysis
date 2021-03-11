--Create a table of retirees by title 

SELECT e.emp_no,
		e.first_name, 
		e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles 
FROM employees as e 
INNER JOIN titles as t 
ON e.emp_no = t.emp_no 
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no; 

--Create a table of most recent titles for retirees using DISTINCT ON clause 

SELECT DISTINCT ON (emp_no) emp_no, 
		first_name, 
		last_name, 
		title
INTO unique_titles  
FROM retirement_titles 
ORDER BY emp_no, to_date DESC; 

--Create a table w a count of unique retiree titles 
SELECT COUNT (title),title
INTO retiring_titles 
FROM unique_titles  
GROUP BY title
ORDER BY count DESC;

-- Create a table of mentorship-eligible employees 

SELECT DISTINCT ON (emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e 
INNER JOIN dept_emp as de 
ON e.emp_no = de.emp_no 
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no 
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

--Deliverable Three: extra tables/queries to answer additional questions 
-- Table for number of potential mentors by title 
SELECT COUNT (title) as mentors, title 
INTO mentorship_titles 
FROM mentorship_eligibility 
GROUP BY title 
ORDER BY mentors 