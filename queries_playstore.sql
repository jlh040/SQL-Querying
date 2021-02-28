-- Select the app with an ID of 1880
SELECT * FROM analytics WHERE id = 1880;

-- Select the id and app name for all apps that were updated on August 1, 2018
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- Find the number of apps that are in each category
SELECT category, COUNT(*) FROM analytics GROUP BY category;