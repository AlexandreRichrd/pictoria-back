<?php
class JWT {
    private $token;
    private $secret;
    private $header;
    private $payload;

    public function __construct($payload) {
        $this->setHeader();
        $this->setSecret();
        if (is_array($payload) && isset($payload['userId']) && isset($payload['username'])) {
            $this->setPayload($payload['userId'], $payload['username']);
            $this->setToken();
        } else {
            // Gérer l'erreur si $payload n'est pas un tableau ou ne contient pas les clés nécessaires.
            throw new InvalidArgumentException('Payload must be an array with userId and username keys.');
        }
    }

    private function setPayload($userId, $username) {
        $this->payload = [
            'userId' => $userId,
            'username' => $username
        ];
    }

    private function setHeader() {
        $this->header = [
            'alg' => 'HS256',
            'typ' => 'JWT'
        ];
    }

    private function setSecret(){
        $this->secret = 'N!27bD8#L$eF4*Xm5G6cS3@kHjZqR1%Wp';
    }

    private function setToken() {
        $this->token = $this->generateJWT($this->header, $this->payload, $this->secret);
    }

    public function getToken() {
        return $this->token;
    }



    function base64UrlEncode($data) {
        return rtrim(strtr(base64_encode($data), '+/', '-_'), '=');
    }
    
    function generateJWT($header, $payload, $secret) {
        $headerEncoded = $this->base64UrlEncode(json_encode($header));
        $payloadEncoded = $this->base64UrlEncode(json_encode($payload));
    
        $signature = hash_hmac('sha256', $headerEncoded . '.' . $payloadEncoded, $secret, true);
        $signatureEncoded = $this->base64UrlEncode($signature);
    
        $jwt = "$headerEncoded.$payloadEncoded.$signatureEncoded";
        return $jwt;
    }
}