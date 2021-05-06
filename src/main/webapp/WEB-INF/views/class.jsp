<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <html>

                <head>
                    <title>Class</title>
                </head>

                <body>
                    <div class="hero-unit">
                        <h1>Class</h1>

                        <c:url var="addAction" value="/class/add"></c:url>

                        <form:form action="${addAction}" commandName="class">
                            <table>
                                <c:if test="${!empty class.title}">
                                    <tr>
                                        <td>
                                            <form:label path="code">
                                                <spring:message text="ID" />
                                            </form:label>
                                        </td>
                                        <td>
                                            <form:input path="code" readonly="true" size="8" disabled="true" />
                                            <form:hidden path="code" />
                                        </td>
                                    </tr>
                                </c:if>
                                <tr>
                                    <td>
                                        <form:label path="title">
                                            <spring:message text="Title" />
                                        </form:label>
                                    </td>
                                    <td>
                                        <form:input path="title" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <form:label path="description">
                                            <spring:message text="Description" />
                                        </form:label>
                                    </td>
                                    <td>
                                        <form:input path="description" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <c:if test="${!empty class.title}">
                                            <input type="submit" value="<spring:message text=" Edit Class "/>" />
                                        </c:if>
                                        <c:if test="${empty class.description}">
                                            <input type="submit" value="<spring:message text=" Add Class "/>" />
                                        </c:if>
                                    </td>
                                </tr>
                            </table>
                        </form:form>
                        <br>
                        <h3>Classes List</h3>
                        <c:if test="${!empty listClasses}">
                            <table class="tg">
                                <tr>
                                    <th width="80">ID</th>
                                    <th width="120">Title</th>
                                    <th width="120">description</th>
                                    <th width="60">Edit</th>
                                    <th width="60">Delete</th>
                                </tr>
                                <c:forEach items="${listClasses}" var="clss">
                                    <tr>
                                        <td>${clss.code}</td>
                                        <td>${clss.title}</td>
                                        <td>${clss.description}</td>
                                        <td><a href="<c:url value='/editcls/${clss.code}' />">Edit</a></td>
                                        <td><a href="<c:url value='/removecls/${clss.code}' />">Delete</a></td>
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