<?php
class Grelha
	{
		private $controller;

	public function __construct($controller)
	{
		$this->controller = $controller;
	}
	public function criaGrelha() {
		return array('views/noticia/createGrelha.inc.php') ;
	}
	public function atualizaGrelha() {
		return array('views/noticia/editGrelha.inc.php');
	}
	public function criaLocutor() {
		return array('views/noticia/editGrelha.inc.php');
	}
	public  function criaPrograma() {
		return array('views/noticia/createGrelha.inc.php');
	}
}
