-- Wenn alle Studenten ab sofort alle Vorlesungen von Sokraten hören müssten und dies in die Tabelle "hören" geschrieben werden soll, wie müsste das Statement lauten?

-- Hard Codiert
-- INSERT INTO professoren(persnr, name)
-- VALUES(123, "Hannes"), (456, "Time")


INSERT INTO hoeren (matrnr, vorlnr)
SELECT s.Matrnr, v.Vorlnr
FROM vorlesungen v, studenten s, professoren p
WHERE p.persnr = v.gelesenvon AND p.name = 'Sokrates'
AND (s.Matrnr, v.Vorlnr) NOT IN (SELECT * FROM hoeren)