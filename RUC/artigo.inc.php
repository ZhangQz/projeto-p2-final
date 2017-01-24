<div class="col_5 colt_4 colm_5">
    <div>
        <p class="ultimastitulo">Última Hora <a class="traco">-</a> <a>Informação</a></p>
    </div>
    <div class="newsfeed">
        <?php
        foreach ($row = $produtos->fetch(PDO::FETCH_ASSOC))
        echo <div class="new_content\">
            <p class=\"content_title\"><a>$row[categoria]</a>$row[titulo]</p>
            <p>$row[artigo]</p>
        </div> ?>
    </div>