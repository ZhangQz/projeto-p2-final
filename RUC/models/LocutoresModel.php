<?php

	class Locutor
	{
		protected $tabela = "locutor";
		private $db;

		public function __construct($conn)
		{
			try
			{
				$this->db = $conn;
				$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$this->db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
			} catch (Exception $e) {
				echo "Ocorreu um erro com a ligação ao servidor... [ERROR: ".$e->getMessage()."]";
			}
		}

		public function AllLoc()
		{
			try
			{
				return $this->db->query("SELECT $this->tabela (idlocutor, nome)
					VALUES('{$locutor[idlocutor]}','{$locutor[nome]}')
				");
			} catch(PDOException $e) {
					echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
			}
		}

		public function LocName()
		{
			try
				return $this->db->query("SELECT $this->tabela (nome)
					VALUES('{$locutor[nome]}')
				");
			{

			} catch (PDOException $e) {
					echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
			}
		}
	}
?>
