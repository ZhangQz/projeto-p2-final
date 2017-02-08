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
	public function criaCategoria() {
		return array('views/noticia/createCategoria.inc.php');
	}
	public function verCronica() {
		return array('views/noticia/slideshow.inc.php');
	}
	public function verUltimasIndex(){
		return array('views/noticia/UltimasInf.inc.php');
	}
	public function IntroIndex() {
		return array('views/noticia/intro.inc.php');
	}
	public function verUltimas() {
		return array('views/noticia/ultimas.inc.php');
	}
}
?>