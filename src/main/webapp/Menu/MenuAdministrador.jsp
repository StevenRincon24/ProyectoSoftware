<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Daos.Daos_Usuario"%>
<%@page import="Clases.Usuario"%>
<!DOCTYPE html>
<html>

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

<title>Inicio</title>



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">

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

.nav-item{
	text-align: center;
}
</style>


<!-- Custom styles for this template -->
<link href="../carousel/carousel.rtl.css" rel="stylesheet">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand">Sistema de información para los
					registros calificados</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="تبديل التنقل">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="../Administrador/PaginaPrincipal.jsp">Inicio</a></li>
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="../Administrador/Caracteristicas.jsp">Caracteristica</a></li>
						<li class="nav-item"><a class="nav-link " href="../Administrador/Informes.jsp">Informe
								y estadísticas</a></li>

						<li class="nav-item"><a class="nav-link"
							href="../Administrador/CrearUsuario.jsp">Gestión usuario</a></li>

						<li class="nav-item dropdown">
							<%
							Daos_Usuario daosUsuario = new Daos_Usuario();
							Nombres = daosUsuario.nombre_Usuario(Usuario);
							%> <a class="nav-link dropdown-toggle" href="#" id="dropdown03"
							data-bs-toggle="dropdown" aria-expanded="false"><%=Nombres%></a>
							<ul class="dropdown-menu bg-dark" >

								<li class="nav-item"><a class="nav-link" href="#">Mi
										Perfil</a></li>
								<li class="nav-item"><a class="nav-link"
									href="../login/CerrarSession.jsp">Cerrar Sesión</a></li>

							</ul>
						</li>

					</ul>

				</div>
			</div>
		</nav>
	</header>
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
