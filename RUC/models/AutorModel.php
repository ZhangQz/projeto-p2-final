<?php

	class Autor
	{
		protected $tabela = "autor";
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

		public function AllAutor()
		{
			try
			{
				return $this->db->query("SELECT $this->tabela (idautor, nome)
					VALUES('{$autor[idautor]}','{$autor[nome]}')
				");
			} catch(PDOException $e) {
					echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
			}
		}

		public function AutorName()
		{
			try
				return $this->db->query("SELECT $this->tabela (nome)
					VALUES('{$autor[nome]}')
				");
			{

			} catch (PDOException $e) {
					echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
			}
		}
	}
?>