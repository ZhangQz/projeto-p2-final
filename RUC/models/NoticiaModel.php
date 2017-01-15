<?php

class Registo
{
	protected $tabela = "noticia";
	private $db;

	public function __construct($conn)
	{
		try
		{
			$this->db = $conn;
			$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
		} catch(PDOException $e) {
			echo "Ocorreu um erro com a ligação ao servidor... [ERROR: ".$e->getMessage()."]";
		}
	}

	public function createNoticia($dados)
	{
		try
		{

			return  $this->db->query("INSERT INTO $this->tabela (titulo, artigo, data_noticia, extras, idcategoria)
					VALUES('{$dados[titulo]}', '{$dados[artigo]}', '{$dados[data_noticia]}', '{$dados[extras]}', '{$dados[idcategoria]}')");

		} catch(PDOException $e) {
			echo "Ocorreu um erro a aderir... [ERROR: ".$e->getMessage()."]";
		}
	}
	public function verifyNoticia($dados)
	{
		try
		{
			$stml = $this->db->prepare("SELECT idnoticia,titulo,artigo,data_noticia, extras, idcategoria FROM $this->tabela");
			$stml->execute();
			return $stml->fetch(PDO::FETCH_ASSOC);
		} catch(PDOException $e) {
			echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
		}
	}
	
}
?>