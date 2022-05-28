WITH RECURSIVE TransitivVorl(Vorg, Nachf)
AS (
	SELECT Vorgaenger, Nachfolger, 1 as iteration
	FROM voraussetzen

UNION ALL
	SELECT DISTINCT t.Vorg, v.Nachfolger, 1 + t.iteration
	FROM TransitivVorl t, voraussetzen v
	WHERE t.Nachf = v.Vorgaenger
)
SELECT * FROM TransitivVorl ORDER BY iteration;