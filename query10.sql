SELECT DISTINCT f1.drinker
FROM "Frequents" f1
WHERE f1.drinker NOT IN (
	SELECT DISTINCT f.drinker
	FROM "Frequents" f
	WHERE NOT EXISTS (
		SELECT *
		FROM "Sells" s, "Likes" l
		WHERE f.bar=s.bar AND
		f.drinker=l.drinker AND
		s.beer = l.beer
	)
)