<?php
$server = 'localhost';
$username = 'root';
$password = '';
$database = 'ruc';

try {
	$conn = new PDO("mysql:host=$server;dbname=$database", $username, $password);
} catch (PDOException $e) {
	die( "Connection failed: " . $e->getMessage());
}
?>