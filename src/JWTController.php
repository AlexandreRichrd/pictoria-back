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

    public function decodeJWT($jwt){
        $tokenParts = explode('.', $jwt);
        if(count($tokenParts !== 3)){
            throw new InvalidArgumentException('Token incorrect');
        }
        $header = json_decode($this->base64UrlDecode($headerEncoded), true);
        $payload = json_decode($this->base64UrlDecode($payloadEncoded), true);

        // Construire une signature basée sur le Header et le Payload encodés
        $signature = hash_hmac('sha256', $headerEncoded . '.' . $payloadEncoded, $this->secret, true);
        $signatureCheck = $this->base64UrlEncode($signature);

        // Vérifier si la signature est valide
        if ($signatureCheck !== $signatureEncoded) {
                throw new UnexpectedValueException('Signature de Token invalide');
        }

        return $payload; // Le Payload contient les informations que vous avez encodées
        
    }

    function base64UrlDecode($data) {
        return base64_decode(strtr($data, '-_', '+/') . str_repeat('=', 3 - (3 + strlen($data)) % 4));
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