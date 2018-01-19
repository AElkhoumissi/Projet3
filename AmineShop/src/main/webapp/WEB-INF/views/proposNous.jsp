<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>A Propos De Nous</title>
		<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/proposNous.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/global.css"/>">
		<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/nomOnglet.png"/>" />
		<script src="<c:url value="/resource/js/jquery.js"/>"></script>
		<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
	</head>
	<body >
		<%@ include file="navbar.jsp"%>
		<div class="row" style="margin-top:4px; margin-right:0px; margin-left:0px;margin-bottom:0px; ">
			<div class="col-sm-4" style="padding-left:0px;">
				<div class="container-fluid bg-1 text-center">
					<h3>Qui sommes-nous?</h3>
					<img src="<c:url value="/resource/images/nomOnglet.png"/>" class="img-circle" alt="aPorposNous" width="200" height="200">
					<p>
						Amine's Shop est un site web de commerce électronique qui met à 
						la disposition de ses clients les dernières générations des smartPhones 
						de la marque Oppo. Il est développé par l'élève-ingénieur <strong>AMINE EL KHOUMISSI</strong>, 
						au sein de l'entreprise <strong>CIGATA AKTIV</strong>.
					</p>
				</div>
			</div>
			<div class="container-fluid bg-2 text-center">
				<h3>Que somme-nous?</h3>
				<div>
					<p>
						Amine's Shop est une application web qui permet l'achat en-ligne 
						des SmartPhones de la marque Oppo
					</p>
				</div>
				<div >
					<p>
						Cette application est développée en utilisant les frameworks Spring MVC, 
						Hibernate et Spring Security. 
					</p>
				</div>
			</div>
		</div>
		<div style="position: absolute; bottom: 0; left: 0; right: 0;">
			<%@ include file="footer.jsp"%>
		</div>
	</body>
</html>
