<?php

declare(strict_types=1);
require('config.php');

spl_autoload_register(function($class){
    require __DIR__ . '/src/' . $class . '.php';
});

set_exception_handler("ErrorHandler::handleException");

header('Content-Type: application/json');
// On gère les cors policy
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');

$parts = explode('/', $_SERVER['REQUEST_URI']);


$database = new Database(DB_HOST, DB_NAME, DB_USER, DB_PASS);
$gateway = new UserGateway($database);

$controller = new UserController($gateway);
$controller->processRequest($_SERVER['REQUEST_METHOD'], $parts);