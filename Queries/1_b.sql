select lname,fname
from employee e
where not exists
 (select *
 from projects p
 where p.dnum = 5 and not exists
 (select *
 from works_on w
 where w.essn = e.ssn and
 w.pno = p.pnumber));
 