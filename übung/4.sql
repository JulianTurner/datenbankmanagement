SELECT p.persnr, p.name,COALESCE( sum(v.sws),0)
FROM professoren p
LEFT OUTER join vorlesungen v on p.persnr = v.gelesenvon
group by p.persnr, p.name