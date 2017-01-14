<?php
	session_start();

	require_once('database.php');
	require_once('routes.php');
	require_once('handle.php');
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
        <header class="row">
            <div class="row preta">
                <div class="col_1 colt_1 colm_1">
                    <div class="menud">
                        <a class="menui">
                            <img src="assets/Images/Hamburger_icon.svg.png" class="icon_ham">
                            <img src="assets/Images/cross-24-512.png" class="cross">
                        </a>
                    </div>
                </div>
                <div class = "col_1 colt_6 colm_3 logod">
                    <div class= "logoc">
                        <a href="index.html"><img src="assets/Images/RUC_LOGO-01.png" class="logo"></a>
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
                <div class="col_2 colt_2 colm_1 account">
                    <div class="loggedin">
                        <a class="login">login</a>
                    </div>
                    <div class="log_in_cont">
                        <div class="sign_in" id="sign_in">
                            <img src="assets/Images/cross-24-512.png" class="exit">
                            <form class="sign_form">
                                <label>Email</label>
                                <input type="text" name="e-mail" placeholder="convidado@ruc.pt" class="sign_email">
                                <label>Palavra Passe</label>
                                <input type="password" name="password" placeholder="*****" class="sign_password">
                                <label>Confirmar <br>Palavra Passe</label>
                                <input type="password" name="password" placeholder="*****" class="sign_confirm">
                                <input type="submit" name="Submeter" value="Entrar" class="sign_submit">
                            </form>
                        </div>
                        <div class="log_in">
                            <form class="log_form">
                                <label>Email</label>
                                <input type="text" name="Email" placeholder="user@ruc.pt" class="log_email">
                                <label>Password</label>
                                <input type="password" name="password" placeholder="*****" class="log_password">
                                <input type="submit" name="Entrar" value="Entrar" class="log_submit">
                                <input class="acesso" name="subscribe" value="Aderuc-te">
                            </form>
                        </div>
                    </div>
										<?php if( isset($_SESSION['user']) ){ ?>
                    <div class="loggedout">
                        <img src="assets/Images/user_icon.png" alt="user icon" class="user_icon">
                    </div>
                    <div class="user_cont">
                        <p class="bem_vindo">Bem vindo Francisco!</p>
                        <p class="entrar_gestor">Entrar no Gestor</p>
                        <p class="log_out">Log out</p>
                    </div>
										<?php } ?>
                </div>
            </div>
        </header>
        <main class="row">
            <div class="row ploco">
                <div class="filtro"></div>
                <video muted autoplay loop id="pvid" alt="video apresentação">
                <source src="assets/media/ruc.mp4" type="video/mp4">
                 Your browser does not support the video tag.
                </video>
                <div class="col_3 colt_1"></div>
                <div class="col_6 colt_6 colm_5 titulo">
                    <p class="radiouni">Rádio Universidade de Coimbra <a class="centoesete">107.9FM</a></p>
                </div>
                <div class="col_3 colt_1"></div>
            </div>
            <div class="row gradiend"></div>
            <section class="row preto">
                <div class="col_2 colt_1"></div>
                <div class="col_8 colt_6 colm_5 preto_slide">
                    <div id="slideshow">
                       <div>
                         <img src="http://www.ruc.pt/wp-content/uploads/2016/11/14720594_10154256761858393_4201544313377765259_n-600x192.png" class="bacanal">
                       </div>
                       <div>
                         <img src="http://www.ruc.pt/wp-content/uploads/2016/10/14330002_10154544568309530_1286348928535110057_n-600x192.jpg" class="bacanal_">
                       </div>
                       <div>
                         <img src="http://www.ruc.pt/wp-content/uploads/2016/11/amen16-600x192.jpg" class="bacanal_1">
                       </div>
                    </div>
                </div>
                <div class="col_2 colt_1"></div>
            </section>
            <section class="row preto_">
                <div class="col_2 colt_1"></div>
                <div class="col_5 colt_4 colm_5">
                    <div>
                        <p class="ultimastitulo">Última Hora <a class="traco">-</a> <a>Informação</a></p>
                    </div>
                    <div class="newsfeed">
                        <div class="new_content">
                            <p class="content_title"><a>TEMA</a> / TITULO DA NOTICIA</p>
                            <p>Ainda assim, existem dúvidas a respeito de como a adoção de políticas descentralizadoras causa impacto indireto na reavaliação dos paradigmas corporativos.</p>
                        </div>
                        <div class="new_content_">
                            <p class="content_title"><a>TEMA</a> / TITULO DA NOTICIA</p>
                            <p>Some people have an ability to write placeholder text... It's an art you're basically born with. You either have it or you don't. When other websites give you text, they’re not sending the best. They’re not sending you, they’re sending words that have lots of problems and they’re bringing those problems with us. They’re bringing mistakes. They’re bringing misspellings. They’re typists… And some, I assume, are good wo</p>
                        </div>
                        <div class="new_content_1">
                            <p class="content_title"><a>TEMA</a> / TITULO DA NOTICIA</p>
                            <p>The concept of Lorem Ipsum was created by and for the Chinese in order to make U.S. design jobs non-competitive. Some people have an ability to write placeholder text... It's an art you're basically born with. You either have it or you don't. An 'extremely credible source' has called my office and told me that Lorem Ipsum's birth certificate is a fraud.</p>
                        </div>
                        <div class="ler_mais">
                            <p>Ler mais</p>
                        </div>
                    </div>
                </div>
                <div class="col_2 colt_1"></div>
            </section>
        </main>
        <footer class="row">
            <div class="row">
                <div class="col_2 colt_1"></div>
                <div class="col_8 colt_6 colm_5 social">
                    <img src="assets/Images/facebook.png" alt="logótipo do facebook" class="logo_fb">
                    <img src="assets/Images/twitter.png" alt="logótipo do twitter" class="logo_tw">
                    <img src="assets/Images/youtube.png" alt="logótipo do youtube" class="logo_yt">
                    <img src="assets/Images/tunein.png" alt="logótipo do Tunein" class="logo_tu">
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