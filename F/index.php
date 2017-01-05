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
        <header class="row">
            <div class="row preta">
                <div class="col_1 colt_1 colm_1">
                    <div class="menud">
                        <a class="menui">
                            <img src="css/Media/Hamburger_icon.svg.png" class="icon_ham">
                            <img src="css/Media/cross-24-512.png" class="cross">
                        </a>
                    </div>
                </div>
                <div class = "col_1 colt_6 colm_3 logod">
                    <div class= "logoc">
                        <a href="index.html"><img src="css/Media/RUC_LOGO-01.png" class="logo"></a>
                    </div>
                </div>
                <nav class="col_8 colt_4 colm_4" id="menu">
                    <a class="info">
                        <div class="infod">
                            <span class="inform">Informação</span>
                            <div class="info-content">
                                <a class="ultimas" href="index.php?op=1">Últimas</a>
                                <a class="universidade" href="index.php?op=2">Universidade</a>
                                <a class="cultura" href="index.php?op=3">Cultura</a>
                                <a class="desporto" href="index.pshp?op=4">Desporto</a>
                                <a class="coimbra" href="index.php?op=5">Coimbra</a>
                                <a class="nacional" href="index.php?op=6">Nacional</a>
                                <a class="internacional" href="index.php?op=7">Internacinal</a>
                            </div>
                        </div>
                    </a>
                    <a class="prog">
                        <div class="progd">
                            <span class="programa">Programação</span>
                            <div class="prog-content">
                                <a class="grelha" href="index.php?op=8">Grelha Regular 16/17</a>
                                <a class="programas" href="index.php?op=9">Programas</a>
                                <a class="cronicas" href="index.php?op=10">Crónicas</a>
                            </div>
                        </div>
                    </a>
                    <a class="tecn">
                        <div class="tecnd">
                            <span class="servi">Serviços</span>
                            <div class="tecn-content">
                                <a class="tecnicos" href="index.php?op=11">Assistência Técnica</a>
                                <a class="equipamentos" href="index.php?op=12">Equipamentos</a>
                                <a class="producao" href="index.php?op=13">Produção</a>
                                <a class="publicidade" href="index.php?op=14">Publicidade</a>
                            </div>
                        </div>
                    </a>
                    <a class="cursos">
                        <div class="cursosd">
                            <span class="curs">Cursos</span>
                            <div class="cursos-content">
                                <a class="locucao" href="index.php?op=15">Locução e Realização</a>
                                <a class="informacao" href="index.php?op=16">Informação</a>
                                <a class="tecnica" href="index.php?op=17">Técnica de Radiodifusão</a>
                            </div>
                        </div>
                    </a>
                    <a class="ruc">
                        <div class="rucd">
                            <span class="ru">Ruc</span>
                            <div class="ruc-content">
                                <a class="contactos" href="index.php?op=18">Contactos</a>
                                <a class="pessoas" href="index.php?op=19">Pessoas</a>
                                <a class="historia" href="index.php?op=20">História</a>
                            </div>
                        </div>
                    </a>
                </nav>
                <div class="col_1 colt_1 colm_1 emissao"> 
                    <p class="ligar">Ouvir</p>
                    <p class="parar">Parar</p>
                    <audio src="css/Media/emissao.m3u">
                    </audio>
                </div>
                <div class="col_1"></div>  
            </div>
        </header>
        <main class="row">
        	<?php 
        		include 'includes\index_inc.php';
        	?>
        </main>
        <footer class="row">
            <div class="row">
                <div class="col_2 colt_1"></div>
                <div class="col_8 colt_6 colm_5 social">
                    <img src="css/Media/facebook.png" alt="logótipo do facebook" class="logo_fb">
                    <img src="css/Media/twitter.png" alt="logótipo do twitter" class="logo_tw">
                    <img src="css/Media/youtube.png" alt="logótipo do youtube" class="logo_yt">
                    <img src="css/Media/tunein.png" alt="logótipo do Tunein" class="logo_tu">
                </div>
                <div class="col_2 colt_1"></div>
            </div>
            <div class="row e_separador">
                <div class="col_2 colt_1"></div>
                <div class="col_8 colt_6 separador"></div>
                <div class="col_2 colt_1"></div>
            </div>
            <section class="row radiofim">
                <div class="col_2 colt_1"></div>
                <div class="col_8 colt_6 colm_5 fim">
                    <p class="fimnome">Rádio Universidade de Coimbra</p>
                    <p class="fimcopy">&copy;Carolina Castro e Zhang Qinzhe</p>
                </div>
                <div class="col_2 colt_1"></div>
            </section>
        </footer>
    </body>
</html>