UPDATE movies.tb_movie
SET movie_genre_id = (SELECT genre_id
	FROM movies.tb_genre
	WHERE genre_name = "Comedia")
WHERE movie_title =  "Ocho apellidos catalanes";
