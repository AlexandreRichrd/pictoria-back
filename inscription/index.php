<?php
// Incluez les fichiers de configuration et de fonctions
require_once '../config.php';
require_once 'inscription.php';

// Autorisez toutes les origines
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, OPTIONS, POST');  // Ajoutez OPTIONS pour gérer les requêtes pré-vérification
header('Access-Control-Allow-Headers: Content-Type');  // Ajoutez les en-têtes nécessaires pour votre application


// Vérifiez la méthode de la requête HTTP
$method = $_SERVER['REQUEST_METHOD'];

// Si la méthode est OPTIONS, renvoyez les en-têtes nécessaires sans exécuter le reste du script
if ($method == 'OPTIONS') {
    header('HTTP/1.1 200 OK');
    exit;
}


// Si la méthode est POST, essayez de vous connecter avec le body contenant un username et un password
if($method == 'POST'){
    // Si la méthode est POST, essayez de vous connecter avec le body contenant un username et un password
    $body = json_decode(file_get_contents('php://input'), true);
    $name = $body['name'];
    $firstname = $body['firstname'];
    $address = $body['address'];
    $username = $body['username'];
    $password = $body['password'];
    $result = registre_new_user($name, $firstname, $address, $username, $passwor);
    if ($result) {
        // Si la connexion a réussi, retournez un code de statut 200 (OK)
        header('HTTP/1.1 200 OK');
        echo json_encode(array('message' => $result[0]['name']));
    } else {
        // Si la connexion a échoué, retournez un code de statut 401 (Unauthorized)
        header('HTTP/1.1 401 Unauthorized');
        echo json_encode(array('message' => 'inscription échouée'));
    }
} else {
    header('HTTP/1.1 405 Method Not Allowed');
    echo json_encode(array('message' => 'Méthode non autorisée'));
}
?>
