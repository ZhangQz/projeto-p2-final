<div class="gre_seg" id="seg">
    <p>Segunda-Feira</p>
    <div>
        <ul class="prog_seg">
            <li>
                <p class="seg_hora">09:00</p>
                <p class="seg_prog">Menos zero</p>
                <p class="seg_autor">Catarina Antunes</p>
            </li>
            <li>
                <p class="seg_hora">10.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">11:00</p>
                <p class="seg_prog">Menos zero</p>
                <p class="seg_autor">Daniela Silva</p>
            </li>
            <li>
                <p class="seg_hora">12.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">13:00</p>
                <p class="seg_prog">Menos zero</p>
                <p class="seg_autor">Daniela Silva</p>
            </li>
            <li>
                <p class="seg_hora">14.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">15:00</p>
                <p class="seg_prog">Menos zero</p>
                <p class="seg_autor">Daniela Ferreira</p>
            </li>
            <li>
                <p class="seg_hora">16.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">17.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">18.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">19.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">20.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">21.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">22.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">23.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">00.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">01.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
            <li>
                <p class="seg_hora">02.00</p>
                <p class="seg_prog">Kalundu</p>
                <p class="seg_autor">Carlos Braz</p>
            </li>
        </ul>
    </div>
</div>

<?php
  $comidas = $controller->getAllComidas();

  if ($_SESSION['user']['idperfil'] === 1):
?>
  <div class="Adicionar">
  <a href="<?=$path?>?modelo=Comida&action=2">Adicionar Comida</a>
  </div>
<?php endif; ?>
<div class="col_10 container_comidas">
  <div class="row">
  <?php foreach ($comidas as $comida) { ?>
    <div class="col_2 comidascomidas">
        <h2><?=$comida['nomeproduto']?></h2>
        <img src="#">
        <p><?=$comida['kcal']?></p>
        <h2><?=$comida['preco']?> €</h2>
        <div class="editaBtn">
          <a href="<?=$path . '?modelo=Reserva&action=5&id=' . $comida['idproduto']?>">Reservar</a>
        </div>
        <div class="editaBtn">
          <a href="<?=$path . '?modelo=Comida&action=3&id=' . $comida['idproduto']?>">Editar</a>
        </div>
        <div class="removeBtn">
          <a href="<?=$path . '?modelo=Comida&action=4&id=' . $comida['idproduto']?>">Remover</a>
        </div>
    </div>
  <?php } ?>
</div>
</div>
