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