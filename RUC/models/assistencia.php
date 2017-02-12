<?php
class Assistencia
{
    protected $tabela = "cronicas";
    private $db;

    public function __construct($conn)
    {
        try {
            $this->db = $conn;
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        } catch (PDOException $e) {
            echo "Ocorreu um erro com a ligação ao servidor... [ERROR: " . $e->getMessage() . "]";
        }
    }

    public function createComidas($dados)
    {
        try {
            $dt_cria = date("Y-m-d H:i:s");
            $dt_edit = $dt_cria;
            return $this->db->query("INSERT INTO $this->tabela (nomeproduto, precoproduto, tipo, kcal, image, data_cria, data_edit, estado)
		    						  VALUES('{$dados[nome]}', '{$dados[preco]}', '{$dados[tipo]}', '{$dados[kcal]}', '{$dados[img]}', '{$dt_cria}', '{$dt_edit}', 1)");

        } catch (PDOException $e) {
            echo "<strong>Ups! Ocorreu um erro a registar user</strong>... [ERROR: " . $e->getMessage() . "]";
        }
    }
}