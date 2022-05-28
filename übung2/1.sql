WITH RECURSIVE voraussetzen_rec AS (
	SELECT vorlnr, 1 as semester
	FROM vorlesungen
	WHERE titel = 'Bioethik'
	UNION ALL
	SELECT v.vorgaenger, rec.semester + 1
	FROM  voraussetzen_rec rec, voraussetzen v
	WHERE rec.vorlnr = v.nachfolger
)
SELECT max(semester) as min_semester from voraussetzen_rec
