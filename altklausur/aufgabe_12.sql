SELECT PersNr, Name from Professoren WHERE persnr = ANY(SELECT DISTINCT gelesenVon FROM vorlesungen)