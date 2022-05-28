WITH RECURSIVE TransitivVorl(Vorg, Nachf)
AS (
	SELECT Vorgaenger, Nachfolger
	FROM voraussetzen

UNION ALL
	SELECT DISTINCT t.Vorg, v.Nachfolger
	FROM TransitivVorl t, voraussetzen v
	WHERE t.Nachf = v.Vorgaenger
)
SELECT * FROM TransitivVorl;