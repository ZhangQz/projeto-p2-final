<?php

class RegistoControl
{
	private $model;

	public function __construct($model)
	{
		$this->model = $model;
	}

	public function save()
	{
		$dados = Array(
			"nome" => $_REQUEST['nome'],
			"email" => $_REQUEST['email'],
			"password" => $_REQUEST['password']
		);
		if ($this->model->createUser($dados))
			return 1;
		else
			return 0;
	}

	public function verify($dados)
	{
		$user = $this->model->verifyUser($dados);

		if ( $user != null) {
			$_SESSION['user'] = $user;
			return 1;
		} else {
			return 0;
		}
	}
}
?>
