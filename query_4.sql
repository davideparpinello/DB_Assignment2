SELECT name
FROM "Beers"
WHERE manf = ANY(
	SELECT manf 
	FROM "Beers" 
	GROUP BY manf
	HAVING COUNT(*) = 1)