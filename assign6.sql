USE menagerie;
-- add sql queries under the appropriate comment

-- exercise 1
insert into pet values("Bailey", "Jimmy","cat","m","2015-02-07",null);
-- exercise 2
insert into event values ("Bailey","2017-10-09","vet","standard checkup");
-- exercise 3
update pet set species = "horse" where name = "Bailey";
-- exercise 4
delete from event where name = "Bailey";