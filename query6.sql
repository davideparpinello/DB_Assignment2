SELECT likes.drinker, likes.beer
FROM likes, sells, frequents
WHERE likes.beer = sells.beer
	AND sells.bar = frequents.bar
	AND likes.drinker = frequents.drinker
GROUP BY (likes.drinker, likes.beer)

