SELECT movie_id INTO @MOVIE_ID FROM movies.tb_movie WHERE movie_title = "La Gran Familia Española";
DELETE FROM movies.tb_movie_person WHERE movie_id = @MOVIE_ID;
DELETE FROM movies.tb_movie WHERE movie_id = @MOVIE_ID;
