SELECT beer
FROM "Sells"
WHERE price = (
	SELECT MAX(price)
	FROM "Sells")
