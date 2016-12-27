SELECT dep.dname,dep.dnumber,count(depl.dlocation) as dept_count
FROM department dep, dept_locations depl
Where dep.dnumber=depl.dnumber 
Group by dep.dname,dep.dnumber
order by dept_count desc limit 1
