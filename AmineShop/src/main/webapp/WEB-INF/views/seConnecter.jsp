<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Se Connecter</title>
		<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/nomOnglet.png"/>" />
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>">  </script>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/header.css"/>" />
		</head>
	<body>
		<%@ include file="navbar.jsp"%>
		<div class="container" style="margin-top: 30px; margin-bottom: 180px;">
			<div class="col-md-4 col-md-offset-4 " style="margin-top:60px;">
				<div class="login-panel panel panel-default " >
					<div class="panel-heading" style="background-color:;">
						<h3 class="panel-title"  align="center">Se connecter</h3>
					</div>
					<div class="panel-body" style="height:250px;">
						<c:if test="${not empty logout}">
							<div class="error" style="color: #ff0000;">${logout}</div>
						</c:if>
						<form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
							<fieldset>
								<div class="form-group" style="margin-top:20px">
									<input class="form-control" placeholder="E-mail" name="j_username" type="email">
								</div>
								<div class="form-group" style="margin-top:20px">
									<input class="form-control" placeholder="Mot de passe" name="j_password" type="password">
								</div>
								<div class="checkbox">
									<c:if test="${not empty error}">
										<div class="error" style="color: #ff0000">${error}</div>
									</c:if>
								</div>
								
								<div id="button"style="margin-top:20px">
									<button type="submit" class="btn btn-sm btn-success" style="margin-right: 79px; margin-left: 60px; 
										background-color:#5bc3dc; border-color: #5bc3dc; color:black;">
										Se connecter
									</button>
									<a href="<c:url value="/client/inscription"/>"
										class="btn btn-sm btn-success" 
										style="background-color:#5bc3dc; color:black; border-color: #5bc3dc;">
										S'inscrire
									</a>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div style="position: absolute; bottom: 0; left: 0; right: 0;">
			<%@ include file="footer.jsp"%>
		</div>
	</body>
</html>