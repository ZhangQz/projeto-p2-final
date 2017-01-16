
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
            ?>

            <div class="col_4 container_segunda">
              <?
                $grelhas = $controller->getAllGrelhas();

                foreach ($grelhas as $grelha) {
                  $lucutor = $controller->getGrelhasLocutor($grelhas['id_locutor']);
                  $programa = $controller->getGrelhasProgramas($grelhas['id_programa']);
              ?>
                <div class="container_x">
                    <?php foreach ($grelhas as $index => $grelha) { ?>
                    <?=($index + 1)?>
                    <?=$programa['id_programa']?>
                    <?php } ?>
                    <?php foreach ($comidas as $index => $comida) { ?>
                    <?=$locutor['id_locutor']?>
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
