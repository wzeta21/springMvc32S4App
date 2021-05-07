<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <html>

                <head>
                    <title>Subject</title>
                </head>

                <body>
                    <div class="jumbotron">
                        <div class="container">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"> The <span class="badge">${subject}</span> subject has follow students</h3>
                                </div>
                                <div class="panel-body">
                                    <ul class="list-group" id="myList">
                                        <c:forEach items="${listStudents}" var="student">
                                            <li class="list-group-item">
                                                <div class="row row-inline">
                                                    <div class="col-sm">
                                                        ${student}
                                                    </div>
                                                    <div class="col-sm">
                                                        <a class="btn btn-danger btn-xs" href="<c:url value='/subject/${subject.code}/student/${student.studentId}/remove' />">
                                                            <span class="glyphicon glyphicon-trash"></span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>



                </body>

                </html>