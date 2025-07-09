-- CREATE TABLE: Country
DROP TABLE IF EXISTS netflix2.country_cleaned;

CREATE TABLE netflix2.country_cleaned (
  show_id VARCHAR(20),
  country VARCHAR(100)
);


INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(country, ',', 1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL 
  AND country <> '';


INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 2), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 1;


INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 3), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 2;
  
INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 4), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 3;
  
INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 5), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 4;
  
INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 6), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 5;

INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 7), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 6;

INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 8), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 7;

INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 9), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 8;
  
INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 10), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 9;
  
INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 11), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 10;
  
INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(country, ',', 12), ',', -1)) AS country
FROM netflix2.mytable
WHERE country IS NOT NULL
  AND country <> ''
  AND (LENGTH(country) - LENGTH(REPLACE(country, ',', ''))) >= 11;
  
INSERT INTO netflix2.country_cleaned (show_id, country)
SELECT show_id, NULL
FROM netflix2.mytable
WHERE show_id NOT IN (SELECT DISTINCT show_id FROM netflix2.country_cleaned);
  
select count(distinct show_id)
from netflix2.country_cleaned 
where country = 'United States';

DROP TABLE IF EXISTS netflix2.director;

-- CREATE TABLE: Director
CREATE TABLE netflix2.director (
  show_id VARCHAR(20),
  director VARCHAR(100)
);


INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(director, ',', 1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL 
  AND director <> '';

INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 2), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 1;

INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 3), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 2;
  
INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 4), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 3;
  
INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 5), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 4;
  
INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 6), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 5;

INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 7), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 6;

INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 8), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 7;

INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 9), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 8;
  
INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 10), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 9;
  
INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 11), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 10;
  
INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 12), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 11;
  
INSERT INTO netflix2.director (show_id, director)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(director, ',', 13), ',', -1)) AS director
FROM netflix2.mytable
WHERE director IS NOT NULL
  AND director <> ''
  AND (LENGTH(director) - LENGTH(REPLACE(director, ',', ''))) >= 12;
  
INSERT INTO netflix2.director (show_id, director)
SELECT show_id, NULL
FROM netflix2.mytable
WHERE show_id NOT IN (SELECT DISTINCT show_id FROM netflix2.director);

-- CREATE TABLE: listed_in

DROP TABLE IF EXISTS netflix2.listed_in;

CREATE TABLE netflix2.listed_in (
  show_id VARCHAR(20),
  listed_in VARCHAR(100)
);


INSERT INTO netflix2.listed_in (show_id, listed_in)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(listed_in, ',', 1)) AS listed_in
FROM netflix2.mytable
WHERE listed_in IS NOT NULL 
  AND listed_in <> '';


INSERT INTO netflix2.listed_in (show_id, listed_in)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(listed_in, ',', 2), ',', -1)) AS listed_in
FROM netflix2.mytable
WHERE listed_in IS NOT NULL
  AND listed_in <> ''
  AND (LENGTH(listed_in) - LENGTH(REPLACE(listed_in, ',', ''))) >= 1;


INSERT INTO netflix2.listed_in (show_id, listed_in)
SELECT DISTINCT show_id, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(listed_in, ',', 3), ',', -1)) AS listed_in
FROM netflix2.mytable
WHERE listed_in IS NOT NULL
  AND listed_in <> ''
  AND (LENGTH(listed_in) - LENGTH(REPLACE(listed_in, ',', ''))) >= 2;
  
select listed_in, count(distinct l.show_id)
from netflix2.listed_in l
join netflix2.titles t
  on l.show_id = t.show_id
where type = 'Movie'
group by listed_in
order by count(distinct l.show_id) desc
limit 20000;

-- CREATE TABLE: Rating_description

DROP TABLE IF EXISTS netflix2.rating_description;

CREATE TABLE netflix2.rating_description (
    rating VARCHAR(20) PRIMARY KEY,
    description TEXT
);

INSERT INTO rating_description (rating, description) VALUES
('G', 'General Audiences – Suitable for all ages.'), 
('PG', 'Parental Guidance Suggested – Some material may not be suitable for children.'),
('PG-13', 'Parents Strongly Cautioned – Some material may be inappropriate for children under 13.'),
('R', 'Restricted – Under 17 requires accompanying parent or adult guardian.'),
('NC-17', 'Adults Only – No one 17 and under admitted. Clearly adult content.'), 
('NR', 'Not Rated – Film/TV show has not been submitted for a rating or has no rating.'),
('UR', 'Unrated – Often used when an alternate version is released without a rating.'), 
('TV-Y', 'All Children – Especially for children ages 2–6; little or no violence, no sexual content.'), 
('TV-Y7', 'Older Children (7+) – May include mild fantasy violence.'), 
('TV-Y7-FV', 'Older Children (7+) – Contains fantasy violence that is more intense.'), 
('TV-G', 'General Audience – Suitable for all ages; little or no violence, sexual dialogue or strong language.'), 
('TV-PG', 'Parental Guidance Suggested – May contain material parents might find unsuitable for younger children.'), 
('TV-14', 'Parents Strongly Cautioned – May not be suitable for children under 14.'), 
('TV-MA', 'Mature Audience Only – Specifically designed to be viewed by adults; may be unsuitable for children under 17.'); 

-- CREATE TABLE: Titles

SET SQL_SAFE_UPDATES = 0;

UPDATE netflix2.mytable
SET duration = rating
WHERE rating IN ('66 min', '74 min', '84 min');

UPDATE netflix2.mytable
SET rating = NULL
WHERE rating IN ('66 min', '74 min', '84 min');

DROP TABLE IF EXISTS netflix2.titles;

CREATE TABLE netflix2.titles AS 
WITH titles AS (
  SELECT show_id, 
         duration, 	
         type,
         title,	
         date_added,	
         release_year,
         rating,
         description	
  FROM netflix2.mytable
),
sort AS (
  SELECT show_id,
	     CASE
           WHEN description LIKE '%violence%' 
           OR description LIKE '%drugs%' 
           OR description LIKE '%murder%' 
           OR description LIKE '%crime%' 
           OR description LIKE '%death%'
         THEN 'Dark Theme - Violence'
         ELSE 'Light Theme - Non Violence'
	     END AS content_quality
  FROM titles
),
new_movies AS (
  SELECT show_id,
         CASE
           WHEN release_year > 2000 THEN 'New'
           ELSE 'Old'
         END AS new_movie
  FROM titles
),
new_added AS (
  SELECT show_id,
         CASE
           WHEN date_added > '2020-09-25' THEN 'Recently Added'
           ELSE 'added more than 1 year ago'
         END AS new_added
  FROM titles
),
duration_check AS (
  SELECT show_id,
         CASE
           WHEN type = 'Movie' THEN CONVERT(SUBSTRING_INDEX(duration, ' ', 1), UNSIGNED)
           ELSE NULL 
         END AS duration_mins,
	     CASE
           WHEN type = 'TV Show' THEN CONVERT(SUBSTRING_INDEX(duration, ' ', 1), UNSIGNED)
           ELSE NULL
         END AS duration_season
  FROM titles
)
SELECT t.show_id, t.type, t.title, t.date_added, t.release_year, t.rating,
       s.content_quality,
       n.new_movie,
       na.new_added,
       du.duration_mins,
       du.duration_season
FROM titles t
LEFT JOIN sort s ON t.show_id = s.show_id
LEFT JOIN new_movies n ON t.show_id = n.show_id
LEFT JOIN new_added na ON t.show_id = na.show_id
LEFT JOIN duration_check du ON t.show_id = du.show_id;

-- re-enable safe updates
SET SQL_SAFE_UPDATES = 1;


DROP TABLE IF EXISTS netflix2.rating_description;

CREATE TABLE netflix2.rating_description (
    rating VARCHAR(20) PRIMARY KEY,
    description TEXT
);

INSERT INTO rating_description (rating, description) VALUES
('G', 'General Audiences – Suitable for all ages.'), -- 
('PG', 'Parental Guidance Suggested – Some material may not be suitable for children.'), -- 
('PG-13', 'Parents Strongly Cautioned – Some material may be inappropriate for children under 13.'), -- 
('R', 'Restricted – Under 17 requires accompanying parent or adult guardian.'), -- 
('NC-17', 'Adults Only – No one 17 and under admitted. Clearly adult content.'), -- 
('NR', 'Not Rated – Film/TV show has not been submitted for a rating or has no rating.'), -- 
('UR', 'Unrated – Often used when an alternate version is released without a rating.'), -- 
('TV-Y', 'All Children – Especially for children ages 2–6; little or no violence, no sexual content.'), -- 
('TV-Y7', 'Older Children (7+) – May include mild fantasy violence.'), -- 
('TV-Y7-FV', 'Older Children (7+) – Contains fantasy violence that is more intense.'), --
('TV-G', 'General Audience – Suitable for all ages; little or no violence, sexual dialogue or strong language.'), -- 
('TV-PG', 'Parental Guidance Suggested – May contain material parents might find unsuitable for younger children.'), 
('TV-14', 'Parents Strongly Cautioned – May not be suitable for children under 14.'),  
('TV-MA', 'Mature Audience Only – Specifically designed to be viewed by adults; may be unsuitable for children under 17.'); 



