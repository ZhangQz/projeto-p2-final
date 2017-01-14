<?php

class RegistoView
{
	private $controller;

	public function __construct($controller)
	{
		$this->controller = $controller;
	}

	public function criaIndex()
	{
		return array('views/users/Login_create.inc.php');
	}

	public function criaRegisto()
	{
		return array('views/users/Aderuc_create.inc.php');
	}

	public function insereUser($dados)
	{
		return $this->controller->save($dados);
	}

	public function criaLogin()
	{
		return array('views/users/Login_create.inc.php');
	}
	public function verificaUser($dados)
	{
		return $this->controller->verify($dados);
	}
}
?>
