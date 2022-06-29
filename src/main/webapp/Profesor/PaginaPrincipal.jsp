<!doctype html>
<html lang="en">
     <%!
       String Usuario = "";
       String Nombres = "";
       String Rol = "";
    %>
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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.88.1">
        <title>Inicio</title>
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

        <main>

            <div class="album py-5 ">
                <div class="container">


                    <br>
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                        <div class="col">
                            <div class="card shadow-sm">
                                <img src="../imagenes/login_Permanencia.png">
                                <div>
                                    <h3>Caracter�sticas</h3>
                                    <small class="text-muted">Formularios</small>
                                </div>
                                <div class="card-body">
                                    <p class="card-text">Diligenciar los respectivos formularios por estad�sticas.</p>
                                    <button type="button" class="btn btn-secondary">Ingresar</button>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card shadow-sm">
                                <img src="../imagenes/login_Calidad.png">
                                <h3>Informes y Estad�sticas</h3>
                                <small class="text-muted">Reportes</small>
                                <div class="card-body">
                                    <p class="card-text">Generar informes o estad�sticas en base a la caracter�stica.</p>          
                                    <button type="button" class="btn btn-secondary">Ingresar</button>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card shadow-sm">
                                <img src="../imagenes/login_Reglamento.png">
                                <h3>Gesti�n Usuarios</h3>
                                <small class="text-muted">Administrar usuarios</small>
                                <div class="card-body">
                                    <p class="card-text">Crear, visualizar, editar y/o eliminar usuarios del sistema</p>
                                    <button type="button" class="btn btn-secondary">Ingresar</button>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </main>


        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
           <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> 
    </body>
    <footer>
        <img src="../imagenes/footer.png" width="100%">
    </footer>

</html>
