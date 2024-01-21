<?php

class ContestGateway{
    private mysqli $connection;

    public function __construct(Database $database){
        $this->connection = $database->getConnection();
    }

    public function getAll():array {
        $query = "SELECT * FROM Concours";
        $result = $this->connection->query($query);
        if(!$result){
            throw new Exception("Error while fetching contests");
        }
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getConnection():mysqli {
        return $this->connection;
    }
}

?>