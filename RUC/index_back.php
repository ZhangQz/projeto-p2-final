<?php
	require_once('db.php');
	//Login_Registo
	require_once('views/RegistoLoginView.php');
	require_once('controllers/RegistoLoginControl.php');
	require_once('models/RegistoLogin.php');
    //Grelha
    require_once('views/GrelhaView.php');
    require_once('controllers/GrelhaControl.php');
    require_once('models/Grelha.php');
    //Noticia
    require_once('views/NoticiaView.php');
    require_once('controllers/NoticiaControl.php');
    require_once('models/Noticia.php');
?>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial scale=1.0">
        <link rel="stylesheet" href="css/stylepage.css" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="description" content="">
        <meta title="RUC">
    </head>
    <body>
        <header class="col_3">
            <div class="row">
                 <nav class="col_2 _nav colm_5">
                     <a class= "logoc">
                        <img src="assets/Images/RUC_LOGO-01.png" class="logo">
                    </a>
                    <a class="_info">
                        <div class="_infod">
                            <span>Informação</span>
                        </div>
                    </a>
                    <a class="_prog">
                        <div class="_progd">
                            <span>Programação</span>
                        </div>
                    </a>
                    <a class="_tecn">
                        <div class="_tecnd">
                            <span>Serviços</span>
                        </div>
                    </a>
                    <a class="_cursos">
                        <div class="_cursosd">
                            <span>Cursos</span>
                        </div>
                    </a>
                    <a class="_ruc">
                        <div class="_rucd">
                            <span>Ruc</span>
                        </div>
                    </a>
                </nav>
        </header>
        <div class="col_9">
        <main class="row">
           <form id="_infoback">
        <select>
                <option value="criar"><action href="ind1.html">Criar Novo</action></option>
                <option value="atua">Atualizar</option>
                <option value="apagar">Apagar</option>
        </select>
        <select>    
                <option value="categ"><action href="ind2.html">Categoria</action></option>
                <option value="not">Notícia</option>
                <option value="aut">Autor</option>
        </select>
            <input type=submit value="Segue!"></input>
        </form>
        </main>
        <footer class="row">
            <div class="row">
                <div class="col_2"></div>
                <div class="col_8 separador"></div>
                <div class="col_2"></div>
            </div>
            <section class="row">
                <div class="col_2"></div>
                <div class="col_8 fim">
                    <p class="fimnome">Rádio Universidade de Coimbra</p>
                    <p class="fimcopy">&copy;Carolina Castro e Zhang Qinzhe</p>
                </div>
                <div class="col_2"></div>
            </section>
        </footer></div>
    </body>
</html>