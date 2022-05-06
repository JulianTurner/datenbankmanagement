SELECT p.persnr, p.name,COALESCE( sum(v.sws),0)
FROM professoren p
LEFT OUTER JOIN vorlesungen v ON p.persnr = v.gelesenvon
GROUP BY p.persnr, p.name