<?php
require('JWTController.php');


class DrawController{
    
    public function __construct(private Gateway $gateway){}

    public function processRequest(string $method):void {
        $this->processCollectionRequest($method);
    }

    private function processCollectionRequest($method){
        switch($method){
            case 'GET':
                $this->getAllDraw();
                break;
            case 'POST':
                echo 'POST';
                $this->submitDraw();
                break;
            default:
                echo 'Method not supported';
        }
    }

    private function getAllDraw(){
        $query = "SELECT * FROM dessin";
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

    private function submitDraw(){
        $jwt = new JWT();
        $body = json_decode(file_get_contents('php://input'), true);
        $authentication = $jwt->decodeJWT($body['token']);
        if($authentication['userId'] != $body['numCompetiteur']){
            echo 'Vous n\'êtes pas connecté';
            return;
        }
        if(isset($_FILES['leDessin'])){
            echo 'file';
        } else {
            echo 'no file';
        }
        // On vérifie que l'utilisateur n'a pas déjà mis 3 dessins
        $query = "SELECT COUNT(*) FROM dessin WHERE numCompetiteur = ?";
        $stmt = $this->gateway->getConnection()->prepare($query);
        $stmt->bind_param("i", $body['numCompetiteur']);
        $stmt->execute();
        $result = $stmt->get_result();

        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        $stmt->close();

        if($data[0]['COUNT(*)'] >= 3){
            echo 'Vous avez déjà soumis 3 dessins';
            return;
        }

        $query = "INSERT INTO dessin (commentaire, dateRemise, numCompetiteur, numConcours, leDessin) VALUES (?, ?, ?, ?, ?)";
        $stmt = $this->gateway->getConnection()->prepare($query);
        $stmt->bind_param("ssiib", $body['commentaire'], $body['dateRemise'], $body['numCompetiteur'], $body['numConcours'], $body['leDessin']);
        $stmt->execute();
        $stmt->close();

        
        echo 'Dessin soumis';
    }

}

?>