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
                        <h1> Nuevo Campo </h1>
                    </div>
                    
                    <form action="<%=contextPath%>/adm/local/save" method="post" class="form-horizontal">
                        
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
                            <label class="control-label">Costo Hora</label>
                            <div class="controls">
                                <input type="text" name="maps" value="${campo.costo_hora}">
                            </div>
                        </div>
                            
                        <div class="control-group">
                            <label class="control-label">Codigo</label>
                            <div class="controls">
                                <input type="text" name="telefono" value="${local.codigo}">
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
