<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SPRING MVC</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>        
        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdm.jsp" %>                          
                <div class="span9">
                    <div class="row">
                        <a class="btn btn-primary pull-right "
                           href="<%=contextPath%>/adm/persona/new">Nuevo</a>
                        <h1> Socio </h1>
                        <table class="table table-striped table-hover"> 
                            <thead>
                            <th> Nombre </th>
                            <th> Paterno </th>
                            <th> Materno </th>                            
                            <th> Sexo </th>  
                            <th> Nº Celular</th>
                            <th> Direccion</th>
                            <th> Email</th>
                            </thead>
                            <c:forEach var="serv" items="${persona}">
                                <tr>
                                    <td><c:out value="${serv.nombres}"/></td> 
                                    <td><c:out value="${serv.paterno}"/></td> 
                                    <td><c:out value="${serv.materno}"/></td>
                                    <td><c:out value="${serv.sexo}"/></td>
                                    <td><c:out value="${serv.celular}"/></td>
                                    <td><c:out value="${serv.direccion}"/></td>
                                    <td><c:out value="${serv.email}"/></td>
                                    <td> 
                                        <div class="btn-group">
                                            <a class="dropdown-toggle" data-toggle="dropdown" role="menu"  href="#">
                                                <i class="icon-cog"></i>
                                            </a>
                                            <ul class="dropdown-menu pull-right">
                                                <li>
                                                    <a href="<%=contextPath%>/adm/persona/update/${serv.id}">Editar<a>
                                                </li>
                                                <li>
                                                    <a href="<%=contextPath%>/adm/persona/delete/${serv.id}">Eliminar<a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>                
                              </tr> 
                            </c:forEach>                            
                        </table>                           
                                                                    </div> 
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    <%@include file="/public/footer.jsp" %>                                                
                                                                    </body>
                                                                    </html>
