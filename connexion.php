<?php
function get_data_from_database($username, $password) {

    // Mettez en place la connexion à la base de données
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    // Vérifiez la connexion
    if ($conn->connect_error) {
        die("La connexion à la base de données a échoué : " . $conn->connect_error);
    }

    // Exécutez votre requête SQL pour récupérer les données
    $query = "SELECT * FROM user WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($query);

    // Récupérez les résultats de la requête
    $data = array();
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    // Fermez la connexion à la base de données
    $conn->close();

    return $data;
}
?>
