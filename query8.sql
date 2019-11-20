SELECT bar
FROM sells, likes
WHERE sells.beer = likes.beer AND likes.drinker = 'Joe'
GROUP BY (bar)