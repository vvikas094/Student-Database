select pname, pnumber, min(hours)
from projects, works_on, employee
where ssn = essn and pnumber = pno
group by pname, pnumber
having avg(hours) <= 20;
