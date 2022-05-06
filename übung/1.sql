-- suche Professoren die vorlesung halten mit any
SELECT p.name FROM professoren p
WHERE p.persnr = ANY (SELECT v.gelesenvon FROM vorlesungen v);

SELECT p.name FROM professoren p
WHERE EXISTS (SELECT v.gelesenvon FROM vorlesungen v WHERE v.gelesenvon = persnr);

SELECT p.name FROM professoren p, vorlesungen v
WHERE v.gelesenvon = p.persnr
GROUP BY p.persnr;

SELECT p.name FROM professoren p
INNER JOIN vorlesungen v ON p.persnr = v.gelesenvon
GROUP BY p.persnr;