WITH RECURSIVE TransitivVorl(Vorg, Nachf)
AS(
	SELECT vorgaenger, nachfolger
	FROM voraussetzen
	WHERE nachfolger = 5052
UNION
	SELECT DISTINCT v.vorgaenger, v.nachfolger
	FROM TransitivVorl t, voraussetzen v
	WHERE t.Vorg = v.nachfolger
)
SELECT * FROM TransitivVorl