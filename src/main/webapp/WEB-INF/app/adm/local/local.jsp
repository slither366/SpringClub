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
                           href="<%=contextPath%>/adm/local/new">Nuevo</a>
                        <h1> Locales </h1>
                        <table class="table table-striped table-hover"> 
                            <thead>
                            <th> Descripción </th>
                            <th> Dirección </th>
                            <th> Teléfono </th>                            
                            <th> Estado </th>  
                            <th></th>
                            </thead>
                            <c:forEach var="serv" items="${locales}">
                                <tr>
                                    <td><c:out value="${serv.descripcion}"/></td> 
                                    <td><c:out value="${serv.direccion}"/></td>     
                                    <td><c:out value="${serv.telefono}"/></td>    
                                    <td><c:if test="${serv.estado!=1}">
                                            <span class="label label-success">Disponible</span>
                                        </c:if>
                                        <c:if test="${serv.estado==1}">
                                            <span class="label label-important">No Disponible</span>
                                        </c:if>                                            
                                   </td>
                                   
                                   
                                    <td> 
                                        <div class="btn-group">
                                            <a class="dropdown-toggle" data-toggle="dropdown" role="menu"  href="#">
                                                <i class="icon-cog"></i>
                                            </a>
                                        <ul class="dropdown-menu pull-right">
                                                <li>
                                                    <a href="<%=contextPath%>/adm/local/update/${serv.id}">Editar<a>
                                                </li>
                                                <li>
                                                    <a href="<%=contextPath%>/adm/local/delete/${serv.id}">Eliminar<a>
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
