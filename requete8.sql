SELECT C.numConcours, C.theme, COUNT(DISTINCT D.numDessin) AS nombreDessins,
       MIN(E.note) AS noteMinimale, MAX(E.note) AS noteMaximale, AVG(E.note) AS moyenneNotes
FROM Concours C
LEFT JOIN Dessin D ON C.numConcours = D.numConcours
LEFT JOIN Evaluation E ON D.numDessin = E.numDessin
GROUP BY C.numConcours, C.theme;
