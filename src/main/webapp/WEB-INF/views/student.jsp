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
                                    <h3 class="panel-title">OUR STUDENTS</h3>
                                </div>
                                <div class="panel-body">
                                    <c:url var="addAction" value="/student/add"></c:url>
                                    <h4>Add New Student</h4>
                                    <form:form class="form-inline" action="${addAction}" commandName="student">
                                        <c:if test="${!empty student.firstName}">
                                            <div class="form-group">
                                                <form:label path="studentId">
                                                    <spring:message text="ID" />
                                                </form:label>
                                                <form:input path="studentId" readonly="true" size="8" disabled="true" />
                                                <form:hidden path="studentId" />
                                            </div>
                                        </c:if>

                                        <div class="form-group">
                                            <form:label path="firstName">
                                                <spring:message text="First Name" />
                                            </form:label>
                                            <form:input path="firstName" type="text" class="form-control" id="firstName" placeholder="Student First Name" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="lastName">
                                                <spring:message text="Last Name" />
                                            </form:label>
                                            <form:input path="lastName" type="text" class="form-control" id="lastName" placeholder="Student Last Name" />
                                        </div>
                                        <c:if test="${!empty student.firstName}">
                                            <input class="btn btn-primary" type="submit" value="<spring:message text=" Edit Student "/>" />
                                        </c:if>
                                        <c:if test="${empty student.lastName}">
                                            <input class="btn btn-primary" type="submit" value="<spring:message text=" Add Student "/>" />
                                        </c:if>
                                    </form:form>
                                    <br>

                                    <!-- <h2>Filterable Students</h2> -->
                                    <p>Type something in the input field to search:</p>
                                    <input class="form-control" id="searchInput" type="text" placeholder="Search Student..">
                                    <br>
                                    <c:if test="${!empty listStudents}">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Student ID</th>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>*</th>
                                                </tr>
                                            </thead>
                                            <tbody id="studenTable">

                                                <c:forEach items="${listStudents}" var="student">
                                                    <tr>
                                                        <td>${student.studentId}</td>
                                                        <td>${student.firstName}</td>
                                                        <td>${student.lastName}</td>
                                                        <td>
                                                            <a class="btn btn-success btn-xs" href="<c:url value='/edit/${student.studentId}' />">
                                                                <span class="glyphicon glyphicon-pencil"></span>
                                                            </a>
                                                            <a class="btn btn-danger btn-xs" href="<c:url value='/remove/${student.studentId}' />">
                                                                <span class="glyphicon glyphicon-trash"></span>
                                                            </a>
                                                            <a class="btn btn-success btn-xs" href="<c:url value='/student/${student.studentId}/classes' />">
                                                                <span class="glyphicon glyphicon-list"></span> My Subjects
                                                            </a>
                                                        </td>

                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </c:if>
                                </div>
                            </div>

                        </div>
                    </div>

                    <script>
                        $(document).ready(function() {
                            $("#searchInput").on("keyup", function() {
                                var value = $(this).val().toLowerCase();
                                $("#studenTable tr").filter(function() {
                                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                                });
                            });
                        });
                    </script>

                </body>

                </html>