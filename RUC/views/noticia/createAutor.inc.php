<h1>Adicionar Autor</h1>

<?php 
	if(isset($_REQUEST['nome'])) 
	{ if ($view->InsereDado(array('nome' => $_REQUEST['nome'])))
	{ echo "<div>Adicionado!!!</div>";
    	} else {
    		echo "<div>Erro ao adicionar autor!</div>";
    	}
	}
?>

<form method="POST">
	<div>
	<label for="nome">Nome:</label>
	<input type="text" id="nome" name="nomeautor" required>
	</div>
	<input type="submit" value="Adiciona">
</form>