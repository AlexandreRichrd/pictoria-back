SELECT Utilisateur.nom, Utilisateur.prenom, TIMESTAMPDIFF(YEAR, Utilisateur.dateDeNaissance, 
CURDATE()) AS age 
FROM Competiteur
JOIN Utilisateur ON Competiteur.numCompetiteur = Utilisateur.numUtilisateur
WHERE (SELECT COUNT(DISTINCT numConcours) FROM Concours) = (SELECT COUNT(DISTINCT numConcours) 
FROM ParticipeCompetiteur WHERE numCompetiteur = Competiteur.numCompetiteur)
ORDER BY age;
