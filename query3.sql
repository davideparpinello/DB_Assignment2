SELECT name, manf
FROM beers, likes
WHERE beers.name = likes.beer
	AND likes.drinker = 'Fred';