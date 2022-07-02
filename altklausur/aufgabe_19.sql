-- Direktere Voraussetztungen der Vorlesung Logik
select DISTINCT v.vorgaenger from voraussetzen v, vorlesungen vl where vl.titel = 'Logik'