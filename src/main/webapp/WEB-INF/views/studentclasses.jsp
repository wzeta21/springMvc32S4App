<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <html>

                <head>
                    <title>Student</title>
                </head>

                <body>
                    <div class="jumbotron">
                        <div class="container">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">${student}</h3>
                                </div>
                                <div class="panel-body">
                                    <ul class="list-group" id="myList">
                                        <c:forEach items="${listClasses}" var="cls">
                                            <li class="list-group-item">${cls.title}</li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>



                </body>

                </html>