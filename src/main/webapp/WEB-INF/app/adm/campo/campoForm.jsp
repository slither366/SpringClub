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
                        <h1> Nuevo Campo </h1>
                    </div>
                    
                    <form action="<%=contextPath%>/adm/campo/save" method="post" class="form-horizontal">
                        
                        <input type="hidden" name="id" value="${campo.id}" name="id">
                        
                        <div class="control-group">
                            <label class="control-label">Descripción</label>
                            <div class="controls">
                                <input type="text" name="descripcion" value="${campo.descripcion}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Tipo</label>
                            <div class="controls">
                                <input type="text" name="direccion" value="${campo.tipo}">
                            </div>
                        </div>
                            
                        <div class="control-group">
                            <label class="control-label">CostoHora</label>
                            <div class="controls">
                                <input type="text" name="maps" value="${campo.costoHora}">
                            </div>
                        </div>

                            
                       <div class="control-group">
                            <label class="control-label">Local</label>
                            <div class="controls">
                                <select type="text" name="local">
                                    <c:forEach var="serv" items="${locales}"><%--ESTO SE IMPLEMENTA EN CAMPOCONTROLLER --%>
                                        <option value="${serv.id}"><c:out value="${serv.descripcion}"/></option>
                                    </c:forEach> 
                                </select>
                            </div>
                        </div>
                            
                        <div class="control-group">
                            <div class="controls">
                                <a class="btn" href="<%=contextPath%>/adm/local">Cancelar</a>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>
                    </form>                    

                </div>
            </div>
        </div>
    </body>
</html>
