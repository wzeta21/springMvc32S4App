<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <html>

                <head>
                    <title>Class</title>
                </head>

                <body>
                    <div class="jumbotron">
                        <div class="container">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">OUR CLASSES</h3>
                                </div>
                                <div class="panel-body">
                                    <c:url var="addAction" value="/class/add"></c:url>

                                    <h4>Add New Class</h4>
                                    <form:form class="form-inline" action="${addAction}" commandName="class">
                                        <c:if test="${!empty class.title}">
                                            <div class="form-group">
                                                <form:label path="code">
                                                    <spring:message text="ID" />
                                                </form:label>
                                                <form:input path="code" readonly="true" size="8" disabled="true" />
                                                <form:hidden path="code" />
                                            </div>
                                        </c:if>

                                        <div class="form-group">
                                            <form:label path="title">
                                                <spring:message text="Title" />
                                            </form:label>
                                            <form:input path="title" type="text" class="form-control" id="title" placeholder="Class Title" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="description">
                                                <spring:message text="Description" />
                                            </form:label>
                                            <form:input path="description" type="text" class="form-control" id="description" placeholder="Class Description" />
                                        </div>
                                        <c:if test="${!empty class.title}">
                                            <input class="btn btn-primary" type="submit" value="<spring:message text=" Edit Class "/>" />
                                        </c:if>
                                        <c:if test="${empty class.description}">
                                            <input class="btn btn-primary" type="submit" value="<spring:message text=" Add Class "/>" />
                                        </c:if>
                                    </form:form>
                                    <br>

                                    <!-- <h2>Filterable Classes</h2> -->
                                    <p>Type something in the input field to search:</p>
                                    <input class="form-control" id="searchInput" type="text" placeholder="Search Class..">
                                    <br>
                                    <c:if test="${!empty listClasses}">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Title</th>
                                                    <th>Description</th>
                                                    <th>*</th>
                                                </tr>
                                            </thead>
                                            <tbody id="classTable">

                                                <c:forEach items="${listClasses}" var="clss">
                                                    <tr>
                                                        <td>${clss.code}</td>
                                                        <td>${clss.title}</td>
                                                        <td>${clss.description}</td>
                                                        <td>
                                                            <a class="btn btn-success btn-xs" href="<c:url value='/editcls/${clss.code}' />">
                                                                <span class="glyphicon glyphicon-pencil"></span>
                                                            </a>
                                                            <a class="btn btn-danger btn-xs" href="<c:url value='/removecls/${clss.code}' />">
                                                                <span class="glyphicon glyphicon-trash"></span>
                                                            </a>
                                                            <a class="btn btn-success btn-xs" href="<c:url value='/class/${clss.code}/students' />">
                                                                <span class="glyphicon glyphicon-list"></span> Students
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
                                $("#classTable tr").filter(function() {
                                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                                });
                            });
                        });
                    </script>
                </body>

                </html>