/*SELECT COUNT(*)
FROM data_analyst_jobs; 
Q1, 1793*/

/*SELECT *
FROM data_analyst_jobs
LIMIT 10; 
Q2 Exxon Mobil */

/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN'; 
Q3a 21 in TN*/

/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'KY' OR location = 'TN'; 
Q3b 27 in KY and TN*/

/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > '4'; 
Q4 There are 3*/

/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN '500' AND '1000'; 
Q5 151*/

/*SELECT location AS state, ROUND(AVG(star_rating), 2) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC; 
Q6 NE with 4.20*/

/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs; 
Q7 881 distinct job titles*/

/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA'; 
Q8 230 distinct titles in CA*/

/*SELECT DISTINCT company, ROUND(AVG(star_rating), 2)
FROM data_analyst_jobs
WHERE review_count > '5000' AND company IS NOT NULL
GROUP BY company
ORDER BY company ASC; 
Q9A*/

/*SELECT COUNT(DISTINCT company)
FROM data_analyst_jobs
WHERE review_count > '5000';
Q9B there are 40 companies with over 5000 reviews*/

/*SELECT DISTINCT company, ROUND(AVG(star_rating), 4) AS avg_star
FROM data_analyst_jobs
WHERE review_count > '5000' AND company IS NOT NULL
GROUP BY company
ORDER BY avg_star DESC; 
Q10 American Express 4.2*/

/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%'; 
Q11 754 different titles */

/*SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title NOT IN
	(SELECT title
	 FROM data_analyst_jobs
	 WHERE title ILIKE '%Analyst%' OR title ILIKE '%Analytics%'); 
 Q12 4, and they all contain "Tableau"