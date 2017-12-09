USE movie_ratings;
-- add sql queries under the appropriate comment

-- exercise 1
select count(distinct mID) as numRatedMovies from Rating;
-- exercise 2
select count(rID) as numFourStarMovies from Rating group by stars having(stars = 4);
-- exercise 3
select max(ratingDate) as mostRecent from Rating;
-- exercise 4
select min(ratingDate) as firstFourStar from Rating where stars = 4;
-- exercise 5
select distinct rID, count(distinct mID) as numMovies from Rating group by rID;
-- exercise 6
select rID from Rating group by rID having(count(mID) > 1);
-- exercise 7
select rID, stars, ratingDate from Rating where mID = (select mID from Movie where title = "Gone with the Wind");
-- exercise 8
<<<<<<< HEAD
select name from Reviewer where rID in (select rID from Rating where stars >= 4);
=======

-- Did you save your SQL file on Cloud9?
>>>>>>> 0d13f25e5cb9390c462513ab53f9a9379be0612d
