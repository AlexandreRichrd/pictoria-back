<?php

class UserController{

    public function __construct(private UserGateway $gateway){}

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
                $this->post($body);
                break;
            case 'PUT':
                $this->put($body);
                break;
            case 'DELETE':
                $this->delete($body);
                break;
            default:
                echo 'Method not supported';
        }
    }

    private function post(?array $body):void {
        if(!isset($body['name']) || !isset($body['firstname']) || !isset($body['address']) || !isset($body['username']) || !isset($body['password'])){
            echo 'Missing parameters';
            return;
        }
        // On créer un nouvel utilisateur
        
        $query = "INSERT INTO users (name, firstname, address, username, password) VALUES (?, ?, ?, ?, ?)";
        
    }

    private function put(?array $body):void {
        echo 'PUT';
    }

    private function delete(?array $body):void {
        echo 'DELETE';
    }
}