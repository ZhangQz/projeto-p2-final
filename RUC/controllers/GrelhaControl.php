<?php

class GrelhaControl
{
	private $model;

	public function __construct($model)
	{
		$this->model = $model;
	}
	public function getAllGrelha()
	{
		return $this->model->getGrelha();
	}

	public function getGrelhaById($id)
	{
		return $this->model->getGrelha($id);
	}

	public function adicionaGrelha($dados)
	{
		return $this->model->createGrelha($dados);
	}

	public function editaGrelha($dados)
	{
		return $this->model->editGrelha($dados);
	}

	public function removerGrelha($id)
	{
		return $this->model->rmGrelha($id);
	}
}
?>
