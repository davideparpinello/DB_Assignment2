SELECT DISTINCT l.drinker, l.beer
FROM "Likes" l, "Sells" s, "Frequents" f
WHERE l.beer = s.beer
	AND s.bar = f.bar
	AND l.drinker = f.drinker
ORDER BY l.drinker;