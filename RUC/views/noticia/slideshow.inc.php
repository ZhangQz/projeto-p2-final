<section class="row preto">
    <div class="col_2 colt_1"></div>
    <div class="col_8 colt_6 colm_5 preto_slide">
            <div id="slideshow">
                <?php
                    foreach ($row = $noticia->fetch(PDO::FETCH_ASSOC))
                    {
                        echo "<div>
                                <img src="$row->VerSlideshow();">
                            </div> ";
                    }
                ?>
                <div>
                    <img src="assets/images/slide_2" class="bacanal_">
                </div>
                <div>
                    <img src="assets/images/slide_3" class="bacanal_1"">
                </div>
            </div>
    </div>
    <div class="col_2 colt_1"></div>
 </section>