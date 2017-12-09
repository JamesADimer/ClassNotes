USE movie_ratings;
-- add sql queries under the appropriate comment

-- exercise 1
select name as reviewer, title, stars, ratingDate from Rating ra 
    join Reviewer re on ra.rID = re.rID 
    join Movie m on ra.mID = m.mID order by name;
-- exercise 2
select title, stars, ratingDate from Rating r 
    join Movie m on r.mID = m.mID where rID = 203;
-- exercise 3
select title from Movie m left outer join Rating r 
    on m.mID = r.mID where r.mID is null;
-- exercise 4
select name from Reviewer re join Rating ra 
    on re.rID = ra.rID join Movie m on ra.mID = m.mID 
    where title = "Snow White";
-- exercise 5
select name, count(mID) as numReviews from Reviewer re 
    join Rating ra on re.rID = ra.rID group by ra.rID;
