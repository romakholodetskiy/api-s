<?php

require __DIR__ . '/vendor/autoload.php';

use Google\Client;

$client = new Client();
$client->setClientId('1070961996525-gt1n2fps7ntae764sl5rbl52g4mto7ss.apps.googleusercontent.com');
$client->setClientSecret('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');
$client->setRedirectUri('http://localhost:8080/hello.php');
$client->addScope('email');
$client->addScope('profile');
