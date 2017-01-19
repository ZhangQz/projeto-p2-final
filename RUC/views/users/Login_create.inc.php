<?php
	if (isset($erro)) { ?>
				<div class='alert alert-danger'>
					  <strong>Erro1!</strong>
				</div>
<?php
	}
?>

<div class="log_in">
    <form class="log_form">
        <label>Email</label>
        <input type="text" name="Email" placeholder="user@ruc.pt" class="log_email">
        <label>Password</label>
        <input type="password" name="password" placeholder="*****" class="log_password">
        <input type="submit" name="Entrar" value="Entrar" class="log_submit">
        <input class="acesso" name="subscribe" value="Aderuc-te">
    </form>
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
