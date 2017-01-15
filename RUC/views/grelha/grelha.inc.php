<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial scale=1.0">
        <link rel="stylesheet" href="css/stylepage.css" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script> </script>
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="description" content="">
        <meta title="RUC">
    </head>
    <body>
        <main class="row">
            <div class="row ploco">
                <div class="filtro"></div>
                <video muted autoplay loop id="pvid" alt="video apresentação">
                <source src="assets/media/ruc.mp4" type="video/mp4">
                 Your browser does not support the video tag.
                </video>
                <div class="col_3 colt_1"></div>
                <div class="col_6 colt_6 colm_5 titulo_info">
                    <p class="radioni_info">Rádio Universidade de Coimbra<p>
                    <p class="informacaorow1">Programação</p>
                </div>
                <div class="col_3 colt_1"></div>
            </div>
            <div class="row gradiend"></div>
            <section class="row preto_">
                <div class="col_2 colt_1"></div>
                <div class="col_8 colt_6 colm_5">
                    <div>
                        <p class="noticias_ultimas">Grelha Regular 16/17</p>
                    </div>
                    <!--<table class="tabela_grelha">
                        <tr class="hora0">
                            <td>
                                <p>00:00</p>
                            </td>
                            <td>
                                <p>Menos zero</p>
                            </td>
                            <td>
                                <p>Catarina Antunes e João Sousa</p>
                            </td>
                        </tr>
                        <tr class="hora1">
                            <td>
                                <p>00:00</p>
                            </td>
                            <td>
                                <p>Menos zero</p>
                            </td>
                            <td>
                                <p>Catarina Antunes e João Sousa</p>
                            </td>
                        </tr>
                        <tr class="hora2">
                            <td>
                                <p>00:00</p>
                            </td>
                            <td>
                                <p>Menos zero</p>
                            </td>
                            <td>
                                <p>Catarina Antunes e João Sousa</p>
                            </td>
                        </tr>
                        <tr class="hora3">
                            <td>
                                <p>00:00</p>
                            </td>
                            <td>
                                <p>Menos zero</p>
                            </td>
                            <td>
                                <p>Catarina Antunes e João Sousa</p>
                            </td>
                        </tr>
                    </table>-->
                    <ul class="grelha_geral">
                        <li class="segunda" id="segunda">
                            <a href="#segunda">Segunda-feira</a>
                        </li>
                        <li class="terca" id="terca">
                            <a href="#terca">Terça-feira</a>
                        </li>
                        <li class="quarta" id="quarta">
                            <a href="#quarta">Quarta-feira</a>
                        </li>
                        <li class="quinta" id="quinta">
                            <a href="#quinta">Quinta-feira</a>
                        </li>
                        <li class="sexta" id="sexta">
                            <a href="#sexta">Sexta-feira</a>
                        </li>
                        <li class="sabado" id="sabado">
                            <a href="#sabado">Sabado</a>
                        </li>
                        <li class="domingo" id="domingo">
                            <a href="#domingo">Domingo</a>
                        </li>
                    </ul>
                    <?php
                      include(Grelha_segunda.inc.php);
                    ?>
                    <?php
                      include(Grelha_terca.inc.php);
                    ?>
                    <?php
                      include(Grelha_quarta.inc.php);
                    ?>
                    <?php
                      include(Grelha_quinta.inc.php);
                    ?>
                    <?php
                      include(Grelha_sexta.inc.php);
                    ?>
                    <?php
                      include(Grelha_sabado.inc.php);
                    ?>
                    <?php
                      include(Grelha_domingo.inc.php);
                    ?>
                </div>
                <div class="col_2 colt_1"></div>
            </section>


            <?php
            include("Grelha_segunda.inc.php");
            ?>s

            <div class="col_4 container_segunda">
              <?php
                $grelhas = $controller->getAllGrelhas();

                foreach ($grelhas as $grelha) {
                  $menus = $controller->getGrelhasLocutor($grelhas['id_locutor']);
                  $comidas = $controller->getGrelhasProgramas($grelhas['id_programa']);
              ?>
                <div class="container_x">
                    <h2>Diária de Hoje</h2>
                    <?php foreach ($grelhas as $index => $grelha) { ?>
                    <h4>Prato <?=($index + 1)?></h4>
                      <p><?=$programa['id_programa']?></p>
                    <?php } ?>
                    <h4>Produtos</h4>
                    <?php foreach ($comidas as $index => $comida) { ?>
                      <p><?=$comida['id_locutor']?></p>
                    <?php } ?>
                    <br>
                    <form action="">
                      <input type="checkbox" name="diaria" value="1">
                    </form>

                </div>
                <?
                }
                ?>
            </div>
