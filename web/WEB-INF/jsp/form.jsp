<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h1>Ingrese sus datos</h1>

                    <form:form method="post" commandName="persona">
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>

                        <div class="form-group">
                            <form:label path="nombre">Nombre</form:label>
                            <form:input path="nombre" cssClass="form-control"/>
                            <form:errors path="nombre"/>
                        </div>

                        <div class="form-group">
                            <form:label path="correo">Correo</form:label>
                            <form:input path="correo" cssClass="form-control"/>
                        </div>

                        <div class="form-group">
                            <form:label path="pais">País</form:label>
                            <form:select path="pais" cssClass="form-control">
                                <form:option value="0">Seleccione</form:option>
                                <form:options items="${paisLista}"/>
                            </form:select>
                        </div>
                        <hr>

                        <input type="submit" value="Enviar" class="btn btn-success btn-block"/>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
