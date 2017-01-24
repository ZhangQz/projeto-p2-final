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
            return $this->db->query("SELECT programa.*, locutor.*, programa_locutor.*, dia.*, grelha.* FROM programa JOIN programa_locutor ON programa.idprograma = programa_locutor.idprograma JOIN locutor ON programa_locutor.idlocutor = locutor.idlocutor JOIN grelhageral ON grelhageral.programa = programa_locutor.idprograma JOIN dia ON grelhageral.iddia = dia.iddia JOIN grelha ON grelhageral.idgrelha = grelha.idgrelha");
        } catch(PDOException $e) {
        echo"<strong>Ups! Ocorreu um erro!</strong>...[ERROR: ".$e->getMessage()."]";}
    }

    public  function ViewDomingo(){
		try
		{
			return $this->db->query("SELECT programa.*, locutor.*, programa_locutor.*, dia.*, grelha.* FROM programa JOIN programa_locutor ON programa.idprograma = programa_locutor.idprograma JOIN locutor ON programa_locutor.idlocutor = locutor.idlocutor JOIN grelhageral ON grelhageral.programa = programa_locutor.idprograma JOIN dia ON grelhageral.iddia = dia.iddia JOIN grelha ON grelhageral.idgrelha = grelha.idgrelha WHERE dia.iddia = 1 ORDER BY programa.horario ASC");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}
	
    public  function ViewSegunda(){
		try
		{
			return $this->db->query("SELECT programa.*, locutor.*, programa_locutor.*, dia.*, grelha.* FROM programa JOIN programa_locutor ON programa.idprograma = programa_locutor.idprograma JOIN locutor ON programa_locutor.idlocutor = locutor.idlocutor JOIN grelhageral ON grelhageral.programa = programa_locutor.idprograma JOIN dia ON grelhageral.iddia = dia.iddia JOIN grelha ON grelhageral.idgrelha = grelha.idgrelha WHERE dia.iddia = 2 ORDER BY programa.horario ASC");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}
    
    public  function ViewTerça(){
		try
		{
			return $this->db->query("SELECT programa.*, locutor.*, programa_locutor.*, dia.*, grelha.* FROM programa JOIN programa_locutor ON programa.idprograma = programa_locutor.idprograma JOIN locutor ON programa_locutor.idlocutor = locutor.idlocutor JOIN grelhageral ON grelhageral.programa = programa_locutor.idprograma JOIN dia ON grelhageral.iddia = dia.iddia JOIN grelha ON grelhageral.idgrelha = grelha.idgrelha WHERE dia.iddia = 3 ORDER BY programa.horario ASC ");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}
    
    public  function ViewQuarta(){
		try
		{
			return $this->db->query("SELECT programa.*, locutor.*, programa_locutor.*, dia.*, grelha.* FROM programa JOIN programa_locutor ON programa.idprograma = programa_locutor.idprograma JOIN locutor ON programa_locutor.idlocutor = locutor.idlocutor JOIN grelhageral ON grelhageral.programa = programa_locutor.idprograma JOIN dia ON grelhageral.iddia = dia.iddia JOIN grelha ON grelhageral.idgrelha = grelha.idgrelha WHERE dia.iddia = 4 ORDER BY programa.horario ASC");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}
    
    public  function ViewQuinta(){
		try
		{
			return $this->db->query("SELECT programa.*, locutor.*, programa_locutor.*, dia.*, grelha.* FROM programa JOIN programa_locutor ON programa.idprograma = programa_locutor.idprograma JOIN locutor ON programa_locutor.idlocutor = locutor.idlocutor JOIN grelhageral ON grelhageral.programa = programa_locutor.idprograma JOIN dia ON grelhageral.iddia = dia.iddia JOIN grelha ON grelhageral.idgrelha = grelha.idgrelha WHERE dia.iddia = 5 ORDER BY programa.horario ASCC");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}
    
    public  function ViewSexta(){
		try
		{
			return $this->db->query("SELECT programa.*, locutor.*, programa_locutor.*, dia.*, grelha.* FROM programa JOIN programa_locutor ON programa.idprograma = programa_locutor.idprograma JOIN locutor ON programa_locutor.idlocutor = locutor.idlocutor JOIN grelhageral ON grelhageral.programa = programa_locutor.idprograma JOIN dia ON grelhageral.iddia = dia.iddia JOIN grelha ON grelhageral.idgrelha = grelha.idgrelha WHERE dia.iddia = 6 ORDER BY programa.horario ASC");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}
    
    public  function ViewSábado(){
		try
		{
			return $this->db->query("SELECT programa.*, locutor.*, programa_locutor.*, dia.*, grelha.* FROM programa JOIN programa_locutor ON programa.idprograma = programa_locutor.idprograma JOIN locutor ON programa_locutor.idlocutor = locutor.idlocutor JOIN grelhageral ON grelhageral.programa = programa_locutor.idprograma JOIN dia ON grelhageral.iddia = dia.iddia JOIN grelha ON grelhageral.idgrelha = grelha.idgrelha WHERE dia.iddia = 7 ORDER BY programa.horario ASC    ");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}

}
?>
