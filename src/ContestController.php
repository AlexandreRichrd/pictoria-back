<?php

class ContestController{
    
    public function __construct(private Gateway $gateway){}

    public function processRequest(string $method):void {
        $this->processCollectionRequest($method);
    }

    private function processCollectionRequest($method){
        switch($method){
            case 'GET':
                $this->getAllContests();
                break;
            default:
                echo 'Method not supported';
        }
    }

    private function getAllContests(){
        $query = "SELECT * FROM concours";
        $stmt = $this->gateway->getConnection()->prepare($query);
        $stmt->execute();
        $result = $stmt->get_result();
        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        $stmt->close();
        echo json_encode($data);
    }
}

?>