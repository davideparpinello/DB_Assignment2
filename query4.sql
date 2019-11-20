SELECT name
FROM beers
WHERE manf = ANY(
	SELECT manf 
	FROM beers 
	GROUP BY manf
	HAVING COUNT(*) = 1)