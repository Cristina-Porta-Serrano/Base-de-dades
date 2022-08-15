SELECT movies.tb_person.person_name, MAX(movies.tb_movie_person.role_id) AS MaxRoles
FROM movies.tb_person 
INNER JOIN movies.tb_movie_person
ON movies.tb_person.person_id=movies.tb_movie_person.person_id
GROUP BY movies.tb_person.person_name
HAVING MAX(movies.tb_movie_person.role_id) > 1
ORDER BY MaxRoles DESC;