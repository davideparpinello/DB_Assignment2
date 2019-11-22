SELECT l.drinker, l.beer
FROM "Likes" l, "Sells" s, "Frequents" f
WHERE l.beer = s.beer
	AND s.bar = f.bar
	AND l.drinker = f.drinker
GROUP BY (l.drinker, l.beer)
ORDER BY l.drinker

