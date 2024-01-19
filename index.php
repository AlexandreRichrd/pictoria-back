<?php

declare(strict_types=1);
require('config.php');

spl_autoload_register(function($class){
    require __DIR__ . '/src/' . $class . '.php';
});

set_exception_handler("ErrorHandler::handleException");

header('Content-Type: application/json');


$parts = explode('/', $_SERVER['REQUEST_URI']);


$database = new Database(DB_HOST, DB_NAME, DB_USER, DB_PASS);
$database->getConnection();


$controller = new UserController();
$controller->processRequest($_SERVER['REQUEST_METHOD'], $parts);