<?php

class Database{
    public function __construct(
        private string $host,
        private string $name,
        private string $user,
        private string $pass
    ){}
    
    public function getConnection(): mysqli{
        $conn = new mysqli($this->host, $this->user, $this->pass, $this->name);
        if ($conn->connect_error) {
            die("La connexion à la base de données a échoué : " . $conn->connect_error);
        }
        return $conn;
    }
}