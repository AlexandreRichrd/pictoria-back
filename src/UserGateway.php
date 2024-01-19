<?php

class UserGateway{
    private mysqli $connection;

    public function __construct(Database $database){
        $this->connection = $database->getConnection();
    }

    public function getAll():array {
        $query = "SELECT * FROM users";
        $result = $this->connection->query($query);
        if(!$result){
            throw new Exception("Error while fetching users");
        }
        return $result->fetch_all(MYSQLI_ASSOC);
    }
}

?>