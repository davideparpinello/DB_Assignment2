SELECT s1.bar
FROM sells s1, sells s2
WHERE s1.beer = 'Miller'
    AND s2.beer = 'Bud'
    AND s1.price = s2.price
    AND s1.bar = s2.bar;