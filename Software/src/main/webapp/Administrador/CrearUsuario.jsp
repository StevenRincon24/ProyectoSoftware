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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 	crossorigin="anonymous">
<link href="../Estilos/estilos.css" rel="stylesheet">
<link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
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


				<form class="needs-validation" novalidate>
					<h4 class="mb-3" id="tituloCrear">Crear Usuario</h4>
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
								<span class="input-group-text">@</span> <input type="text"
									class="form-control" id="username" placeholder="Usuario"
									required>
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
