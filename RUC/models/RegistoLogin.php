<?php

	class Registo
	{
		protected $tabela = "user";
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

		public function createUser($dados)
		{
			try
			{
				$password = $dados[pass];

			    return  $this->db->query("INSERT INTO $this->tabela (nome, password, email)
			    						  VALUES('{$dados[nome]}', '{$dados[password]}', '{$dados[email]}')");

			} catch(PDOException $e) {
			    echo "Ocorreu um erro a aderir... [ERROR: ".$e->getMessage()."]";
			}
		}
		public function verifyUser($dados)
		{
			try
			{
				$stml = $this->db->prepare("SELECT iduser,nome,email,pass FROM $this->tabela WHERE email = :email AND pass = :pass");
				$stml->bindParam(':email', $dados['email'], PDO::PARAM_STR);
				$stml->bindParam(':password', $dados['password'], PDO::PARAM_STR);
				$stml->execute();
				return $stml->fetch(PDO::FETCH_ASSOC);
			} catch(PDOException $e) {
				echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
			}
		}
	}
?>
