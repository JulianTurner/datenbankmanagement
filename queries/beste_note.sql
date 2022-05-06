-- welcher Student hat die beste note
SELECT s.name, avg(p.note) FROM studenten s, pruefen p
WHERE s.matrnr = p.matrnr
GROUP BY s.name
HAVING avg(p.note) <= ALL(SELECT avg(note) FROM pruefen GROUP BY matrnr)