-- Studenten mit einer Durchschnittsnote besser 1.5
select s.name, avg(p.note) from studenten s, pruefen p
where s.matrnr = p.matrnr
group by s.name
having avg(p.note) < 1.5;