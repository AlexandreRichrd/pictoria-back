SELECT Cl.region, AVG(E.note) AS moyenneNote
FROM Evaluation E, Dessin D, Competiteur Cp, Utilisateur U, Club Cl
WHERE E.numDessin = D.numDessin
AND D.numCompetiteur = Cp.numCompetiteur
AND Cp.numCompetiteur = U.numUtilisateur
AND U.numClub = Cl.numClub
GROUP BY Cl.region
ORDER BY moyenneNote DESC
LIMIT 1;
