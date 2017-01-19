<?php

class Grelha
{
	protected $tabela = "Grelha";
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
	 * Modelo Grelha *
	 ************************************/
	public function createGrelha($grelhas)
	{
		try
		{
			$dt_cria = date("Y-m-d H:i:s");
			$dt_edit = $dt_cria;
		    return  $this->db->query("INSERT INTO $this->tabela (id_grelha, nome, data_inicio, data_fim. id_dia, id_programa, id_locutor)
		    						  VALUES('{$grelhas[id_grelha]}', '{$grelhas[nome]}', '{$grelhas[data_inicio]}', '{$grelhas[data_fim]}', '{$grelhas[id_dia]}', '{$grelhas[id_programa]}', '{$grelhas[id_locutor]}')");

		} catch(PDOException $e) {
		    echo "<strong>Ups! Ocorreu um erro a registar user</strong>... [ERROR: ".$e->getMessage()."]";
		}
	}
	/*public function getGrelha($id = null)
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
		}*/
    
    public function AllGrelha()
    {
        try
        {
            return $this->db->query("SELECT dia.*, programa.*, locutor.* FROM dia JOIN grelhageral ON dia.iddia = grelhageral.iddia JOIN programa ON grelhageral.idprograma = programa.idprograma JOIN locutor ON grelhageral.idlocutor = locutor.idlocutor");
        } catch(PDOException $e) {
        echo"<strong>Ups! Ocorreu um erro!</strong>...[ERROR: ".$e->getMessage()."]";}
    }

	


}
?>
