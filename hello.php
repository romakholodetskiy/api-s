<?php
require 'Gclientsetup.php';

$client->fetchAccessTokenWithAuthCode($_GET['code']);
$client->setAccessToken($client->getAccessToken());

$oauth = new Google\Service\OAuth2($client);

$userinfo = $oauth->userinfo->get();

echo '<pre>';
print_r($userinfo->name);
echo '</pre>';
