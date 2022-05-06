select COUNT(p.Matrnr) as anzahl, v.vorlnr, v.titel
from pruefen p right join vorlesungen v on p.vorlnr = v.vorlnr
group by v.vorlnr, v.titel