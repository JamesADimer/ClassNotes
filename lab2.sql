USE dreamhome;
-- add sql queries under the appropriate comment

-- exercise 1
select count(clientNo) as numClients from client;

select count(distinct city) as cityCount from propertyForRent;

select count(propertyNo) as numProperties from propertyForRent 
where city = "Glasgow";

select min(rent) as minRent from propertyForRent;
-- exercise 2
select city, count(propertyNo) as numProperties from propertyForRent 
group by city;

select type, avg(rooms) as avgRooms, avg(rent) as avgRent 
from propertyForRent group by type;

select type, avg(rooms) as avgRooms, avg(rent) as avgRent 
from propertyForRent where city="Glasgow" group by type;
-- exercise 3
select city, avg(rent) as avg_rent, count(propertyNo) 
as numProperties  from propertyForRent group by city 
having count(propertyNo) > 1;

select position, avg(salary) from staff group by position 
having avg(salary) > 10000;
-- exercise 4
select count(clientNo) as totalClients from client;

select count(staffNo) as numLess10 from staff 
where salary < 10000;

select max(salary) as maxSalary from staff;

select city, count(branchNo) as numBranches 
from branch group by city;

select city, avg(rent) as avgRent from propertyForRent 
group by city;

select branchNo, avg(salary) as avgSalary from staff 
where salary > 12000 group by branchNo;

select branchNo, avg(salary) as avgSalary from staff 
group by branchNo having avg(salary) > 12000;
-- exercise 5
select * from viewing where propertyNo = 
(select propertyNo from propertyForRent where city = "Aberdeen");

select street, city, type from propertyForRent where ownerNo = 
(select ownerNo from privateOwner where lName = "Farrel" and fName = "Carol");

select street, city, type, rent from propertyForRent where rent < 
(select avg(rent) from propertyForRent);
-- exercise 6
select * from viewing where propertyNo in 
(select propertyNo from propertyForRent where city = "Glasgow");

select street, city, type, rent from propertyForRent where rent < 
some(select rent from propertyForRent where city = "Glasgow");