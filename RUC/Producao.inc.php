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
                    <p class="informacaorow1">Serviços</p>
                </div>
                <div class="col_3 colt_1"></div>
            </div>
            <div class="row gradiend"></div>
            <div class="row preto">
                <div class="col_2 colt_1"></div>
                <div class="col_6 este_servico">
                    <div class="assis_tecn_apresentacao">
                        <h1>Produção</h1>
                        <p class="a_t_a_1">O nosso departamento de Produção está disposto ajudar a si com qualquer gravação de voz ou som que precise.</p>
                        <p class="a_t_a_2">Preencha este formulario para sabermos como o podemos ajudar:</p>
                    </div>
                    <form class="assis_tecn_form" id="assis_tecn">
                        <label>O seu nome:</label><br>
                        <input type="text" placeholder="Café Tradicional"><br>
                        <label>Email que devemos contactar:</label><br>
                        <input type="text" placeholder="cafe_tradicional@cafe.pt"><br>
                        <label>O produto que quer publicitar:</label><br>
                        <input type="text" placeholder="Pasteis de Nata"><br>
                        <label>Tem o que quer gravar escrito?<br> Se não, podemos auxiliar com a criação do mesmo:</label>
                        <select>
                            <option value="sim">Sim, tenho</option>
                            <option value="nao">Não, preciso de ajuda</option>
                        </select><br>
                        <label>Indicações que queira deixar:</label><br>
                        <textarea rows="6" cols="50" name="comment" form="assis_tecn" placeholder="Detalhes" class="descricao"></textarea>
                        <input type="submit" class="assis_tecn_submit" value="Enviar">
                    </form>
                </div>
                <div class="col_2 outros_servicos">
                    <div class="outros_p">
                        <p>Precisa de outros serviços?</p>
                    </div>
                    <div class="outros_equip">
                        <img src="assets/Images/Equipamentos_icon.png" alt="equipamentos icon">
                        <p>Aluguer de equipamentos</p>
                    </div>
                    <div class="outros_prod">
                        <img src="assets/Images/Assis_tecn_icon.png" alt="Assistência Técnica icon">
                        <p>Assistência Técnica</p>
                    </div>
                    <div class="outros_publicidade">
                        <img src="assets/Images/publicidade_icon.png" alt="publicidade icon">
                        <p>Publicidade</p>
                    </div>
                </div>
                <div class="col_2 colt_1"></div>
            </div>
        </main>
    </body>
</html>