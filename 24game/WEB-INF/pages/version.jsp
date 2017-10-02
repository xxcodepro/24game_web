<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
    
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>24 GAME</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/simple-sidebar.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body  oncontextmenu="return false">
<body   onkeydown="if(event.keyCode==8 || event.keyCode==116 || event.keyCode==123 || event.keyCode==37 || event.keyCode==18 || event.keyCode==85) return false;">
<body class="bg">

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
           <a>
                	<img src="resources/img/header-01.png"  alt=""/> 
       	  </a>
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    
              </li>
                <li class="sidebar-brand">
                    
                </li>
                	
                <li>
                    <a href="/24game/welcome">Home</a>
                </li>
                <li>
                    <a href="/24game/ranking">Ranking</a>
                </li>
                <li>
                    <form name="logoutForm"> <a href="javascript:formSubmit()">Sign out</a> </form>
                </li>
                <li>
                    <div class="col-lg-12">
                    	<small>2016 &copy; 24GAME Website</small>
                    </div>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
       <form name="version" action="degree" method="get">
        <div id="page-content-wrapper">
            <div class="container-fluid" style="max-width: 800px;">
                <div class="row">
                   
                    <div class="col-lg-12 col-md-offset-2" style="max-width: 500px;">
                       <a href="#menu-toggle" class="btn btn-success" id="menu-toggle">選單</a>
                       <br>
                       <div style="margin-top: 50px;">
                        <img src="resources/img/header-03.png" alt="" class="center-block" style="width: 120%"/>
                        <br><br><br><br>
                        <div class="col-lg-10 col-md-9 col-md-offset-2">
							<input id="version1" name="version" type="button" value="版本一" class="btn btn-block btn-warning" onclick="getVersion(this.id)" >
                           <input id="version2" name="version" type="button" value="版本二" class="btn btn-block btn-warning" onclick="getVersion(this.id)" >
                           <input id="version3" name="version" type="button" value="版本三" class="btn btn-block btn-warning" onclick="getVersion(this.id)" >
                           <br>
                           </div></div>
					</div>
				</div>
            </div>
        
        <!-- /#page-content-wrapper -->
		</div>
		<input name="version" id="version" type="hidden" value="">
	  </form>
	</div>
	
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
	<!---------------------------------------------------------------------------->>
	<sec:authorize access="hasRole('ROLE_USER') and !hasRole('ROLE_ADMIN')">
		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	    
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

		<c:if test="${pageContext.request.userPrincipal.name != null}">

		</c:if>
	</sec:authorize>
	<script>
		
		function getVersion(version_id)
		{
			if(version_id == "version1") document.getElementById("version").value = "version1";
			else if(version_id == "version2") document.getElementById("version").value = "version2";
			else document.getElementById("version").value = "version3";
			document.version.submit();
		}
	</script>
</body>

</html>
    