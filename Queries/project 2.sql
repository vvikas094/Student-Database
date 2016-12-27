
CREATE SCHEMA paisley;

USE paisley;
 
CREATE TABLE student
(
mnumber varchar(10) primary key,
lname varchar(20),
fname varchar(20),
address varchar(30),
nationality varchar(10),
sex varchar(1),
stat varchar(10),
category varchar(2),
dob varchar(10)
);

INSERT INTO student
(mnumber,lname, fname, address, nationality, sex, stat,category,dob)
VALUES
('1000','Smith','Will','250 clifton ave','American','M','waiting','G','06.05.1994'),
('1001','Franco','James','250 clifton ave','American','M','waiting','G','07.05.1994'),
('1002','Davis','Robert','250 clifton ave','American','M','waiting','G','08.05.1994'),
('1003','Hickey','John','250 clifton ave','American','M','waiting','G','09.05.1994'),
('1004','Cruise','Thomas','250 clifton ave','American','M','waiting','G','10.05.1994'),
('1005','Obama','Barrack','250 clifton ave','American','M','waiting','G','11.05.1994'),
('1006','Clinton','Hillary','250 clifton ave','American','F','waiting','G','12.05.1994'),
('1007','Bush','George','250 clifton ave','American','M','waiting','G','02.05.1994');


CREATE TABLE department
(
dnumber int primary key,
advisor_name varchar(15),
advisor_info varchar(10)
);

INSERT INTO department
(dnumber, advisor_name, advisor_info)
VALUES
(1,'Santa Ono','5133199621'),
(2,'Julie Muenchen','5135569621'),
(3,'Karen Davis','5135567433'),
(4,'Fred Beyyete','5135561111'),
(5,'Paul Talaga','5135561212'),
(6,'Kenneth Berman','5135564948'),
(7,'Rui Dai','5135561234'),
(8,'Nicolas Cole','5135560000'),
(9,'Eugene Rhodes','5135562000'),
(10,'Tom Baldwin','5133199622'),
(11,'Taylor Swift','5133199620'),
(12,'Meryl Turner','5133199629'),
(13,'Adam Clasper','5133199777');


CREATE TABLE term
(
yyear int,
semester varchar(7),
primary key (yyear, semester)
);

INSERT INTO term
(yyear, semester)
VALUES

(2015,'Fall'),
(2015,'Fall'),
(2015,'Fall'),
(2015,'Fall'),
(2015,'Fall'),
(2015,'Fall'),
(2014,'Spring'),
(2014,'Spring'),
(2014,'Spring'),
(2014,'Spring'),
(2014,'Spring'),
(2014,'Spring');


CREATE TABLE enroll_in
(
year_num varchar(1),
mnumber  varchar(10),
dnumber int,
semster varchar(7),
yyear int,
primary key (mnumber,dnumber,semester,yyear)
);

INSERT INTO enroll_in
(year_num, mnumber, dnumber, semster, yyear)
VALUES
('5','1000',3,'Fall',2015),
('5','1001',3,'Fall',2015),
('5','1002',3,'Fall',2015),
('5','1003',3,'Fall',2015),
('5','1004',3,'Fall',2015),

('4','1001',3,'Fall',2014),
('3','1001',3,'Fall',2013),
('2','1001',3,'Fall',2012),
('1','1001',3,'Fall',2011),

('4','1002',3,'Fall',2014),
('3','1002',3,'Fall',2013),
('2','1002',3,'Fall',2012),
('1','1002',3,'Fall',2011),

('4','1003',3,'Fall',2014),
('3','1003',3,'Fall',2013),
('2','1003',3,'Fall',2012),
('1','1003',3,'Fall',2011),

('4','1004',3,'Fall',2014),
('3','1004',3,'Fall',2013),
('2','1004',3,'Fall',2012),
('1','1004',3,'Fall',2011),

('4','1005',3,'Fall',2014),
('4','1005',3,'Fall',2013),
('4','1005',3,'Fall',2012),
('4','1005',3,'Fall',2011);



CREATE TABLE leases
(
lease_num varchar(10) primary key,
mnumber varchar(10),
semester varchar(7),
yyear int,
place_num varchar(10),
move_in_date varchar(10),
move_out_date varchar(10),
duration varchar(5),
primary key (mnumber, semester, yyear, place_id)
);

INSERT INTO leases
(lease_num,mnumber,semester,yyear,place_id,move_in_date,move_out_date,duration)
VALUES
('1324','1001','Fall',2015,'25','12.06.2011','07.06.15','5'),

('1324','1001','Fall',2014,'25','12.06.2011','07.06.15','5'),
('1324','1001','Fall',2013,'25','12.06.2011','07.06.15','5'),
('1324','1001','Fall',2012,'25','12.06.2011','07.06.15','5'),
('1324','1001','Fall',2011,'25','12.06.2011','07.06.15','5'),

('1325','1002','Fall',2014,'25','12.06.2011','07.06.15','5'),
('1325','1002','Fall',2013,'25','12.06.2011','07.06.15','5'),
('1325','1002','Fall',2012,'25','12.06.2011','07.06.15','5'),
('1325','1002','Fall',2011,'25','12.06.2011','07.06.15','5'),

('1326','1003','Fall',2014,'25','12.06.2011','07.06.15','5'),
('1326','1003','Fall',2013,'25','12.06.2011','07.06.15','5'),
('1326','1003','Fall',2012,'25','12.06.2011','07.06.15','5'),
('1326','1003','Fall',2011,'25','12.06.2011','07.06.15','5'),

('1327','1004','Fall',2014,'25','12.06.2011','07.06.15','5'),
('1327','1004','Fall',2013,'25','12.06.2011','07.06.15','5'),
('1327','1004','Fall',2012,'25','12.06.2011','07.06.15','5'),
('1327','1004','Fall',2011,'25','12.06.2011','07.06.15','5'),

('1328','1005','Fall',2015,'25','12.06.2011','07.06.15','5'),
('1328','1005','Fall',2015,'25','12.06.2011','07.06.15','5'),
('1328','1005','Fall',2015,'25','12.06.2011','07.06.15','5'),
('1328','1005','Fall',2015,'25','12.06.2011','07.06.15','5');


CREATE TABLE room
(
place_num varchar(10) primary key,
rName varchar(20),
suite_num int,
rent_rate float
);

INSERT INTO room
(place_num,rName,suite_num,rent_rate)
VALUES

('22','Turner',2,10.00),
('23','Turner',2,10.00),
('24','Turner',2,10.00),
('25','Turner',2,10.00),
('26','Turner',2,10.00);

create table suite
(
suite_num int primary key,
rName varchar(20),
no_of_rooms int
);

INSERT INTO suite
(suite_num,rName,no_of_rooms)
VALUES
(2,'Turner',5)
(3,'Turner',5)
(4,'Turner',5)
(5,'Turner',5)
(6,'Turner',5);

CREATE TABLE residence_hall
(
rName varchar(20) primary key,
 phone_num varchar(10),
 address varchar(30),
 unumber varchar(10)
 );
 
 INSERT INTO residence_hall
 (rName,phone_num,address,unumber)
 VALUES
 
('Turner','5135568888','250 clifton ave','1001'),
('Turner','5135568788','250 clifton ave','1002'),
('Turner','5135568887','250 clifton ave','1003'),
('Turner','5135567888','250 clifton ave','1004'),
('Turner','5135568700','250 clifton ave','1005');
 
 CREATE TABLE staff
 (
 unumber varchar(10) primary key,
 fname varchar(10),
 lname varchar(10),
 rName varchar(20),
 office_num varchar(5),
 dob varchar(10),
 address varchar(20),
 gender varchar(1),
 job_title varchar(10)
 );
 
 INSERT INTO staff
 (unumber,fname,lname,rName,office_num,dob, address,gender,job_title)
 VALUES
 
('1001','Will','Hill','Turner','12','06.08.1970','250 Clifton Ave','Hall Manager'),
('1002','John','Smith','Turner','13','06.07.1970','250 Clifton Ave','Hall Manager'),
('1003','Thomas','Edison','Turner','14','06.06.1970','250 Clifton Ave','Hall Manager'),
('1004','James','Bond','Turner','15','06.05.1970','250 Clifton Ave','Hall Manager'),
('1005','Robert','Downey','Turner','16','06.04.1970','250 Clifton Ave','Hall Manager');