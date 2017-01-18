
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
    <?php include($view->criaLogin()[0]); ?>
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
