<?php
    define('DB_HOST', 'localhost');
    define('DB_NAME', 'pictoria');
    define('DB_USER', 'root');
    define('DB_PASS', '');

    // Autorisez toutes les origines
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, OPTIONS');  // Ajoutez OPTIONS pour gérer les requêtes pré-vérification
    header('Access-Control-Allow-Headers: Content-Type');  // Ajoutez les en-têtes nécessaires pour votre application

?>