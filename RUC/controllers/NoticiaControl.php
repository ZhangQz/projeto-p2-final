<?php

class NoticiaControl
{
	private $model;

	public function __construct($model)
	{
		$this->model = $model;
	}

	public function save()
	{
		$dados = Array(
			"titulo" => $_REQUEST['nome'],
			"artigo" => $_REQUEST['email'],
			"data_noticia" => $_REQUEST['data_noticia'],
			"extra" => $_REQUEST['extra'],
			"idcategoria" => $_REQUEST['idcategoria']
		);
		if ($this->model->createNoticia($dados))
			return 1;
		else
			return 0;
	}

	public function verify($dados)
	{
		$noticia = $this->model->verifyNoticia($dados);

		if ( $noticia != null) {
			$_SHOW['noticia'] = $noticia;
			return 1;
		} else {
			return 0;
		}
	}
}
?>
