SELECT beer
FROM sells
WHERE price = (
	SELECT MAX(price)
	FROM sells)
