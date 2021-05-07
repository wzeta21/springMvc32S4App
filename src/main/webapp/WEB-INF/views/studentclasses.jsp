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
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <h3 class="panel-title"><span class="badge">${student}</span> is enrolled in follow subjects</h3>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="dropdown pull-right">
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
                                    </div>


                                </div>
                                <div class="panel-body">
                                    <ul class="list-group" id="myList">
                                        <c:forEach items="${listClasses}" var="cls">
                                            <li class="list-group-item">
                                                <div class="row">
                                                    <div class="col-sm-10">
                                                        ${cls.title}
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <a class="btn btn-danger btn-xs pull-right" href="<c:url value='/student/${student.studentId}/subject/${cls.code}/remove' />">
                                                            <span class="glyphicon glyphicon-trash"></span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>



                </body>

                </html>