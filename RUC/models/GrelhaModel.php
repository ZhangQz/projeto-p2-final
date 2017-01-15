<?php

class Grelha
{
	protected $tabela = "ementa";
	private $db;

	public function __construct($conn)
	{
		try
		{
		    $this->db = $conn;
			$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
		} catch(PDOException $e) {
		    echo "<strong>Ups! Ocorreu um erro com a ligação ao servidor</strong>... [ERROR: ".$e->getMessage()."]";
		}
	}

	/************************************
	 * Modelo Diaria que é a ementa	*
	 ************************************/
	public function createGrelha($dados)
	{
		try
		{
			$dt_cria = date("Y-m-d H:i:s");
			$dt_edit = $dt_cria;
		    return  $this->db->query("INSERT INTO $this->tabela (id_grelha, nome, data_inicio, data_fim. id_dia, id_programa, .id_locutor)
		    						  VALUES('{$dados[nome]}', '{$dados[preco]}', '{$dados[tipo]}', '{$dados[kcal]}', '{$dados[img]}', '{$dt_cria}', '{$dt_edit}', 1)");

		} catch(PDOException $e) {
		    echo "<strong>Ups! Ocorreu um erro a registar user</strong>... [ERROR: ".$e->getMessage()."]";
		}
	}
	public function getGrelha($id = null)
	{
		try
		{
			if ($id !== null) {
				$stml = $this->db->prepare("SELECT * FROM $this->tabela WHERE id_grelha = '{$id}'");
				$stml->execute();
				$results = $stml->fetch(PDO::FETCH_ASSOC);
			} else {
				$stml = $this->db->prepare("SELECT * FROM $this->tabela WHERE 1");
				$stml->execute();
				$results = $stml->fetchAll(PDO::FETCH_ASSOC);
			}

			return $results;

		} catch(PDOException $e) {
			echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
		}
	}

	public function getLocutores($id_grelha) {
		$stml = $this->db->prepare("SELECT * FROM grelha_locutor WHERE id_grelha = '{$id_grelha}'");
		$stml->execute();
		$results = $stml->fetchAll(PDO::FETCH_ASSOC);

		return $results;
	}

	public function getProgramas($id_grelha) {
		$stml = $this->db->prepare("SELECT * FROM grelha_programa WHERE id_grelha = '{$id_grelha}'");
		$stml->execute();
		$results = $stml->fetchAll(PDO::FETCH_ASSOC);

		return $results;
	}

}
?>
