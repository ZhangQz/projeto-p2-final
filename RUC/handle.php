<?php
if ( !isset($_SESSION['user_id']) && isset($_GET['action']) && $_GET['action'] === 'login') {

	require_once('models/RegistoLoginModel.php');
	require_once('controllers/RegistoLoginControl.php');

	$controller = new RegistoLoginControl(new Registo($conn));
	$controller->verify(Array("email" => $_REQUEST['email'], "pass" => $_REQUEST['password']));

	header('Location: /');
}
?>
