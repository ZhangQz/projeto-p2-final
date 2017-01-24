
<?php
    $Noticia
?>
<section class="row preto">
    <div class="col_2 colt_1"></div>
    <div class="col_8 colt_6 colm_5 preto_slide">
        <?php
            $slideimagens = $data[1];
            while ($row = $sideimagens->fetch(PDO::FETCH_ASSOC)){
                echo "<div id="slideshow">
                <div>
                    <img src="assets/Images/slide_1" class="bacanal">
                    <!--<p class="slitext">Bacanal de 2 <!-- insert do view para o array--></p>-->
                </div>
                <div>
                    <img src="assets/Images/slide_2" class="bacanal_">
                    <!--<p class="slitext_">Bacanal 2 natal <!-- insert do view para o array--></p>-->
                </div>
                <div>
                    <img src="assets/Images/slide_3" class="bacanal_1">
                    <!--p class="slitext_1">2 de natal <!-- insert do view para o array--></p>-->
                </div>
            </div>";
            }
        ?>

    </div>
    <div class="col_2 colt_1"></div>
 </section>