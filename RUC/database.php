<?php
$server = 'localhost';
$username = 'root';
$password = '';
$db = 'ruc';

try {
	$conn = new PDO("mysql:host=$server;dbname=$db", $username, $password);
} catch (PDOException $e) {
	die( "Connection failed: " . $e->getMessage());
}
?>
