<?php
function get_data_from_database($username, $password) {
    // Mettez en place la connexion à la base de données
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    // Vérifiez la connexion
    if ($conn->connect_error) {
        die("La connexion à la base de données a échoué : " . $conn->connect_error);
    }

    // Utilisez une requête préparée pour éviter les attaques par injection SQL
    $query = "SELECT * FROM users WHERE username = ? AND password = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("ss", $username, $password);  // "ss" indique que les deux paramètres sont des chaînes (strings)
    $stmt->execute();

    // Récupérez les résultats de la requête
    $result = $stmt->get_result();
    $data = array();
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    // Fermez la connexion à la base de données
    $stmt->close();
    $conn->close();

    return $data;
}
?>
