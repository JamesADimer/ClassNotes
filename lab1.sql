USE dreamhome;
-- add sql queries under the appropriate comment

-- exercise 1
select propertyNo, type, rent from propertyForRent;
select * from branch;
select fName, telNo from client;
-- exercise 2
select propertyNo, street, city, type, rent as monthlyRent,
    rent * 12 as annualRent 
from propertyForRent;
-- exercise 3
select concat(lName, ", ", fName) as fullName from staff;
-- exercise 4
select * from propertyForRent where rent <= 400;
select * from client where prefType = "house";
select * from viewing where viewDate > "2015-05-15";
-- exercise 5
select * from staff where salary = 9000 and position = "assistant";
select * from propertyForRent where city = "Glasgow" and rent < 400;
select * from viewing where viewDate >= "2015-04-01" and viewDate < "2015-05-01";
-- exercise 6
select * from viewing order by viewDate asc;
select * from viewing order by viewDate desc;
select clientNo from viewing order by viewDate asc;