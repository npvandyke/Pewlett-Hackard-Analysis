--1952 through 1955 employee birthdays 
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- 1952 employee birthdays only 
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

--1953 employee birthdays only 
SELECT first_name, last_name 
FROM employees 
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

--1954 employee birthdays only 
SELECT first_name, last_name 
FROM employees 
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

--1955 employee birthdays only 
SELECT first_name, last_name
FROM employees 
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees eligible to retire 
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Create a new table of retirement-eligibile employees
SELECT first_name, last_name
INTO retirement_info 
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info
