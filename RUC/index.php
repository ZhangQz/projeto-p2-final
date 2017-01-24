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
                                <a class="ultimas" href="index.php?op=2">Últimas</a>
                                <a class="universidade" href="index.php?op=3">Universidade</a>
                                <a class="cultura" href="index.php?op=4">Cultura</a>
                                <a class="desporto" href="index.pshp?op=5">Desporto</a>
                                <a class="coimbra" href="index.php?op=6">Coimbra</a>
                                <a class="nacional" href="index.php?op=7">Nacional</a>
                                <a class="internacional" href="index.php?op=8">Internacinal</a>
                            </div>
                        </div>
                    </a>
                    <a class="prog">
                        <div class="progd">
                            <span class="programa">Programação</span>
                            <div class="prog-content">
                                <a class="grelham" href="index.php?op=2">Grelha Regular 16/17</a>
                                <a class="programas" href="index.php?op=3">Programas</a>
                                <a class="cronicas" href="index.php?op=4">Crónicas</a>
                            </div>
                        </div>
                    </a>
                    <a class="tecn">
                        <div class="tecnd">
                            <span class="servi">Serviços</span>
                            <div class="tecn-content">
                                <a class="tecnicos" href="index.php?op=2">Assistência Técnica</a>
                                <a class="equipamentos" href="index.php?op=3">Equipamentos</a>
                                <a class="producao" href="index.php?op=4">Produção</a>
                                <a class="publicidade" href="index.php?op=5">Publicidade</a>
                            </div>
                        </div>
                    </a>
                    <a class="cursos">
                        <div class="cursosd">
                            <span class="curs">Cursos</span>
                            <div class="cursos-content">
                                <a class="locucao" href="index.php?op=2">Locução e Realização</a>
                                <a class="informacao" href="index.php?op=3">Informação</a>
                                <a class="tecnica" href="index.php?op=4">Técnica de Radiodifusão</a>
                            </div>
                        </div>
                    </a>
                    <a class="ruc">
                        <div class="rucd">
                            <span class="ru">Ruc</span>
                            <div class="ruc-content">
                                <a class="contactos" href="index.php?op=2">Contactos</a>
                                <a class="pessoas" href="index.php?op=3">Pessoas</a>
                                <a class="historia" href="index.php?op=4">História</a>
                            </div>
                        </div>
                    </a>
                </nav>
                <div class="col_2 colt_2 colm_1 account">
                    <div class="loggedin">
                        <a class="login">login</a>
                    </div>
                    <?php
                    if (!isset($Usermodel) || !isset($Usercontroller) || !isset($Userview))
                    {
                        $Usermodel = new Registo($conn);
                        $Usercontroller = new RegistoControl($Usermodel);
                        $Userview = new RegistoView($Usercontroller);
                    }
						$data = $Userview->Login_view();
						include($data[0]);
					?>
                    <?php if( isset($_SESSION['user']) )
                    {
                        $data = $Userview->Logout_view();
                        include($data[0]);
                    }
                    ?>
                </div>
            </div>
        </header>
        <main class="row">
            <?php
            if (!isset($NoticiaModel) || !isset($NoticiaController) || !isset($NoticiaView))
            {
                $NoticiaModel = new Noticia($conn);
                $NoticiaController = new NoticiaControl($NoticiaModel);
                $NoticiaView = new NoticiaView($NoticiaController);
            }
            $IntroData = $NoticiaView->IntroIndex();
            include($IntroData[0]);

            $SlideData = $NoticiaView->VerCronica();
            include($SlideData[0]);

            $IntroUltimas = $NoticiaView->verUltimasIndex();
            include($IntroUltimas[0]);

            /*** VALORES DE OP (1 - GERIR PRODUTOS, 2 - GERIR CATEGORIAS, ...) ***/
            if(isset($_REQUEST['op']) && $_REQUEST['op'] == 2) //Ultimas
            {
                /*** VERIFICA SE O MODEL, CONTROLLER E VIEW JÁ FORAM INICIADOS ***/
                if (!isset($Noticia_model) || !isset($Noticia_controller) || !isset($Noticia_view))
                {
                    $Noticia_model = new Noticia($conn);
                    $Noticia_controller = new NoticiaControl($model);
                    $Noticia_view = new NoticiaView($controller);
                }

                /*** DEFINIÇÃO DOS COMPORTAMENTOS DA VIEW (neste caso, PRODUTO) - CRIAR, EDITAR, APAGAR E LISTAR ***/
                if (isset($_REQUEST['opt']) && $_REQUEST['opt'] == 2) //criar produto
                {
                    $data = $view->criaProduto();
                    include($data[0]);
                }
                else if (isset($_REQUEST['opt']) && $_REQUEST['opt'] == 3 && isset($_REQUEST['id'])) //editar produto
                {
                    $data = $view->editaProduto($_REQUEST['id']);
                    $produto = $data[1];
                    include($data[0]);
                }
                else if (isset($_REQUEST['opt']) && $_REQUEST['opt'] == 4 && isset($_REQUEST['id'])) //apagar produto
                {
                    $data = $view->apagaProduto($_REQUEST['id']);
                    $produtos = $data[1];
                    include($data[0]);
                }
                else //listar produtos (por defeito)
                {
                    $data = $view->listaProdutos();
                    $produtos = $data[1];
                    include($data[0]);
                }

            }
            else if (isset($_REQUEST['op']) && $_REQUEST['op'] == 3) //GERIR CATEGORIAS
            {
                /* por implementar... */
            }
            ?>
        </main>
        <footer class="row">
            <div class="row">
                <div class="col_2 colt_1"></div>
                <div class="col_8 colt_6 colm_5 social">
                    <a href="https://www.facebook.com/RUC107.9FM" target="_blank"><img src="assets/Images/facebook.png" alt="logótipo do facebook" class="logo_fb"></a>
                    <a href="https://twitter.com/radioruc" target="_blank"><img src="assets/Images/twitter.png" alt="logótipo do twitter" class="logo_tw"></a>
                    <a href="https://www.youtube.com/user/radiouc25" target="_blank"><img src="assets/Images/youtube.png" alt="logótipo do youtube" class="logo_yt"></a>
                    <a href="http://tunein.com/radio/R%C3%A1dio-Universidade-de-Coimbra-1079-s1834/" target="_blank"><img src="assets/Images/tunein.png" alt="logótipo do Tunein" class="logo_tu"></a>
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
