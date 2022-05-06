-- Finde den Namen aller Studenten die in keiner Prüfung eine bessere Note ale 3 hatten
SELECT s.name,
	s.matrnr
FROM Studenten s
	LEFT JOIN pruefen p on p.matrnr = s.matrnr
GROUP BY s.matrnr
HAVING min(COALESCE(p.note, 6)) > 3 -- von der Vorlesung
SELECT s.name,
	s.matrnr
FROM studenten s
	LEFT JOIN pruefen p on p.matrnr = s.matrnr
GROUP BY s.name,
	s.matrnr
HAVING COALESCE(min(p.note), 6) > 3