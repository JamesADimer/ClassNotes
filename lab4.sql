USE dreamhome;
-- add sql queries under the appropriate comment

-- exercise 1
select left(telNo, locate("-", telNo)-1) as areaCode from client;
-- exercise 2
select rent, format(rent, 2) from propertyForRent;
-- exercise 3
select date_format(current_timestamp(),"%m/%d/%y");
select date_format(current_timestamp(),"%M %d, %Y");
select date_format(current_timestamp(),"%d-%b-%Y");
select date_format(current_timestamp(),"%W, %M %D");
-- exercise 4
select date_format(current_timestamp(),"%T");
select date_format(current_timestamp(),"%h:%i %p");