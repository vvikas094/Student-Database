SELECT emp.fname, emp.lname, emp.salary,sup.fname,sup.lname,sup.salary
FROM employee emp, employee sup
WHERE emp.superssn=sup.ssn and emp.salary IN 
											(select emp1.salary 
											from employee emp1 
                                            where emp1.salary < sup.salary)