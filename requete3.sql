SELECT D.numDessin, YEAR(E.dateEvaluation) AS année, Uc.nom AS nomCompetiteur, 
D.commentaire AS commentaireDessin, E.note, E.commentaire AS commentaireEvaluation, 
Ue.nom AS nomEvaluateur
FROM Evaluation E, Dessin D, Competiteur Cp, Utilisateur Uc, Evaluateur Ev, Utilisateur Ue, 
ParticipeCompetiteur PC, Concours C
WHERE E.numDessin = D.numDessin
AND D.numCompetiteur = Cp.numCompetiteur
AND Cp.numCompetiteur = Uc.numUtilisateur
AND E.numEvaluateur = Ev.numEvaluateur
AND Ev.numEvaluateur = Ue.numUtilisateur
AND Cp.numCompetiteur = PC.numCompetiteur
AND PC.numConcours = C.numConcours;
