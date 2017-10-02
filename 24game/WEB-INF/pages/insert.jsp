<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"  
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
    
<style>
	.error {
		padding: 15px;
		margin-bottom: 20px;
		border: 1px solid transparent;
		border-radius: 4px;
		color: #a94442;
		background-color: #f2dede;
		border-color: #ebccd1;
	}
	
	.msg {
		padding: 15px;
		margin-bottom: 20px;
		border: 1px solid transparent;
		border-radius: 4px;
		color: #31708f;
		background-color: #d9edf7;
		border-color: #bce8f1;
	}
	
		#login-box {
			padding: 20px 10px;
			margin: 100px auto;
			-webkit-border-radius: 2px;
			-moz-border-radius: 2px;
			
		}
</style>
</head>
<body  oncontextmenu="return false">
<body class="bg">
<div class="container-fluid" style="max-width: 800px;">
 <div  class="row">
        <div class="col-lg-12 col-md-offset-2" style="max-width: 500; margin-top: 50px;">
		     <img src="resources/img/header-03.png" alt="" class="center-block" style="width:100%"/>
             <div  id="login-box" class="mainBG radius">
            <h3>Registered</h3>
            <h5>The length must be greater than 5 less than or equal to 20.</h5>
            <c:if test="${not empty error}">
				<div class="error">${error}</div>
			</c:if>
			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>
            <form name='insertForm' action="insertpage" method='POST'>
    
                <table class="table-condensed">
                    <tr>
                        <td><img src="resources/img/user.png" alt="" width="11" height="11" /> UserName:</td>
                        <td><input type='text' name='username' class="input-sm"/></td>
                    </tr>
                    <tr>
                        <td><img src="resources/img/passwd.png" alt="" width="11" height="11" /> Password:</td>
                        <td><input type='password' name='password' class="input-sm"/></td>
                    </tr>
                    <tr>
                        <td><img src="resources/img/email.png" alt="" width="11" height="11" /> Email:</td>
                        <td><input type='text' name='email' class="input-sm"/></td>
                    </tr>
                    <tr>
                        <td colspan='2'><input name="submit" type="submit" value="註冊" class="input-sm btn-success"/></td>
                    </tr>
                </table>
    
                <input type="hidden" name="${_csrf.parameterName}"
                    value="${_csrf.token}" />
    
            </form>
            </div>
        </div>
        </div>
    </div>
</body>
</html>