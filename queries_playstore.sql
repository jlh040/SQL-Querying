-- Select the app with an ID of 1880
SELECT * FROM analytics WHERE id = 1880;

-- Select the id and app name for all apps that were updated on August 1, 2018
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- Find the number of apps that are in each category
SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- Find the top 5 most reviewed apps and the number of reviews for each
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

-- Find the app that has the most reviews with a rating that is atleast 4.8
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

-- Find the average rating for each category ordered by the highest rated to lowest rated
SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating DESC;