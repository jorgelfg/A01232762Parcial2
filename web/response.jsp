<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : response
    Created on : 14/01/2016, 10:51:58 AM
    Author     : Jorge Flores
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="materia" dataSource="jdbc/jorgeflores">
    SELECT * FROM materia, profesor WHERE Profesor.NumNomina = materia.claveMateria AND Materia.ClaveMateria = ? <sql:param value="${param.NumNomina}"/>
</sql:query>
    

    <c:set var="profesorDetails" value="${materia.rows[0]}"/>
    

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Materia</title>
    </head>
      <body>
        <table>
            <tr>
                <th colspan="2">${profesorDetails.NombreMateria}</th>
            </tr>
        </table>
    </body>
</html>