WITH RECURSIVE stud_von_kant as (
	SELECT DISTINCT h.matrnr
	FROM hoeren h, vorlesungen v, professoren p
	WHERE h.vorlnr = v.vorlnr and v.gelesenVon = p.PersNr
), studenten_kennen as(
	SELECT * FROM stud_von_kant
	UNION
	SELECT h2.matrnr
	FROM studenten_kennen s, hoeren h1, hoeren h2
	WHERE s.matrnr = h1.matrnr AND 
	h1.vorlnr = h2.vorlnr
)
SELECT name FROM studenten s, studenten_kennen sk
WHERE 
s.matrnr = sk.matrnr
