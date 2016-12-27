SELECT emp.lname, depn.dependent_name
FROM employee emp, dependent depn 
where emp.sex=depn.sex and emp.ssn=depn.essn and
												emp.lname not in (select emp1.lname 
												from employee emp1,department dep
												where emp1.ssn=dep.mgrssn)
