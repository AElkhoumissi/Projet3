<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/global.css"/>">
		<script src="<c:url value="/resource/js/jquery.js"/>"></script>
		<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
	</head>
	<body>
		<footer class="footer-distributed">
			<div class="footer-left" align="center">
				<p class="footer-links" >
					<a href="<c:url value="/index1"/>">Accueil</a> · 
					<a href="<c:url value="/proposNous"/>">A propos de nous </a> · 
					<a href="<c:url value="/getAllProduits" />">Produits </a> · 
					<a href="<c:url value="/contactezNous"/>">Contactez-nous</a>
				</p>
				<p >
					Développé par : <strong>AMINE EL KHOUMISSI</strong>  
					,au sein du startup: <strong>CIGATA AKTIV</strong>  
					&copy; 2017
				</p>
			</div>
		</footer>
	</body>
</html>