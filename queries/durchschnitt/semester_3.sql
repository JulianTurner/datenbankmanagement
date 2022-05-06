--Durchnittsnote der Studenten im 3 Semester
SELECT avg(p.note) FROM studenten s, pruefen p
WHERE s.matrnr = p.matrnr AND s.semester=3;