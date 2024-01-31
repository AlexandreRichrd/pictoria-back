SELECT D.numDessin, D.commentaire, Cp.specialite, E.note
FROM Dessin D, Competiteur Cp, Evaluation E, Evaluateur Ev, Utilisateur Uc, Utilisateur Ue
WHERE D.numCompetiteur = Cp.numCompetiteur
AND Cp.specialite = Ev.specialite
AND E.numEvaluateur = Ev.numEvaluateur
AND Ev.numEvaluateur = Ue.numUtilisateur
AND Cp.numCompetiteur = Uc.numUtilisateur
AND E.numDessin = D.numDessin
AND 
    E.note >= 12
ORDER BY 
    Cp.specialite;
