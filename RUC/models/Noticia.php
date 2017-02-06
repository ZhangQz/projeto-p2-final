<?php

class Noticia
{
	protected $tabela = "categoria_noticia";
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

	public function AllNot()
	{
		try
		{
			return $this->db->query("SELECT noticia.*, autor.*, noticia_autor.*, categoria.* FROM noticia JOIN
noticia_autor ON noticia.idnoticia = noticia_autor.idnoticia JOIN autor ON
noticia_autor.idautor = autor.idautor JOIN categoria_noticia ON
categoria_noticia.idnoticia = noticia_autor.idnoticia JOIN categoria ON
categoria_noticia.idcategoria = categoria.idcategoria");
        } catch(PDOException $e) {
            echo"<strong>UPS! Ocorreu um erro!</strong>...[ERROR: ".$e->getMessage()."]";
        }
    }

	public function UltimasNoticia(){
		try
		{
			return $this->db->query("SELECT noticia.*, autor.*, noticia_autor.*, categoria.* FROM noticia JOIN
noticia_autor ON noticia.idnoticia = noticia_autor.idnoticia JOIN autor ON
noticia_autor.idautor = autor.idautor JOIN categoria_noticia ON
categoria_noticia.idnoticia = noticia_autor.idnoticia JOIN categoria ON
categoria_noticia.idcategoria = categoria.idcategoria ORDER BY noticia.data_noticia
DESC");
		} catch(PDOException $e) {
			echo"<strong>UPS! Ocorreu um erro!</strong>...[ERROR: ".$e->getMessage()."]";
		}
	}

	public  function ViewCategoryAcademia(){
		try
		{
			return $this->db->query("SELECT * FROM categoria_noticia INNER join noticia ON noticia.idnoticia = categoria_noticia.idnoticia WHERE idcategoria=1");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}

	public  function ViewCategoryUniversidade(){
		try
		{
			return $this->db->query("SELECT * FROM categoria_noticia INNER join noticia ON noticia.idnoticia = categoria_noticia.idnoticia WHERE idcategoria=2");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}

	public  function ViewCategoryCoimbra(){
		try
		{
			return $this->db->query("SELECT * FROM categoria_noticia INNER join noticia ON noticia.idnoticia = categoria_noticia.idnoticia WHERE idcategoria=3");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
	}

	public  function ViewCategoryNacional(){
		try
		{
			return $this->db->query("SELECT * FROM categoria_noticia INNER join noticia ON noticia.idnoticia = categoria_noticia.idnoticia WHERE idcategoria=4");
		} catch(PDOException $e) {
			echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
		}
    }

		public  function ViewCategoryCultura(){
			try
			{
				return $this->db->query("SELECT * FROM categoria_noticia INNER join noticia ON noticia.idnoticia = categoria_noticia.idnoticia WHERE idcategoria=5");
			} catch(PDOException $e) {
				echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
			}
		}

		public  function ViewCategoryDesporto(){
			try
			{
				return $this->db->query("SELECT * FROM categoria_noticia INNER join noticia ON noticia.idnoticia = categoria_noticia.idnoticia WHERE idcategoria=6");
			} catch(PDOException $e) {
				echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
			}
		}

		public  function ViewCategoryInternacional(){
			try
			{
				return $this->db->query("SELECT * FROM categoria_noticia INNER join noticia ON noticia.idnoticia = categoria_noticia.idnoticia WHERE idcategoria=7");
			} catch(PDOException $e) {
				echo "Ocorreu um erro, tente novamente...".$e->getMessage()."]";
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
	
	public function DeleteNot($noticia)
	{
		try
		{
			return $this->db->query("DELETE FROM $this->tabela WHERE idnoticia = $id");
		} catch(PDOException $e) {
			echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
		}
	}
	
	public function UpdateNot()
	{
		try {
			return $this->db->query("UPDATE $this->tabela
					SET all = '$dados[titulo]', '$dados[artigo]', '$dados[data_noticia]', '$dados[extras]', '$dados[idcategoria]',
					WHERE idnoticia = '$dados[idnoticia]'");
		} catch (PDOException $e) {
			echo "<strong>Ups! Ocorreu um erro</strong>... [ERROR: ".$e->getMessage()."]";
				
		}
	}

	public function verifyNoticia($dados)
	{
		try
		{
			$stml = $this->db->prepare("SELECT idnoticia,titulo,data_noticia, extras, idcategoria FROM $this->tabela");
			$stml->execute();
			return $stml->fetch(PDO::FETCH_ASSOC);
		} catch(PDOException $e) {
			echo "Ocorreu um erro... [ERROR: ".$e->getMessage()."]";
		}
	}

	public function VerSlideshow ()
	{
		try {
            return $this->db->query("SELECT * FROM categoria_noticia INNER join noticia ON noticia.idnoticia = categoria_noticia.idnoticia WHERE idcategoria=8 LIMIT 3");
            } catch(PDOException $e) {
            echo "<strong>UPS! Ocorreu um erro!</strong>...[ERROR: ".$e->getMessage()."]";
        }
	}
}
?>