<?php

require('JWTController.php');

class UserController{

    public function __construct(private Gateway $gateway){}

    public function processRequest(string $method, ?array $body):void {
        $this->processCollectionRequest($method);
    }

    private function processRessourceRequest(string $method, ?array $body):void {
    }
    
    private function processCollectionRequest(string $method):void {
        switch($method){
            case 'GET':
                echo 'GET';
                break;
            case 'POST':
                $data = json_decode(file_get_contents('php://input'), true);
                $this->post($data);
                break;
            case 'PUT':
                $data = json_decode(file_get_contents('php://input'), true);
                $this->put($data);
                break;
            case 'DELETE':
                $this->delete($body);
                break;
            default:
                echo 'Method not supported';
        }
    }

    private function post(?array $body):void {
        if(!isset($body['name']) || !isset($body['firstname']) || !isset($body['address']) || !isset($body['username']) || !isset($body['password']) || !isset($body['nationality']) || !isset($body['birthDate']) || !isset($body['birthDate'])){
            echo 'Missing parameters';
            return;
        }
        // On vérifie si l'utilisateur existe déjà
        $query = "SELECT * FROM utilisateur WHERE login = ?";
        $stmt = $this->gateway->getConnection()->prepare($query);
        $stmt->bind_param("s", $body['username']);  // "s" indique que le paramètre est une chaîne (string)
        $stmt->execute();
        $result = $stmt->get_result();
        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        $stmt->close();
        if(count($data) > 0){
            echo 'User already exists';
            return;
        }
        $currentDate = date('Y-m-d');

        // On créer un nouvel utilisateur
        $query = "INSERT INTO utilisateur (nom, prenom, adresse, dateDeNaissance, nationalite, login, motDePasse, dateLicence) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $this->gateway->getConnection()->prepare($query);
        $stmt->bind_param("ssssssss", $body['name'], $body['firstname'], $body['address'], $body['birthDate'], $body['nationality'], $body['username'], $body['password'], $currentDate);  // "ssssssss" indique que les 7 paramètres sont des chaînes (strings)
        $stmt->execute();
        $stmt->close();
        echo 'User created';
        
    }

    private function put(?array $body):void {
        if(!isset($body['username']) || !isset($body['password'])){
            echo 'Missing parameters';
            return;
        }
        // On vérifie que l'utilisateur existe
        $query = "SELECT * FROM utilisateur WHERE login = ? AND motDePasse = ?";
        $stmt = $this->gateway->getConnection()->prepare($query);
        $stmt->bind_param("ss", $body['username'], $body['password']);  // "ss" indique que les deux paramètres sont des chaînes (strings)
        $stmt->execute();
        $result = $stmt->get_result();
        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        $stmt->close();
        if(count($data) == 0){
            echo 'User not found';
            return;
        }
        // On génère le JWT
        $userData = [
            'userId' => $data[0]['numUtilisateur'],
            'username' => $data[0]['login']
        ];
        $jwt = new JWT($userData);


        echo json_encode($jwt->getToken());


    }

    private function delete(?array $body):void {
        echo 'DELETE';
    }

    
}