SELECT * from [dbo].[IMDB_data]

ALTER TABLE [dbo].[IMDB_data]
ALTER COLUMN Ratings DECIMAL(5,1)

---Top 10 Highest Rated Movie----
SELECT TOP 10 Title, Release, Ratings
FROM [dbo].[IMDB_data]
ORDER BY Ratings DESC

---Longest 10 Movies by Runtime----
SELECT TOP 10 Title, Release, Runtime
FROM [dbo].[IMDB_data]
ORDER BY Runtime DESC

---Average Rating per decade--
SELECT (Release/10)*10 AS Decade, COUNT(*) AS MovieCount, AVG(Ratings) AS AvgRating
FROM [dbo].[IMDB_data]
GROUP BY (Release/10)*10
ORDER BY Decade

---Ratings by Movie Classification---
SELECT Rated, COUNT(*) AS MovieCount, AVG(Ratings) AS AvgRating
FROM [dbo].[IMDB_data]
GROUP BY Rated
ORDER BY AvgRating DESC

---Do longer movies get better rating?--
SELECT CASE 
           WHEN Runtime < 100 THEN '<100 mins'
           WHEN Runtime BETWEEN 100 AND 150 THEN '100-150 mins'
           WHEN Runtime BETWEEN 151 AND 200 THEN '151-200 mins'
           ELSE '200+ mins'
       END AS RuntimeCategory,
       COUNT(*) AS MovieCount,
       AVG(Ratings) AS AvgRating
FROM [dbo].[IMDB_data]
GROUP BY CASE 
           WHEN Runtime < 100 THEN '<100 mins'
           WHEN Runtime BETWEEN 100 AND 150 THEN '100-150 mins'
           WHEN Runtime BETWEEN 151 AND 200 THEN '151-200 mins'
           ELSE '200+ mins'
         END
ORDER BY RuntimeCategory

---Top 50 vs Bottom 50 Comparison---
SELECT 'Top 50' AS Category, AVG(Ratings) AS AvgRating, AVG(Runtime) AS AvgRuntime
FROM [dbo].[IMDB_data]
WHERE Rank <= 50
UNION
SELECT 'Bottom 50', AVG(Ratings), AVG(Runtime)
FROM [dbo].[IMDB_data]
WHERE Rank > 200

