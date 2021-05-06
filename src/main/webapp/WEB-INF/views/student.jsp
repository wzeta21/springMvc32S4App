<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <html>

                <head>
                    <title>Student</title>
                </head>

                <body>
                    <div class="hero-unit">
                        <h1>Student</h1>

                        <c:url var="addAction" value="/student/add"></c:url>

                        <form:form action="${addAction}" commandName="student">
                            <table>
                                <c:if test="${!empty student.firstName}">
                                    <tr>
                                        <td>
                                            <form:label path="studentId">
                                                <spring:message text="ID" />
                                            </form:label>
                                        </td>
                                        <td>
                                            <form:input path="studentId" readonly="true" size="8" disabled="true" />
                                            <form:hidden path="studentId" />
                                        </td>
                                    </tr>
                                </c:if>
                                <tr>
                                    <td>
                                        <form:label path="firstName">
                                            <spring:message text="First Name" />
                                        </form:label>
                                    </td>
                                    <td>
                                        <form:input path="firstName" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <form:label path="lastName">
                                            <spring:message text="Last Name" />
                                        </form:label>
                                    </td>
                                    <td>
                                        <form:input path="lastName" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <c:if test="${!empty student.firstName}">
                                            <input type="submit" value="<spring:message text=" Edit Student "/>" />
                                        </c:if>
                                        <c:if test="${empty person.name}">
                                            <input type="submit" value="<spring:message text=" Add Student "/>" />
                                        </c:if>
                                    </td>
                                </tr>
                            </table>
                        </form:form>
                        <br>
                        <h3>Students List</h3>
                        <c:if test="${!empty listStudents}">
                            <table class="tg">
                                <tr>
                                    <th width="80">Student ID</th>
                                    <th width="120">First Name</th>
                                    <th width="120">Last Name</th>
                                    <th width="60">Edit</th>
                                    <th width="60">Delete</th>
                                </tr>
                                <c:forEach items="${listStudents}" var="student">
                                    <tr>
                                        <td>${student.studentId}</td>
                                        <td>${student.firstName}</td>
                                        <td>${student.lastName}</td>
                                        <td><a href="<c:url value='/edit/${student.studentId}' />">Edit</a></td>
                                        <td><a href="<c:url value='/remove/${student.studentId}' />">Delete</a></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:if>

                    </div>

                    <div class="row-fluid">
                        <div class="span8">

                            <div id="message" class="alert alert-info">
                                <spring:message code="message.home.instructions" />
                            </div>


                        </div>
                    </div>
                </body>

                </html>