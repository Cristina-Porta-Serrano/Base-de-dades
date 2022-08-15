SET FOREIGN_KEY_CHECKS=0; -- to disable them
DELETE FROM movies.tb_movie WHERE movie_title = "La Gran Familia Española";
SET FOREIGN_KEY_CHECKS=1; -- to re-enable them