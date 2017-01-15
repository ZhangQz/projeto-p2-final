<h1>Editar dados já existentes...</h1>
<h2>Dados de Autor</h2>

<?php 
	if(isset($_REQUEST['idautor']) && isset($_REQUEST['nome'])) 
	{ if ($view->InsereDado(array('idautor' => $_REQUEST['idautor'], 'nome' => $_REQUEST['nome'])))
	{ echo "<div>Atualizado!!!</div>";
    	} else {
    		echo "<div>Erro ao actualizar autor!</div>";
    	}
	}
?>

<form method="POST">
	<div>
	<label for="idautor">ID Autor:</label>
    <input type="text" id="idautor" name="idautor" value="<?php echo $autor['idautor']; ?>" readonly>
    </div>
	<div>
	<label for="nome">Nome:</label>
	<input type="text" id="nome" name="nome" value="<?php echo $autor['nome']; ?>">
	</div>
	<input type="submit" value="Atualizar Dados">
</form>