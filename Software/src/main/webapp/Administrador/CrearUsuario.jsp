<!doctype html>
<html lang="en">
<%!String Usuario = "";
	String Nombres = "";
	String Rol = "";%>
<%
HttpSession SessionActiva = request.getSession();

if (SessionActiva.getAttribute("Usuario") == null) {
%>
<script type="text/javascript">
	alert("Por Favor Iniciar Sesión");
	location.href = "../index.jsp";
</script>

<%
} else {

Usuario = (String) SessionActiva.getAttribute("Usuario");
}
%>
<head>
<meta charset="utf-8">

<title>Crear Usuario</title>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../Estilos/estilos.css" rel="stylesheet">
<link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
</head>


<style>
body {
	background-color: #FFE700;
	background-image: url('../imagenes/fondo.png');
	background-repeat: no-repeat;
}
</style>
<body>

	<jsp:include page="../Menu/MenuAdministrador.jsp" />
	<div class="album py-lg-5 ">
		<div class="container">
			<div class="col-xl-12">
				<nav aria-label="breadcrumb" id="migadepan"
					style="-bs-breadcrumb-divider: '&gt;';">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="../Administrador/PaginaPrincipal.jsp">Inicio</a></li>
						<li class="breadcrumb-item active" aria-current="page">Crear
							Usuario</li>
					</ol>
				</nav>

				<header class="py-3 mb-4 border-bottom">
					<div class="container d-flex flex-wrap justify-items-center">
						<div class="col-12">

							<a><button type="button" class="btn btn-primary"
									disabled="disabled">
									<svg xmlns="http://www.w3.org/2000/svg" width="26" height="26"
										fill="currentColor" class="bi bi-person-plus-fill"
										viewBox="0 0 16 16">
  <path
											d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
  <path fill-rule="evenodd"
											d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z" />
</svg>
									Crear usuario
								</button></a> <a><button type="button" class="btn btn-danger">
									<svg xmlns="http://www.w3.org/2000/svg" width="26" height="26"
										fill="currentColor" class="bi bi-person-lines-fill"
										viewBox="0 0 16 16">
  <path
											d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z" />
</svg>
									Lista de personas
								</button></a>


						</div>

					</div>
				</header>

				<form class="needs-validation" novalidate>


					<div class="row g-4">
						<div class="col-sm-4">
							<label for="firstName" class="form-label">Nombre</label> <input
								type="text" class="form-control" id="firstName"
								placeholder="Nombres" value="" required>
							<div class="invalid-feedback">¡Debe escribir el nombre!</div>
						</div>

						<div class="col-sm-4">
							<label for="lastName" class="form-label">Apellido</label> <input
								type="text" class="form-control" id="lastName"
								placeholder="Apellidos" value="" required>
							<div class="invalid-feedback">¡Debe escribir el apellido!</div>
						</div>

						<div class="col-md-4">
							<label for="state" class="form-label">Rol</label> <select
								class="form-select" id="state" required>
								<option value="">Selecciona</option>
								<option>Administrador</option>
								<option>Profesor</option>
							</select>
							<div class="invalid-feedback">¡Debe seleccionar un rol!</div>
						</div>

						<div class="col-sm-4">
							<label for="username" class="form-label">Usuario</label>
							<div class="input-group has-validation">
								 <input type="text"
									class="form-control" id="username" placeholder="Usuario"
									required><span class="input-group-text">@uptc.edu.co</span>
								<div class="invalid-feedback">¡Debe asignar un usuario!</div>
							</div>
						</div>

						<div class="col-sm-4">
							<label for="username" class="form-label">Contraseña</label>
							<div class="input-group has-validation">
								<input type="password" class="form-control" id="username"
									placeholder="Contraseña" required>
								<div class="invalid-feedback">¡Debe escribir la
									contraseña!</div>
							</div>
						</div>

						<div class="col-8" id="botones">
							<button type="submit" class="btn btn-warning"
								style="color: #ffffff">Crear Usuario</button>
						</div>

						<div class="col-1" id="botones">
							<button type="button" class="btn btn-danger" id="botonCancelar">Cancelar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>




</body>

<footer id="footer">
	<img src="../imagenes/footer.png" width="100%">
</footer>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


</html>
