# Pewlett-Hackard-Analysis

Utilized PostgreSQL and PGAdmin to import six CSV files and create several SQL queries and tables to analyze Pewlett-Hackard employee data in regard to upcoming retirement eligibility.  

# Overview of the analysis:

The purpose of this analysis was to assist upper management at Pewlett-Hackard in "future proofing" the Company by deteriming the number of current employees eligible for the Company's retirement package by both department and job title, as well as determining the number of (and job title of) employees eligible to participate in a mentorship program with new employees as an alternative to the Company's retirement package. 

Below is an image of the schema that was used in importing the six provided CSV files as tables into a PostgreSQL database in order to perform queries on the data and provide the deliverables described above. 

![EmployeeDB](EmployeeDB.png)

# Results:

The images below include tables for the first two deliverables of the module challenge, which consisted of finding the number of retirement-eligible employees at Pewlett-Hackard (by title) as well as the number of mentorship-eligible employees. From the tables, we can draw the following conclusions: 

- There are 90,398 current employees potentially eligible for retirement (based on D.O.B) at Pewlett-Hackard 
- The vast majority of potentially eligible employees hold the title of Senior Engineer or Senior Staff, followed by Engineer and Staff  
- There are 1,550 mentorship eligible employees at Pewlett-Hackard 
- There are only two management positions potentially opening up at Pewlett-Hackard 

| Number of Retirement-Eligible Employees by Title | Mentorship-eligible Employees | 
:-------------------------:|:-------------------------:
![retirees_by_title](retirees_by_title.png) | ![mentorship_eligibility](mentorship_eligibility.png)

# Summary:

Number of Retirement-Eligible Employees by Department
![retirees_by_dept](retirees_by_dept.png)

THE ONE BY TITLE IS ALSO FILTERED FOR EMPLOYEES WHO HAVE ALREADY LEFT THE COMPANY WHAT IS GOING ON 300,024 employee numbers in
"salaries" database ... 
all distinct, so no raises? 
also in "salaries"  table, 
employee tenure always 1 yr 
Soooo this is not reflecting 
raises 
Also most recent salary is from 
2001 NOT reflecting 
9999-01-01
Most recent date before today 
is 2002-08-01 according to 
dept_emp table 
SELECT COUNT (emp_no) FROM salaries 
SELECT COUNT(DISTINCT(emp_no)) FROM salaries

![eligible_by_hire_date_retiring_titles](eligible_by_hire_date_retiring_titles.png)

![mentorship_titles](mentorship_titles.png)

The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)
