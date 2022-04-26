-- Exercise 1
-- SELECT * FROM movie;
-- SELECT title FROM movie WHERE director = 'Steven Spielberg';

-- Exerecise 2
-- SELECT distinct year FROM movie LEFT JOIN rating ON movie.mID = rating.mID 
-- WHERE stars > 3 ORDER BY year;

-- Exercise 3
-- SELECT title FROM movie LEFT JOIN rating ON movie.mID = rating.mID 
-- WHERE stars IS NULL;

-- Exercise 4
-- SELECT name FROM reviewer LEFT JOIN rating ON reviewer.rID = rating.rID 
-- WHERE ratingDate IS NULL;

-- Exercise 5
-- SELECT reviewer.name, movie.title, rating.stars, rating.ratingDate 
-- FROM rating
-- INNER JOIN reviewer ON rating.rID = reviewer.rID
-- INNER JOIN movie ON rating.mID = movie.mID
-- ORDER BY reviewer.name, movie.title, rating.stars;

-- Exercise 6
-- SELECT reviewer.name, movie.title
-- FROM  movie
-- INNER JOIN rating firstReview USING (mID)
-- INNER JOIN rating secondReview USING (rID,mID)
-- INNER JOIN reviewer USING (rID)
-- where firstReview.mID = secondReview.mID AND firstReview.ratingDate > secondReview.ratingDate AND firstReview.stars > secondReview.stars;