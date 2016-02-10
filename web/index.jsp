<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 10/02/2016, 10:41:44 AM
    Author     : Jorge Flores
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="profesor" dataSource="jdbc/jorgeflores">
    SELECT NumNomina,NombreProfesor  FROM profesor;
</sql:query>
    
<table border="1">
    <!-- column headers -->
    <tr>
    <c:forEach var="columnName" items="${profesor.columnNames}">
        <th><c:out value="${columnName}"/></th>
    </c:forEach>
</tr>
<!-- column data -->
<c:forEach var="row" items="${profesor.rowsByIndex}">
    <tr>
    <c:forEach var="column" items="${row}">
        <td><c:out value="${column}"/></td>
    </c:forEach>
    </tr>
</c:forEach>
</table>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title> Examen Laboratorio Aplicaciones web </title>
    </head>
    <body>
        <h1>Bienvenido al sitio A01232762 - Jorge Luis Flores Garcia</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>Materias</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Abajo puede seleccionar la materia para buscar al profesor:</td>
                </tr>
                <tr>
                    <td>
                        <form action="response.jsp">
                            <strong>Seleccione un profesor</strong>
                            
                            <select name="NumNomina">
                                <c:forEach var="row" items="${profesor.rows}">
                                    <option value="${row.NumNomina}">${row.NombreProfesor}</option>
                                </c:forEach>
                            </select>
                            
                            <input type="submit" value="submit" name="submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>



    </body>
</html>
