<%-- 
    Document   : ValidarUsuario
    Created on : 21/04/2022, 05:59:46 PM
    Author     : Steven Rincón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.Usuario" %>
<%@page import="Daos.Daos_Usuario" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../media/js/alertify.min.js"></script>
        <script src="../media/js/alertify.js"></script>
        <link rel="stylesheet" href="../media/css/alertify.core.css">
        <link rel="stylesheet" href="../media/css/alertify.default.css">

    </head>
    <body>
        

        <%
            Usuario usuario = new Usuario();
            Daos_Usuario daosUsuario = new Daos_Usuario();
            String usuarioFormulario = request.getParameter("usuario");
            String contrasenhia =  request.getParameter("contrasenhia");
            
            int RolUsuario = daosUsuario.rolUsuario(usuarioFormulario, contrasenhia);
            String Nombres = daosUsuario.nombre_Usuario(usuarioFormulario);
            
            if (RolUsuario == -1){
            
        %>
        <script languaje="javascript">
            alertify
                    .alert("Usuario incorrecto", function () {
                        location.href = "../index.jsp";
                    });
        </script> 

        <%
            } if (RolUsuario == 1){
                HttpSession SesionActiva = request.getSession();
                SesionActiva.setAttribute("Usuario", usuarioFormulario);
        %>
        
        <script languaje="javascript">
            alertify
                    .alert("Bienvenido Administrador <%=Nombres%>", function () {
                        location.href = "../Administrador/PaginaPrincipal.jsp";
                    });
        </script>   
        
        <%
            } else if(RolUsuario == 2){
                HttpSession SesionActiva = request.getSession();
                SesionActiva.setAttribute("Usuario", usuarioFormulario);
        %>
        
        <script languaje="javascript">
            alertify
                    .alert("Bienvenido(a) Docente <%=Nombres%>", function () {
                        location.href = "../Profesor/PaginaPrincipal.jsp";
                    });
        </script>  
        
        <%
            } else {
        %>
        
        <script languaje="javascript">
            alertify
                    .alert("Usuario invalido", function () {
                        location.href = "../index.jsp";
                    });
        </script>  
        
        <%
            }
        %>
    </body>
</html>
