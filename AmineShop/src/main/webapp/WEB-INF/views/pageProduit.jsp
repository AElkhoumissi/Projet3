<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Produits</title>
		<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/nomOnglet.png"/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/global.css"/>">
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		<script src="<c:url value="/resource/js/produitController.js"/>"></script>
	</head>
	<body>
		<%@ include file="navbar.jsp"%>
		<div ng-app="monApp">
			<div class="container" style="width: 829px">
				<br/>
				<h2 style="font-weight:bold;">Informations Produit</h2>
				<table class="table table-bordered text-center" id="prod">
					<tbody>	
						<tr>
							<td style="font-weight:bold;"><br/><br/><br/><br/><br/><br/>Image Produit</td>
							<td>
								<img src="<c:url value="/resource/images/produits/${produit.idProduit}.jpg"/>"
								width="40%" alt="${produit.nomProduit}" style="float:center"/>
							</td>
						</tr>
						<tr>
							<td style="font-weight:bold;">Id Produit</td>
							<td>${produit.idProduit }</td>
						</tr>
						<tr>
							<td style="font-weight:bold;">Nom Produit</td>
							<td>${produit.nomProduit }</td>
						</tr>
						<tr>
							<td style="font-weight:bold;">Catégorie</td>
							<td>${produit.catégorieProduit}</td>
						</tr>
						<tr>
							<td style="font-weight:bold;">Description Produit</td>
							<td>${produit.descriptionProduit}</td>
						</tr>
						<tr>
							<td style="font-weight:bold;">Fabricant Produit</td>
							<td>${produit.fabricantProduit}</td>
						</tr>
						<tr>
							<td style="font-weight:bold;">Prix Produit</td>
							<td>${produit.prixProduit}</td>
						</tr>
						<tr>
							<td style="font-weight:bold;">Stock Disponible</td>
							<td>${produit.unitStock}</td>
						</tr>
						<tr>
							<td style="font-weight:bold;">Ajouter au panier:</td>
							<td>
							<c:url value="/panier/ajouter/${produit.idProduit}" var="ajoutPanier"></c:url>
								<div ng-controller="monController">
									<security:authorize access="hasRole('ROLE_USER')">
										<a href="#" ng-click="ajouterAuPanier(${produit.idProduit})" class="btn btn-info"
											style="margin-top: 0px; width: 150px; float: left; margin-right: 31px;">
											<span class="glyphicon glyphicon-shopping-cart"></span>
										</a>
									</security:authorize>
									<a href="<c:url value="/getAllProduits" />" class="btn btn-info"
										style="margin-top: 0px; width: 150px; float: right; margin-right: 31px;">
										<span class="glyphicon glyphicon-arrow-left"></span>
									</a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	 </body>
</html>

