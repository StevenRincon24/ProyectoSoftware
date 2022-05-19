

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
HttpSession SessionActiva= request.getSession();

SessionActiva.invalidate();
%>

<script type="text/javascript">
    alert("GRACIAS POR TU VISITA ");
    
  location.href="../index.jsp";
    
</script>