<?php

class Gateway{
    private mysqli $connection;

    public function __construct(Database $database){
        $this->connection = $database->getConnection();
    }

    public function getConnection():mysqli {
        return $this->connection;
    }
}

?>