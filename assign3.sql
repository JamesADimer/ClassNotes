USE assign3;
-- add sql queries under the appropriate comment

-- exercise 1
select name, city, country, height from skyscrapers order by completed_year desc;
-- exercise 2
select name, completed_year, height from skyscrapers where city = "Peoria";
-- exercise 3
select name, city, floors_above from skyscrapers where height > 400;
-- exercise 4
select name from skyscrapers where is_completed = 1 and city = "Nashville";
-- exercise 5
select name, city from skyscrapers where material = "steel/concrete" order by name asc;
-- exercise 6
select name, city, floors_above from skyscrapers where completed_year < 1900 and is_completed = 1 order by height asc;
-- exercise 7
select name, city, completed_year from skyscrapers where abandoned = 1 order by city, completed_year;
-- exercise 8
select distinct material from skyscrapers order by material asc;