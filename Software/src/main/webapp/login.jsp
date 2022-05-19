<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Inicio</title>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

h3 {
	text-align: center;
}

small {
	margin-left: 22px;
}

.container {
	margin-top: 30px;
}

#iniciarSesion {
	margin-left: 20%;
	margin-top: -70px; body { background-image : url('imagenes/fondo.png');
	background-repeat: no-repeat;
}
}
</style>

</head>
<body>
	<jsp:include page="Menu/MenuPrincipal.jsp" />
	<main>

		<div class="album py-5 bg-light">
			<div class="container">
				<div id="iniciarSesion" align="center">
					<form class="row g-3" method="post"
						action="login/ValidarUsuario.jsp">
						<div class="col-auto">
							<label for="exampleInputPassword1" class="form-label">Usuario</label>
							<input type="text" name="usuario" class="form-control"
								placeholder="Ingrese su usuario">
						</div>

						<div class="col-auto">
							<label for="exampleInputPassword1" class="form-label">Contraseña</label>
							<input type="password" name="contrasenhia" class="form-control"
								id="exampleInputPassword1" placeholder="Ingrese su contraseña">
						</div>

						<div class="col-auto" style="margin-top: 50px">
							<button type="submit" class="btn btn-warning">Iniciar
								Sesión</button>
						</div>

						<div class="col-auto">
							<br> <a href="">Recuperar contraseña</a> <br> <a
								href="">Rol incorrecto</a>
						</div>
					</form>
				</div>
				<br>
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					<div class="col">
						<div class="card shadow-sm">
							<img src="imagenes/login_Permanencia.png">
							<div>
								<h3>Permanencia y Deserción</h3>
								<small class="text-muted">Característica</small>
							</div>
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting
									text below as a natural lead-in to additional content. This
									content is a little bit longer.</p>
								<button type="button" class="btn btn-secondary">Más
									información</button>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="imagenes/login_Calidad.png">
							<h3>Calidad de Estudiantes</h3>
							<small class="text-muted">Característica</small>
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting
									text below as a natural lead-in to additional content. This
									content is a little bit longer.</p>
								<button type="button" class="btn btn-secondary">Más
									información</button>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="imagenes/login_Reglamento.png">
							<h3>Reglamento Estudiantil</h3>
							<small class="text-muted">Característica</small>
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting
									text below as a natural lead-in to additional content. This
									content is a little bit longer.</p>
								<button type="button" class="btn btn-secondary">Más
									información</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>

<footer>
	<img src="imagenes/footer.png" width="100%">
</footer>
</html>
