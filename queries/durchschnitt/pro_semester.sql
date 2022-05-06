-- Durchschnitt pro Semester
select s.semester, avg(p.note) from studenten s, pruefen p
where s.matrnr = p.matrnr
group by s.semester;