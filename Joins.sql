SELECT movies.movie_id,title,release_year,imdb_rating FROM movies JOIN financials ON movies.movie_id=financials.movie_id order by imdb_rating DESC;
SELECT m.movie_id,title,release_year,imdb_rating FROM movies m INNER JOIN financials f ON m.movie_id=f.movie_id order by imdb_rating DESC;


SELECT movies.movie_id,title,release_year,imdb_rating FROM movies LEFT JOIN financials ON movies.movie_id=financials.movie_id
UNION 
SELECT movies.movie_id,title,release_year,imdb_rating FROM movies RIGHT JOIN financials ON movies.movie_id=financials.movie_id;


SELECT movies.movie_id,title,release_year,imdb_rating FROM movies FULL JOIN financials ON movies.movie_id=financials.movie_id order by imdb_rating DESC;
SELECT movie_id,title,release_year,imdb_rating FROM movies JOIN financials USING(movie_id);
SELECT movies.movie_id,title,release_year,imdb_rating FROM movies JOIN financials ON movies.movie_id=financials.movie_id AND financials.col1=movies.col2;
