USE dreamhome;
-- add sql queries under the appropriate comment

-- exercise 1
select street, city, type, fName, lName from propertyForRent r 
    join privateOwner o on r.ownerNo = o.ownerNo order by lName;

select fName, lName, position, city from staff s 
    join branch b on s.branchNo = b.branchNo order by lName;
    
-- exercise 2
select fName, lName, city, viewDate, comment from viewing v 
    join client c on v.clientNo = c.clientNo 
    join propertyForRent r on v.propertyNo = r.propertyNo;
    
select street, city, type, o.lName as owner, s.lName as staff 
    from propertyForRent r join privateOwner o on r.ownerNo = o.ownerNo 
    join staff s on r.staffNo = s.staffNo;