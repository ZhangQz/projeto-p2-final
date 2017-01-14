<?php
	class Noticia
	{
		protected $tabela = "categoria_noticia";
		private $db;
		
		public function __construct()
		{
			try { $this->db = new PDO('mysql:host=localhost;dbname=RUC', 'root', '');
				$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ATTR_ERRMODE_EXCEPTION);
				$this->db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false); 
			} catch (PDOException $e) {
				echo "Ocorreu um erro! [ERROR: " .$e->getMessage()."]";
			}
		}
	}
	
/*** Todas as notícias ***/
	
	public function getAllProducts()
	{
		try 
		{
			return $this->db->query("SELECT $this->tabela.*, categoria.noticia AS 'categoria_noticia");
		} catch(PDOException $e) {
			echo"Ocorreu um erro! [ERROR: " .$e->getMessage(). "]";
		}
	}
	
/*** Notícia por Categoria ***/
	