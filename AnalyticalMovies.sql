SELECT COUNT(*) FROM movies;
SELECT MAX(imdb_rating) FROM movies where industry="hollywood";
SELECT MIN(imdb_rating) FROM movies;
SELECT ROUND(AVG(imdb_rating),2) as avg_rating FROM movies where studio="Marvel studios";
SELECT industry,COUNT(*) from movies group by industry;
SELECT studio, COUNT(*) as cnt FROM movies where studio!="" group by studio order by cnt DESC;
SELECT studio,COUNT(*) as cnt,AVG(imdb_rating) as avg_rating FROM movies group by studio order by avg_rating;