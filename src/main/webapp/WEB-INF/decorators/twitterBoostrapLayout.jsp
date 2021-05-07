<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <meta name="description" content="">
                    <meta name="author" content="Geoffroy Warin">

                    <title>
                        <dec:title default="mvc-java-init" />
                    </title>

                    <!-- <link href="resources/css/bootstrap.min.css" rel="stylesheet"> -->
                    <link href="resources/css/ownstyles.css" rel="stylesheet">
                    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
                    <style type="text/css">
                        body {
                            padding-top: 60px;
                            padding-bottom: 40px;
                        }
                        
                        .sidebar-nav {
                            padding: 9px 0;
                        }
                    </style>
                    <!-- See http://twitter.github.com/bootstrap/scaffolding.html#responsive -->
                    <!-- <link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet" /> -->

                    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
                    <!--[if lt IE 9]>
      		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    	<![endif]-->

                    <!-- Fav and touch icons 
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="resources/ico/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="resources/ico/favicon.png">
		-->

                    <dec:head />
                </head>

                <body>
                    <%@include file="boostrapNavbar.jsp"%>
                        <div class="container-fluid">
                            <div class="row-fluid">
                                <!--/span-->

                                <div class="span9">
                                    <!--Body content-->
                                    <dec:body />
                                </div>
                            </div>
                            <hr>
                            <footer>
                                <p>&copy; wzeta21 2021</p>
                            </footer>
                        </div>
                        <!--/.container-fluid-->

                        <!-- <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
                        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script> -->
                </body>

                </html>