SELECT U.prenom, U.nom AS NomEvaluateur, Ev.specialite AS Specialite, AVG(E.note) AS NoteMoyenne
FROM Evaluation E, Evaluateur Ev, Utilisateur U
WHERE E.numEvaluateur = Ev.numEvaluateur
AND Ev.numEvaluateur = U.numUtilisateur
AND YEAR(E.dateEvaluation) = 2022
GROUP BY 
Ev.numEvaluateur
HAVING 
AVG(E.note) < 10
ORDER BY 
AVG(E.note);
