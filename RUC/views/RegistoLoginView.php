<?php

class RegistoView
{
	private $controller;

	public function __construct($controller)
	{
		$this->controller = $controller;
	}

	public function Login_view()
	{
		return array('views/users/Login_create.inc.php');
	}

	public function Registo_view()
	{
		return array('views/users/Registo_create.inc.php');
	}

	public function Insert_user_view($dados)
	{
		return $this->controller->save($dados);
	}

	public function create_login_view()
	{
		return array('views/users/Login_create.inc.php');
	}
	public function verify_user_view ($dados)
	{
		return $this->controller->verify($dados);
	}
}
?>
