<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>

    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                    <a class="navbar-brand" href="/">S4</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="/">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li>
                            <a href="<c:url value='/students' />">Student</a>
                        </li>
                        <li>
                            <a href="<c:url value='/classes' />">Class</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>

    </html>