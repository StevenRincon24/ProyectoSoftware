<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<%
HttpSession SessionActiva = request.getSession();

SessionActiva.invalidate();
%>


<html>
<head>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<meta charset="ISO-8859-1">
<title>Cerrar sesion</title>
</head>
<body>
	<script type="text/javascript">
		Swal.fire({
			position : 'top-end',
			icon : 'success',
			title : 'Cerrando sesión',
			showConfirmButton : false,
			timer : 800,

		}).then(function() {
			location.href = "../index.jsp";
		});
	</script>

</body>
</html>