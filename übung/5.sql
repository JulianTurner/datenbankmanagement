SELECT COUNT(p.Matrnr) AS anzahl,
	v.vorlnr,
	v.titel
FROM pruefen p
	RIGHT JOIN vorlesungen v ON p.vorlnr = v.vorlnr
GROUP BY v.vorlnr,
	v.titel