SELECT DISTINCT bar
FROM "Sells" s, "Likes" l
WHERE s.beer = l.beer
	AND l.drinker = 'Joe'
ORDER BY bar;