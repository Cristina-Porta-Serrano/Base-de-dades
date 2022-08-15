SELECT COUNT(movies.tb_movie.movie_genre_id) AS GroupNames, tb_genre.genre_name
FROM movies.tb_movie 
INNER JOIN movies.tb_genre 
ON movies.tb_movie.movie_genre_id=movies.tb_genre.genre_id 
GROUP BY(movies.tb_movie.movie_genre_id)
ORDER BY GroupNames DESC;