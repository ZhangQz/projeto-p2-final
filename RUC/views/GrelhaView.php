<?php
class GrelhaView
	{
		private $controller;

	public function __construct($controller)
	{
		$this->controller = $controller;
	}
	public function criaGrelha() {
		return array('views/grelha/createGrelha.inc.php') ;
	}
	public function atualizaGrelha() {
		return array('views/grelha/editGrelha.inc.php');
	}
	public function criaLocutor() {
		return array('views/grelha/editGrelha.inc.php');
	}
	public  function criaPrograma() {
		return array('views/grelha/createGrelha.inc.php');
	}
	public  function VerGrelha() {
		return array('views/grelha/grelha.inc.php');
	}
}
