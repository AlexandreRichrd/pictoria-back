<?php
    function registre_new_user($name, $firstname, $address, $username, $password){
        $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

        if ($conn->connect_error) {
            die("La connexion à la base de données a échoué : " . $conn->connect_error);
        }

        $query = "INSERT INTO users (name, firstname, address, username, password) VALUES ('$name', '$firstname', '$address', '$username', '$password')";
        $result = $conn->query($query);

        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }

        // Fermez la connexion à la base de données
        $conn->close();

        return $data;
    }
?>