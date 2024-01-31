SELECT U.prenom, U.nom, U.adresse, TIMESTAMPDIFF(YEAR, U.dateDeNaissance, CURDATE()) AS age, 
C.dateDebut, C.dateFin, Cl.nomClub, Cl.departement, Cl.region
FROM Utilisateur U, Competiteur Cp, ParticipeCompetiteur PC, Concours C, Club Cl
WHERE U.numUtilisateur = Cp.numCompetiteur
AND Cp.numCompetiteur = PC.numCompetiteur
AND PC.numConcours = C.numConcours
AND U.numClub = Cl.numClub
AND YEAR(C.dateDebut) = 2023;
