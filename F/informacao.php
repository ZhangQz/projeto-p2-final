/*** ADICIONAR DADOS DE INFORMAÇÃO ***/
<h1>Adicionar notícia</h1>

<?php
    if (isset($_REQUEST['título']) && isset($_REQUEST['artigo']) && isset($_REQUEST['extra']))
        {
            if ($view->insereDado(array('titulo' => $_REQUEST['titulo'], 'artigo' => $_REQUEST['artigo'], 'extra' => $REQUEST['extra'])))
  
   	{ echo "<div class>A tua notícia já está na RUC!</div>"; 
 } else { 
 	echo "<div> Mau Jornalismo!!! Erro com a notícia</div>";
 }
}
?>

<form method="POST">
    <div class="">
        <label for="titulo" class="">Título:</label>
        <input type="text" id="titulo" name="titulo" class="" required>
    </div>
    <div class="">
        <label for="artigo" class="">Artigo:</label>
        <input type="text" id="artigo" name="artigo" class="" required>
    </div>
     <div class="">
        <label for="extra" class="">Extras:</label>
        <input type="text" id="extra" name="extra" class="" required>
    </div>
    <input type="submit" value="RUC e Segue" class="btn btn-primary">
</form>

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

/*** ATUALIZAR DADOS DE INFORMAÇÃO ***/


<h1>Editar dados já existentes...</h1>
<h2>Dados de Notícias</h2>
<?php 
   if (isset($_REQUEST['idnoticia']) && isset($_REQUEST['título']) && isset($_REQUEST['artigo']) && isset($_REQUEST['extra']))
        {
            if ($view->insereDado(array('idnoticia' => $_REQUEST['idnoticia'], 'titulo' => $_REQUEST['titulo'], 'artigo' => $_REQUEST['artigo'], 'extra' => $REQUEST['extra'])))
    { echo "<div>A notícia foi alterada</div>";}
    else { echo "<div>Mau jornalismo! Erro ao atualizar a notícia</div>";}
    }
?>

<form method="POST">
    <div>
    <label for="idnoticia">ID Notícia:</label>
    <input type="text" id="idnoticia" name="idnoticia" value="<?php echo $noticia['idnoticia']; ?>" readonly>
    </div>
    <div>
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" value="<?php echo $noticia['titulo']; ?>">
    </div>
    <div>
    <label for="artigo">Artigo:</label>
    <input type="text" id="artigo" name="artigo" value="<?php echo $noticia['artigo']; ?>">
    </div>
    <div>
    <label for="extra">Extras:</label>
    <input type="text" id="extra" name="extra" value="<?php echo $noticia['extra']; ?>">
    </div>
    <input type="submit" value="Atualizar Dados">
</form>

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
<h2>Categorias</h2>

<?php 
	if(isset($_REQUEST['idcategoria']) && isset($_REQUEST['nome'])) 
	{ if ($view->InsereDado(array('idcategoria' => $_REQUEST['idcategoria'], 'nome' => $_REQUEST['nome'])))
	{ echo "<div>Atualizado!!!</div>";
    	} else {
    		echo "<div>Erro ao actualizar categoria!</div>";
    	}
	}
?>

<form method="POST">
	<div>
	<label for="idcategoria">ID Categoria:</label>
    <input type="text" id="idcategoria" name="idcategoria" value="<?php echo $categoria['idcategoria']; ?>" readonly>
    </div>
	<div>
	<label for="nome">Nome:</label>
	<input type="text" id="nome" name="nome" value="<?php echo $categoria['nome']; ?>">
	</div>
	<input type="submit" value="Atualizar Dados">
</form>
