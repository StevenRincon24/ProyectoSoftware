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
		
		
		

</div>
		
		
				
		
		
		
		
</body>
<!--  
<footer>
        <img src="../imagenes/footer.png" width="100%">
</footer>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
-->
</html>