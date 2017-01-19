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
				echo "Ocorreu um erro com a  ligação ao servidor... [ERROR: ".$e->getMessage()."]";
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

		public function LocName($nome)
		{
			try
			{
				return $this->db->query("SELECT $this->tabela (nome)
					VALUES('{$locutor[nome]}')
				");

			} catch (PDOException $e) {
					echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
			}
		}

		public function LocDelete($locutor)
		{
			try
			{
					return $this->db->query("DELETE FROM $this->tabela WHERE idlocutor = $id");
			} catch(PDOException $e) {
					echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
			}
		}

		public function LocUpdate($locutor)
		{
			try
			{
					return $this->db->query("UPDATE $this->tabela
												SET nome = '$dados[locutor]',
												WHERE idlocutor = '$dados[idlocutor]'");
			} catch(PDOException $e) {
					echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
			}
		}

		public function LocNew($locutor)
		{
			try
			{
					return  $this->db->query("INSERT INTO $this->tabela(nome, idlocutor)
												VALUES('$dados[locutor]', '$dados[idlocutor]')");
			} catch(PDOException $e) {
					echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
			}
		}
	}
?>
