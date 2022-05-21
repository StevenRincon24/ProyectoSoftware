<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Informes y Estadisticas</title>
		<!-- Bootstrap core CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="../Estilos/estilos.css" rel="stylesheet">
        <link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
</head>

	<link rel="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" type="text/css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>	  
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.2.2/Chart.min.js"></script>
	
	

	<style>
        body{
            background-color: #FFE700;
            background-image: url('../imagenes/fondo.png');
            background-repeat: no-repeat;
        }
        
        .container {
      	width: 70%;
      	margin: 15px auto;
    	}
    	
    	h2 {
      	text-align: center;
      	font-family: "Verdana", sans-serif;
      	font-size: 30px;
    	}

    </style>
<body>

	<jsp:include page="../Menu/MenuAdministrador.jsp"/>
		
		<div class="container" style="margin-top: 80px">
		<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
			<ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="../Administrador/PaginaPrincipal.jsp">Inicio</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Informes y Estadisticas</li>
			</ol>
		</nav>
		</div>
		
		
		<div class="container">
 		<div class="row justify-content-center">
		  <div class="col-4">
		    <label for="inputCaracteristica" class="col-form-label">Característica</label>  
		  <div class="input-group mb-3">
			<select class="form-select" aria-label="Seleccione">
			  <option selected>Seleccione</option>
			  <option value="PermanenciaDesercion">Permanencia y deserción</option>
			  <option value="NCalidadEstudiantes">N. Y Calidad de los Estudiantes Admitidos</option>
			  <option value="FormacionIntegral">P. Actividades de Formación Integral</option>
			  <option value="ReglamentoEstudiantil">Reglamento Estudiantil</option>
			</select>
			</div>
		  </div>
		  <div class="col-4">
		    <label for="inputReporte" class="col-form-label">Reporte</label>
		  <div class="input-group mb-3">
			<select class="form-select" aria-label="Seleccione">
			  <option selected>Seleccione</option>
			  <option value="Informes">Informes</option>
			  <option value="Estadisticas">Estadísticas</option>
			</select>
			</div>
		  </div>
		  
		<!-- 
		 
		<div class="containerEstadistica">
		<div class="container">
			<h2>Deserciones</h2>
			<div>
        		<canvas id="myChart"></canvas>
      		</div>
    	</div>
    	</div>
    	-->
    	
    	<div class="containerInforme">
			<div class="row justify-content-center" style="margin-top: 30px">
			 	<div class="col-6">
			  		<label for="inputTipo" class="form-label">Concepto</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con el concepto" id="TextareaLecturaConcepto" style="height: 200px" readonly>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</textarea>
		  		</div>
		   		<div class="col-6">
			  		<label for="inputTipo" class="form-label">Evidencia</label>
					<textarea class="form-control" placeholder="Escriba lo relacionado con la evidencia" id="TextareaLecturaEvidencia" style="height: 200px" readonly>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</textarea>
		  		</div>
			</div>
		<div class="row justify-content-center" style="margin-top: 30px">
			<div class="col-4">
			  <label for="inputCalificacion" class="form-label">Calificación</label>
				<div class="input-group mb-3">
					<input type="number" class="form-control" type="number" placeholder="4.1" aria-label="Numero" aria-describedby="basic-addon1" readonly>
				</div>
		  	</div>
		
		</div>
		</div>
    	
    
 
		  
		  
		  
		 <div class="row justify-content-center" style="margin-top: 10px">
			<div class="col-0">
				<div class="d-grid gap-2 d-md-flex justify-content-md-center">
  					<button class="btn btn-warning" type="button">Exportar</button>
				</div>
			</div>
		
		</div>
		
		

	</div>
</div>



</body>

 <script>
    var ctx = document.getElementById("myChart").getContext("2d");
    var myChart = new Chart(ctx, {
      type: "line",
      data: {
        labels: [
          "I-2016",
          "II-2016",
          "I-2017",
          "II-2017",
          "I-2018",
          "II-2018",
        ],
        datasets: [
          {
            label: "Hombres",
            data: [5, 1, 15, 5, 6, 4],
            backgroundColor: "rgba(155,153,1,0.6)",
          },
          {
            label: "Mujeres",
            data: [1, 2, 1, 2, 1, 1],
            backgroundColor: "rgba(153,205,1,0.6)",
          },
          {
              label: "Total",
              data: [6, 3, 16, 7, 7, 5],
              backgroundColor: "rgba(93,91,6,0.6)",
            },
        ],
      },
    });
  </script>
  
  

<footer>
        <img src="../imagenes/footer.png" width="100%">
</footer>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</html>