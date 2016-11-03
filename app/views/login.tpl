{include file='layout/top.tpl'}
{include file='layout/navigation.tpl' active='login'}


<div class="container">
	<div class="modal-dialog">
		<div class="loginmodal-container">
			<h1>##login_headline##</h1><br>
			<form action="/ajax/login" method="post">
				<input type="text" name="username" placeholder="Username"><br>
				<input type="password" name="password" placeholder="Password"><br>
				<input type="submit" name="login" value="Login">
			</form>

			<div class="login-help">
				<a href="#">##login_register##</a> - <a href="#">##login_forgot##</a>
			</div>
		</div>
	</div>
</div>


{include file='layout/bottom.tpl'}