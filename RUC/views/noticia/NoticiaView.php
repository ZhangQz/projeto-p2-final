<?php
class Noticia 
	{
		private $controller;

	public function __construct($controller)
	{
		$this->controller = $controller;
	}
	public function criaNoticia() {
		return array('views/') ;
	}
	public function atualizaNoticia() {
		return array();
	}
	public function categoriaNoticia() {
		return array();
	}
}
	
/*** Todas as notícias por ordem cronológica ***/
	
	
	
/*** Notícia por Categoria ***/
	