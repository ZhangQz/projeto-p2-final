<div class="col_5 colt_4 colm_5">
    <div>
        <p class="ultimastitulo">�ltima Hora <a class="traco">-</a> <a>Informa��o</a></p>
    </div>
    <div class="newsfeed">
        <?php
        foreach ($row = $produtos->fetch(PDO::FETCH_ASSOC))
        echo <div class=\"new_content\">
            <p class=\"content_title\"><a>/*Include da categoria*/</a>/*Include do titulo*/</p>
            <p>/*Include do conteudo*/</p>
        </div>?>
    </div>