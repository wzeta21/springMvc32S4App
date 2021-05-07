<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>

    <body>

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">S4</a>
                    <div class="nav-collapse collapse">
                        <!-- <p class="navbar-text pull-right">
                            Logged in as <a href="#" class="navbar-link">Username</a>
                        </p> -->
                        <ul class="nav">
                            <li class="active"><a href="<c:url value='/students' />">Student</a></li>
                            <li><a href="<c:url value='/classes' />">Class</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>

    </body>

    </html>