<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                        <h1> Nuevo Socio </h1>
                    </div>
                    
                    <form action="<%=contextPath%>/adm/persona/save" method="post" class="form-horizontal">
                        
                        <input type="hidden" name="id" value="${persona.id}" name="id">
                        
                        <div class="control-group">
                            <label class="control-label">Nombre</label>
                            <div class="controls">
                                <input type="text" name="nombres" value="${persona.nombres}">
                            </div>
                        </div>

                            
                        <div class="control-group">
                            <label class="control-label">Paterno</label>
                            <div class="controls">
                                <input type="text" name="paterno" value="${persona.paterno}">
                            </div>
                        </div>
                      
                        <div class="control-group">
                            <label class="control-label">Materno</label>
                            <div class="controls">
                                <input type="text" name="materno" value="${persona.materno}">
                            </div>
                        </div>                            

                        <div class="control-group">
                            <label class="control-label">Celular</label>
                            <div class="controls">
                                <input type="text" name="celular" value="${persona.celular}">
                            </div>
                        </div>
                            
                        <div class="control-group">
                            <label class="control-label">Sexo</label>
                            <div class="controls">
                                <input type="text" name="sexo" value="${persona.sexo}">
                            </div>
                        </div>
                            
                        <div class="control-group">
                            <label class="control-label">Direccion</label>
                            <div class="controls">
                                <input type="text" name="direccion" value="${persona.direccion}">
                            </div>
                        </div>
                            
                        <div class="control-group">
                            <label class="control-label">Email</label>
                            <div class="controls">
                                <input type="text" name="email" value="${persona.email}">
                            </div>
                        </div>                            
                            
                        <div class="control-group">
                            <div class="controls">
                                <a class="btn" href="<%=contextPath%>/adm/persona">Cancelar</a>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>
                    </form>                    

                </div>
            </div>
        </div>
    </body>
</html>
