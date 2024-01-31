SELECT D.numDessin, E.note, U.nom AS nomCompetiteur, C.theme
FROM Evaluation E, Dessin D, Competiteur Cp, Utilisateur U, ParticipeCompetiteur PC, Concours C
WHERE E.numDessin = D.numDessin
AND D.numCompetiteur = Cp.numCompetiteur
AND Cp.numCompetiteur = U.numUtilisateur
AND Cp.numCompetiteur = PC.numCompetiteur
AND PC.numConcours = C.numConcours
AND YEAR(E.dateEvaluation) = 2022
ORDER BY E.note;
