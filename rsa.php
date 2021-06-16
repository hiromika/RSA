<?php 
include "koneksi.php";

function encrypt($data,$pubkey)
    {
        if (openssl_public_encrypt($data, $encrypted, $pubkey))
            $data = base64_encode($encrypted);
        else
            throw new Exception('Unable to encrypt data. Perhaps it is bigger than the key size?');

        return $data;
    }
function decrypt($data,$privkey)
    {
        if (openssl_private_decrypt(base64_decode($data), $decrypted, $privkey))
            $data = $decrypted;
        else
            $data = '';

        return $data;
}


function my_encrypt($data, $key) {
    
    $encryption_key = base64_decode($key);

    $iv = openssl_random_pseudo_bytes(openssl_cipher_iv_length('aes-256-cbc'));
    $encrypted = openssl_encrypt($data, 'aes-256-cbc', $key, 0, $iv);

    return base64_encode($encrypted . '::' . $iv);
}

function my_decrypt($data, $key) {
    $encryption_key = base64_decode($key);

    list($encrypted_data, $iv) = explode('::', base64_decode($data), 2);

    return openssl_decrypt($encrypted_data, 'aes-256-cbc', $key, 0, $iv);
}


?>