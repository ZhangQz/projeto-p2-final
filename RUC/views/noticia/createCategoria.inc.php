<h1>Adicionar Categoria</h1>

<?php 
	if(isset($_REQUEST['nome'])) 
	{ if ($view->InsereDado(array('nome' => $_REQUEST['nome'])))
	{ echo "<div>Adicionada!!!</div>";
    	} else {
    		echo "<div>Erro ao adicionar categoria!</div>";
    	}
	}
?>

<form method="POST">
	<div>
	<label for="nome">Nome:</label>
	<input type="text" id="categoria" name="categoria" required>
	</div>
	<input type="submit" value="Adiciona!">
</form>