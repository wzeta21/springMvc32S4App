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
                                    <h3 class="panel-title"><span class="badge">${student}</span> is enrolled in follow subjects</h3>

                                    <div class="dropdown">
                                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select a subject to add
                                            <span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <c:forEach items="${subjectsList}" var="subject">
                                                <li class="list-group-item">
                                                    <a href="<c:url value='/student/${student.studentId}/subject/${subject.code}/add' />">
                                                    ${subject.title}
                                                    </a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>

                                </div>
                                <div class="panel-body">
                                    <ul class="list-group" id="myList">
                                        <c:forEach items="${listClasses}" var="cls">
                                            <li class="list-group-item">
                                                ${cls.title}
                                                <a class="btn btn-danger btn-xs" href="<c:url value='/student/${student.studentId}/subject/${cls.code}/remove' />">
                                                    <span class="glyphicon glyphicon-trash"></span>
                                                </a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>



                </body>

                </html>