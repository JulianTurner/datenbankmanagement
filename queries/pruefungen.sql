--Wie viele Prüfungen hat Jonas abgelegt?

SELECT count(*) FROM studenten s, pruefen p
WHERE s.matrnr = p.matrnr AND s.name='Jonas';