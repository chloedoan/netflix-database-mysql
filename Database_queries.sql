-- Top 10 Countries with Most Releases

SELECT c.country, COUNT(DISTINCT t.show_id) as Number_of_release
FROM netflix2.country_cleaned c
LEFT JOIN netflix2.titles t 
  ON c.show_id = t.show_id
WHERE c.country IS NOT NULL
GROUP BY c.country
ORDER BY COUNT(DISTINCT t.show_id) DESC
LIMIT 10;

-- Top 10 Directors with Most Releases

SELECT d.director, COUNT(DISTINCT t.show_id) as Number_of_release
FROM netflix2.director d
LEFT JOIN netflix2.titles t 
  ON d.show_id = t.show_id
WHERE d.director IS NOT NULL
GROUP BY d.director
ORDER BY COUNT(DISTINCT t.show_id) DESC
LIMIT 10;

-- Comparative Analysis of Movie Duration by Genre

SELECT g.Listed_in as Genre, ROUND(AVG(t.duration_mins),2) as average_duration
FROM netflix2.genre g
LEFT JOIN netflix2.titles t
  ON g.show_id = t.show_id
WHERE type = 'Movie'
GROUP BY g.listed_in 
ORDER BY AVG(t.duration_mins) DESC;

-- Release Timing Optimization with Genre Focus
 
SELECT MONTH(date_added) as release_month, l.listed_in, COUNT(DISTINCT t.show_id) as total_releases
FROM netflix2.titles t
LEFT JOIN netflix2.listed_in l
  ON t.show_id = l.show_id
GROUP BY MONTH(date_added), l.listed_in
ORDER BY COUNT(DISTINCT t.show_id) DESC, release_month;

-- Detailed Market Analysis

SELECT country, type, COUNT(DISTINCT t.show_id) as total_releases
FROM netflix2.titles t
LEFT JOIN netflix2.countries c
  on t.show_id = c.show_id
WHERE country IS NOT NULL
GROUP BY country, type
ORDER BY COUNT(DISTINCT t.show_id) DESC;

-- Highest Weighted Score
SELECT t.show_id, t.title, t.type,
round((averageRating*log10(numVotes+1))/10,2) as Weighted_Score
FROM netflix2.titles t
JOIN netflix2.joined_netflix_imdb j
  ON t.show_id = j.show_id
GROUP BY t.show_id, title, t.type
ORDER BY Weighted_Score DESC;

-- Average Rating Range by Genre
SELECT g.listed_in, 
       min(averageRating) as lowest_rating, 
	   max(averageRating) as highest_rating, 
       AVG(averageRating) as average_rating
FROM netflix2.genre g
JOIN netflix2.titles t 
  ON g.show_id = t.show_id
JOIN joined_netflix_imdb j 
  ON t.show_id = j.show_id
GROUP BY g.listed_in
ORDER BY AVG(averageRating) DESC




