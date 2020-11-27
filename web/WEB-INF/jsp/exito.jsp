<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    <div class="card">
                        <div class="card-header">
                            Resultados del formulario
                        </div>
                        <div class="card-body">
                            <ul>
                                <li>Nombre: <c:out value="${nombre}"/> </li>
                                <li>Correo: <c:out value="${correo}"/> </li>
                                <li>País 
                                    <c:if test="${pais == 1}">
                                        Perú
                                    </c:if>
                                    <c:if test="${pais == 2}">
                                        Chile
                                    </c:if>
                                    <c:if test="${pais == 3}">
                                        Colombia
                                    </c:if>
                                    <c:if test="${pais == 4}">
                                        Bolivia
                                    </c:if>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
