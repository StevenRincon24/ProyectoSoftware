<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	alert("Por Favor Iniciar Sesi�n");
	location.href = "../index.jsp";
</script>

<%
} else {

Usuario = (String) SessionActiva.getAttribute("Usuario");
}
%>
<head>
<meta charset="ISO-8859-1">
<title>Caracter�stica</title>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
	<div class="album py-lg-5 " >
		<div class="container">
			<div class="col-xl-12">
				<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
					<ol class="breadcrumb" style="margin-top: 50px">
						<li class="breadcrumb-item"><a
							href="../Administrador/PaginaPrincipal.jsp">Inicio</a></li>
						<li class="breadcrumb-item active" aria-current="page">Caracter�stica</li>
					</ol>
				</nav>

				<form class="needs-validation" novalidate>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-4">
								<label for="inputCaracteristica" class="col-form-label">Caracter�stica</label>
							</div>
							<div class="col-4">
								<select class="form-select" aria-label="Seleccione"
									required="required">
									<option selected value="">Seleccione</option>
									<option value="PermanenciaDesercion">Permanencia y
										deserci�n</option>
									<option value="NCalidadEstudiantes">N. Y Calidad de
										los Estudiantes Admitidos</option>
									<option value="FormacionIntegral">P. Actividades de
										Formaci�n Integral</option>
									<option value="ReglamentoEstudiantil">Reglamento
										Estudiantil</option>
								</select>
								<div class="invalid-feedback">�Debe seleccionar una de las
									opciones!</div>
							</div>

							<div class="row justify-content-center" style="margin-top: 30px">
								<div class="col-4">
									<label for="inputTipo" class="form-label">Tipo</label>
									<div class="input-group mb-3">
										<select class="form-select" aria-label="Seleccione" required>
											<option selected value="">Seleccione</option>
											<option value="1">Acad�mica</option>
											<option value="2">No acad�mica</option>
										</select>
										<div class="invalid-feedback">�Debe seleccionar una de
											las opciones!</div>
									</div>
								</div>
								<div class="col-4">
									<label for="inputPeriodo" class="form-label">Periodo</label>
									<div class="input-group mb-3">
										<select class="form-select" aria-label="Seleccione" required>
											<option selected value="">Seleccione</option>
											<option value="Periodo1">I Periodo</option>
											<option value="Periodo2">II Periodo</option>
										</select>
										<div class="invalid-feedback">�Debe seleccionar un
											periodo!</div>
									</div>
								</div>
								<div class="col-4">
									<label for="inputPeriodo" class="form-label">Cantidad
										de estudiantes</label>
									<div class="input-group mb-3">
										<input type="number" class="form-control" type="number"
											placeholder="N�mero" aria-label="Numero"
											aria-describedby="basic-addon1" value="" required>
										<div class="invalid-feedback">�Debe escribir la cantidad
											de estudiantes!</div>
									</div>

								</div>
							</div>
							<div class="row justify-content-center" style="margin-top: 30px">
								<div class="col-4">
									<label for="inputSexo" class="form-label">Sexo</label>


									<div class="form-check">
										<input class="form-check-input" type="radio" value="Masculino"
											id="flexCheckDefault" name="inlineRadioOptions"
											checked="checked"> <label class="form-check-label"
											for="inlineRadio1"> Masculino </label>
									</div>
									<div class="form-check ">
										<input class="form-check-input" type="radio" value="Masculino"
											id="flexCheckDefault" name="inlineRadioOptions"> <label
											class="form-check-label" for="inlineRadio1"> Femenino
										</label>
									</div>
								</div>
								<div class="col-4">
									<label for="inputPeriodo" class="form-label">N�mero de
										matriculados</label>
									<div class="input-group mb-3">
										<input type="number" class="form-control" type="number"
											placeholder="N�mero" aria-label="Numero"
											aria-describedby="basic-addon1" value="" required="required">
										<div class="invalid-feedback">�Debe escribir la cantidad
											de estudiantes matriculados!</div>
									</div>
								</div>
								<div class="col-4">
									<label for="inputAnio" class="form-label">A�o</label>
									<div class="input-group mb-3">
										<select class="form-select" aria-label="Seleccione"
											required="required">
											<option selected value="">Seleccione</option>
											<option value="Anio2022">2022</option>
											<option value="Anio2021">2021</option>
											<option value="Anio2020">2020</option>
											<option value="Anio2019">2019</option>
											<option value="Anio2018">2018</option>
											<option value="Anio2017">2017</option>
										</select>
										<div class="invalid-feedback">�Debe escribir una de las
											opciones!</div>
									</div>

								</div>

							</div>
							<div class="row justify-content-center" style="margin-top: 30px">
								<div class="col-2">
									<nav aria-label="Page navigation">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
											</a></li>
											<li class="page-item active"><a class="page-link"
												onselect="">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true">&raquo;</span>
											</a></li>
										</ul>
									</nav>
								</div>
							</div>

							<div class="col-2">
								<button type="submit" class="btn btn-warning"
									style="color: #ffffff">Guardar</button>
							</div>

							<div class="col-1">

								<button type="button" class="btn btn-danger" id="botonCancelar">Cancelar</button>
							</div>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
<footer>
	<img src="../imagenes/footer.png" width="100%">
</footer>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="../js/form-validation.js"></script>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Característica</title>
       <!-- Bootstrap core CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="../Estilos/estilos.css" rel="stylesheet">
        <link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
</head>

    <style>
        body{
            background-color: #FFE700;
            background-image: url('../imagenes/fondo.png');
            background-repeat: no-repeat;
        }

    </style>

<body>
	<jsp:include page="../Menu/MenuAdministrador.jsp"/>
		
		<div class="container" style="margin-top: 80px">
		<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
			<ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="../Administrador/PaginaPrincipal.jsp">Inicio</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Característica</li>
			</ol>
		</nav>
		</div>
		
		<div class="container">
 		<div class="row justify-content-center">
 		
		  <div class="col-4">
		    <label for="inputCaracteristica" class="col-form-label">Característica</label>
		  </div>
		  <div class="col-4">
			<select class="form-select" aria-label="Seleccione">
			  <option selected>Seleccione</option>
			  <option value="PermanenciaDesercion">Permanencia y deserción</option>
			  <option value="NCalidadEstudiantes">N. Y Calidad de los Estudiantes Admitidos</option>
			  <option value="FormacionIntegral">P. Actividades de Formación Integral</option>
			  <option value="ReglamentoEstudiantil">Reglamento Estudiantil</option>
			</select>
		  </div>
		  <!-- 
		  <div class="containerCaracterPage1">
		  <div class="row justify-content-center" style="margin-top: 30px">
			  <div class="col-4">
			  <label for="inputTipo" class="form-label">Tipo</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="1">Permanencia y deserción</option>
					  <option value="2">N. Y Calidad de los Estudiantes Admitidos</option>
					  <option value="3">P. Actividades de Formación Integral</option>
					  <option value="4">Reglamento Estudiantil</option>
					</select>
				</div>
		  	</div>
		   <div class="col-4">
			  <label for="inputPeriodo" class="form-label">Periodo</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="Periodo1">I Periodo</option>
					  <option value="Periodo2">II Periodo</option>
					</select>
				</div>
		  	</div>
		  	 <div class="col-4">
			  <label for="inputPeriodo" class="form-label">Cantidad de Estudiantes</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
				<label for="inputSexo" class="form-label">Sexo</label>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Masculino" id="flexCheckDefault">
						  <label class="form-check-label" for="flexCheckDefault">
						   Masculino
						  </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Femenino" id="flexCheckDefault">
						 <label class="form-check-label" for="flexCheckDefault">
						   Femenino
						 </label> 
					</div>
			</div>
			<div class="col-4">
			  <label for="inputPeriodo" class="form-label">Número de matriculados</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
			<div class="col-4">
			  <label for="inputAnio" class="form-label">Año</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="Anio2022">2022</option>
					  <option value="Anio2021">2021</option>
					  <option value="Anio2020">2020</option>
					  <option value="Anio2019">2019</option>
					  <option value="Anio2018">2018</option>
					  <option value="Anio2017">2017</option>
					</select>
				</div>
		  	</div>
		
		</div>
		</div>
		 
		 
		<div class="containerCaracterPage2">
			<div class="row justify-content-center" style="margin-top: 30px">
			 	<div class="col-6">
			  		<label for="inputTipo" class="form-label">Concepto</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con el concepto" id="TextareaConcepto" style="height: 200px"></textarea>
		  		</div>
		   		<div class="col-6">
			  		<label for="inputTipo" class="form-label">Evidencia</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con la evidencia" id="TextareaEvidencia" style="height: 200px"></textarea>
		  		</div>
			</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
			  <label for="inputCalificacion" class="form-label">Calificación</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		
		</div>
		</div>
		 
		 
		 SEGUNDA CARACTERISTICA
		 
		 <div class="containerCaracterCalidadPage1">
		  <div class="row justify-content-center" style="margin-top: 30px">
			  <div class="col-4">
			  <label for="inputAnioCalidad" class="form-label">Año</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="Anio2022">2022</option>
					  <option value="Anio2021">2021</option>
					  <option value="Anio2020">2020</option>
					  <option value="Anio2019">2019</option>
					  <option value="Anio2018">2018</option>
					  <option value="Anio2017">2017</option>
					</select>
				</div>
		  	</div>
		   <div class="col-4">
			  <label for="inputPeriodoCalidad" class="form-label">Periodo</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="Periodo1">I Periodo</option>
					  <option value="Periodo2">II Periodo</option>
					</select>
				</div>
		  	</div>
		  	 <div class="col-4">
			  <label for="inputInscritosCalidad" class="form-label">Inscritos</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
				<label for="inputAdmitidosCalidad" class="form-label">Admitidos</label>
					<div class="input-group mb-3">
						<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
					</div>
			</div>
			<div class="col-4">
			  <label for="inputMatriculadosCalidad" class="form-label">Matriculados</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		</div>
		</div>
		 
		 
		 <div class="containerCalidadPage2">
			<div class="row justify-content-center" style="margin-top: 30px">
			 	<div class="col-6">
			  		<label for="inputTipo" class="form-label">Concepto</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con el concepto" id="TextareaConceptoCalidad" style="height: 200px"></textarea>
		  		</div>
		   		<div class="col-6">
			  		<label for="inputTipo" class="form-label">Evidencia</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con la evidencia" id="TextareaEvidenciaCalidad" style="height: 200px"></textarea>
		  		</div>
			</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
			  <label for="inputCalificacion" class="form-label">Calificación</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		
		</div>
		</div>
		
		 TERCERA CARACTERISTICA
		 
		 <div class="containerCaracterActividadesPage1">
		  <div class="row justify-content-center" style="margin-top: 30px">
			  <div class="col-4">
			  <label for="inputAccionActividad" class="form-label">Linea de Acción</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="Cultura">Cultura</option>
					  <option value="ActividadFisica">Actividad Física</option>
					  <option value="Deporte">Deporte</option>
					  <option value="ApoyoSocio">Apoyo Socioeconómico</option>
					  <option value="Salud">Salud</option>
					</select>
				</div>
		  	</div>
		   <div class="col-4">
			  <label for="inputLineaActividad" class="form-label">Motivo línea de acción</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="ACArtes">Actividad Cultural - Artes Plasticas Y Escenicas</option>
					  <option value="ACDanza">Actividad Cultural - Danza</option>
					  <option value="ACMusica">Actividad Cultural - Música</option>
					  <option value="ADFisica">Actividad Deportiva - Actividad Física</option>
					  <option value="ADDeportes">Actividad Deportiva - Deportes</option>
					  <option value="BGobernacion">Beca Gobernacion De Boyaca</option>
					  <option value="BHijoEmpleado">Beca Hijo Emp. Publico UPTC</option>
					  <option value="BHijoTrabajador">Beca Hijo Trab. Publico UPTC</option>
					  <option value="BHijoFuncionario">Beca Hijos Func UPTC</option>
					  <option value="BInvestigacion">Beca Investigacion</option>
					  <option value="BTrabajo">Beca Trabajo</option>
					  <option value="BCultura">Buen Desempeño Cultural</option>
					  <option value="BDeporte">Buen Desempeño Deportivo</option>
					  <option value="SubsidioRestaurante">Subsisio Restaurante Estudiantil</option>
					  <option value="FuncionarioUPTC">Funcionario UPTC</option>
					  <option value="HijoDocente">Hijo Docente UPTC</option>
					  <option value="IncapacidadEconomica">Incapacidad Economica</option>
					  <option value="MatriculaHonor">Matricula De Honor</option>
					  <option value="RepresentanteEstudiantil">Representante Estudiantil</option>
					  <option value="Laboratorio">Laboratorio Clinico</option>
					  <option value="Medicina">Medicina General</option>
					  <option value="Odontologia">Odontologia</option>
					  <option value="ProcedimientosMinimos">Procedimientos Minimos</option>
					  <option value="Promocion">Promocion Y Prevencion</option>
					  <option value="Psicologia">Psicologia</option>					  
					</select>
				</div>
		  	</div>
		  	 <div class="col-4">
			  <label for="inputAnioActividad" class="form-label">Año</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="Anio2022">2022</option>
					  <option value="Anio2021">2021</option>
					  <option value="Anio2020">2020</option>
					  <option value="Anio2019">2019</option>
					  <option value="Anio2018">2018</option>
					  <option value="Anio2017">2017</option>
					</select>
				</div>
		  	</div>
		</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
				<label for="inputUsuariosActividad" class="form-label">Usuarios</label>
					<div class="input-group mb-3">
						<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
					</div>
			</div>
			<div class="col-4">
			  <label for="inputServiciosActividad" class="form-label">Servicios</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		</div>
		</div>
		
		
		<div class="containerActividadPage2">
			<div class="row justify-content-center" style="margin-top: 30px">
			 	<div class="col-6">
			  		<label for="inputTipo" class="form-label">Concepto</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con el concepto" id="TextareaConceptoCalidad" style="height: 200px"></textarea>
		  		</div>
		   		<div class="col-6">
			  		<label for="inputTipo" class="form-label">Evidencia</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con la evidencia" id="TextareaEvidenciaCalidad" style="height: 200px"></textarea>
		  		</div>
			</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
			  <label for="inputCalificacion" class="form-label">Calificación</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		
		</div>
		</div>
		
		
	
		
		<div class="containerReglamentoPage1">
		  <div class="row justify-content-center" style="margin-top: 30px">
			  <div class="col-4">
			  <label for="inputAnioReglamento" class="form-label">Año</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="Anio2022">2022</option>
					  <option value="Anio2021">2021</option>
					  <option value="Anio2020">2020</option>
					  <option value="Anio2019">2019</option>
					  <option value="Anio2018">2018</option>
					  <option value="Anio2017">2017</option>
					</select>
				</div>
		  	</div>
		   <div class="col-4">
			  <label for="inputPeriodoReglamento" class="form-label">Periodo</label>
				<div class="input-group mb-3">
					<select class="form-select" aria-label="Seleccione">
					  <option selected>Seleccione</option>
					  <option value="Periodo1">I Periodo</option>
					  <option value="Periodo2">II Periodo</option>
					</select>
				</div>
		  	</div>
		  	 <div class="col-4">
			  <label for="inputReintegrosReglamento" class="form-label">Cantidad de reintegros</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
				<label for="inputEgresadosReglamento" class="form-label">Cantidad de egresados</label>
					<div class="input-group mb-3">
						<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
					</div>
			</div>
		</div>
		</div>
		
		<div class="containerReglamentoPage2">
			<div class="row justify-content-center" style="margin-top: 30px">
			 	<div class="col-6">
			  		<label for="inputTipo" class="form-label">Concepto</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con el concepto" id="TextareaConceptoCalidad" style="height: 200px"></textarea>
		  		</div>
		   		<div class="col-6">
			  		<label for="inputTipo" class="form-label">Evidencia</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con la evidencia" id="TextareaEvidenciaCalidad" style="height: 200px"></textarea>
		  		</div>
			</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
			  <label for="inputCalificacion" class="form-label">Calificación</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="Número" aria-label="Numero" aria-describedby="basic-addon1">
				</div>
		  	</div>
		
		</div>
		</div>
			 -->
		 
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-2">
					<nav aria-label="Page navigation">
					  <ul class="pagination">
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li class="page-item active"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
			</div>
		</div>
		
		<div class="row justify-content-center" style="margin-top: 10px">
			<div class="col-0">
				<div class="d-grid gap-2 d-md-flex justify-content-md-center">
  					<button class="btn btn-warning" type="button">Enviar</button>
  					<button class="btn btn-warning" type="button">Cancelar</button>
				</div>
			</div>
		
		</div>
		
		

	</div>
</div>
		
		
				
		
		
		
		
</body>
  
<footer>
        <img src="../imagenes/footer.png" width="100%">
</footer>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

>>>>>>> refs/remotes/origin/master
</html>