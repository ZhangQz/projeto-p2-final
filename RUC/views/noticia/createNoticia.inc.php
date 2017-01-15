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