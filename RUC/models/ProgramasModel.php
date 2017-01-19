<?php

  class Programas
  {
    protected $tabela = "programa";
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

    public function AllProg()
    {
      try
      {
        return $this->db->query("SELECT $this->tabela (idprograma, nome, descricao, link, horario)
          VALUES('{$programa[idprograma]}', '{$programa[nome]}', '{$programa[descricao]}', '{$programa[link]}', '{$programa[horário]}')
        ");
      } catch (PDOException $e) {
          echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
      }
    }

    public function ProgName()
    {
      try {
        return $this->db->query("SELECT $this->tabela (nome)
        VALUES('{$programa[nome]}')
      ");

      } catch (PDOException $e) {
					echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
      }
    }

    public function ProgDelete($programa)
    {
      try
      {
          return $this->db->query("DELETE FROM $this->tabela WHERE idprograma = $id");
      } catch(PDOException $e) {
          echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
      }
    }

    public function ProgUpdate($programa)
    {
      try
      {
          return $this->db->query("UPDATE $this->tabela
                        SET nome = '$dados[nome]',
                        WHERE idprograma = '$dados[idprograma]'");
      } catch(PDOException $e) {
          echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
      }
    }

    public function ProgNew($programa)
    {
      try
      {
          return  $this->db->query("INSERT INTO $this->tabela(idprograma, nome, descricao, link, horario)
                        VALUES('$dados[programa]', '$dados[idprograma]')");
      } catch(PDOException $e) {
          echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
      }
    }
  }

?>
