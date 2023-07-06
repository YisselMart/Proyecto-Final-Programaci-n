<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Registro en el Curso de Ciencias Naturales</title>
</head>
<body>
 <form>
  
  
  <h1>�Registro exitoso!</h1>
  <p>Los datos fueron insertados correctamente.</p>

  <a href="">Pagina de Inicio</a>
  </form>
   <%
   
   String nombreC = request.getParameter("nombreC");
   String cedulaC = request.getParameter("cedulaC");
   String fechainicioC = request.getParameter("fechainicioC");
    
   
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solociencia","root","");
        Statement dbstatement = dbconect.createStatement();
        String insertarsql = "INSERT INTO registrociencia (nombreC,cedulaC,fechainicioC) VALUES ('"+nombreC+"','"+cedulaC+"','"+fechainicioC+"')";
        dbstatement.executeUpdate(insertarsql);
        out.print("Registro realizado");
         %>
</body>
</html>
