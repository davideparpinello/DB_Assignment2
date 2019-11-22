SELECT name, manf
FROM "Beers" b, "Likes" l
WHERE b.name = l.beer
	AND l.drinker = 'Fred';