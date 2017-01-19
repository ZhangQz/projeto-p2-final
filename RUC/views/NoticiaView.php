<?php
class NoticiaView 
	{
		private $controller;

	public function __construct($controller)
	{
		$this->controller = $controller;
	}
	public function criaNoticia() {
		return array('views/noticia/createNoticia.inc.php') ;
	}
	public function atualizaNoticia() {
		return array('views/noticia/editNoticia.inc.php');
	}
	public function criaAutor() {
		return array('views/noticia/createAutor.inc.php');
	}
	public function atualizaAutor() {
		return array('views/noticia/editAutor.inc.php');
	}
	public  function criaCategoria() {
		return array('views/noticia/createCategoria.inc.php');
	}
}