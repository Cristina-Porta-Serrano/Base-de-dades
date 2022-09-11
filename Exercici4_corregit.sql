SELECT P.person_name, MP.movie_id , COUNT(MP.role_id) AS MaxRoles
FROM movies.tb_person P
INNER JOIN movies.tb_movie_person MP
ON P.person_id=MP.person_id 
GROUP BY P.person_name, MP.movie_id
HAVING COUNT(MP.role_id) =
	(SELECT MAX(MaxRolesPerMovie) FROM 
		(SELECT COUNT(MP.role_id) as MaxRolesPerMovie WHERE COUNT(MP.role_id) > 1) as MaxRolesTable
	)
ORDER BY MaxRoles DESC
