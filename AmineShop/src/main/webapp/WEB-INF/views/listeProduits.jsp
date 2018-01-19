<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Gestion Produits</title>
	<link rel="icon" type="image/x-icon"
		href="<c:url value="/resource/images/favicon1.png"/>" />
	<link rel="stylesheet"
		href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
	<script src="<c:url value="/resource/js/jquery.js"/>"></script>
	<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
	<link rel="stylesheet" type="text/css"
		href="<c:url value="/resource/css/listeProduits.css"/>">
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script src="<c:url value="/resource/js/produitController.js"/>"></script>
	</head>
	<body ng-app="monApp">
		<%@ include file="navbar.jsp"%>
		<div class="container" id="produitable" style="width: 1145px; margin-bottom: 180px;">
			<h2>Gestion de produits</h2>
			<p>Liste des produits dans la base de données</p>
			<table class="table table-hover" id="listeProduits">
				<thead>
					<tr >
						<th>Image</th>
						<th>Id </th>
						<th>Catégorie</th>
						<th>Nom </th>
						<th>Prix </th>
						<th>Stock</th>
						<th>Description</th>
						<th>Fabricant</th>
						<th>Voir 
							<security:authorize ifAnyGranted="ROLE_USER">
								/Ajouter au panier
							</security:authorize> 
							<security:authorize ifAnyGranted="ROLE_ADMIN">
								/Edit/Supprimer
							</security:authorize>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${produits}" var="prod">
						<tr>
							<td style="width: 171px"><img
								src="<c:url value="/resource/images/produits/${prod.idProduit}.jpg"/>"
								style="width: 100px; height: 90px;" alt="${prod.nomProduit}"  /></td>
							<td>${prod.idProduit}</td>
							<td>${prod.catégorieProduit}</td>
							<td>${prod.nomProduit}</td>
							<td>${prod.prixProduit}</td>
							<td>${prod.unitStock}</td>
							<td style="width: 180px">${prod.descriptionProduit}</td>
							<td>${prod.fabricantProduit}</td>
							<td ng-controller="monController">
								<a href="getProduitParId/${prod.idProduit}" class="btn btn-info" role="button"> 
									<span class="glyphicon glyphicon-info-sign"></span>
								</a>
								<security:authorize ifAnyGranted="ROLE_USER">
									<a onclick="return alert('Ajouté avec succès')" href="panier/ajouter/${prod.idProduit}"  class="btn btn-primary" style="margin-left: 5px"> 
										<span class="glyphicon glyphicon-shopping-cart"></span>
									</a>
								</security:authorize> 
								<security:authorize ifAnyGranted="ROLE_ADMIN">
									<a href="admin/produit/editProduit/${prod.idProduit}" class="btn btn-success" style="margin-left: 5px"> 
										<span class="glyphicon glyphicon-edit"></span>
									</a>
									<a onclick="return confirm('Etes vous sûr de vouloir supprimer ce produit?')" href="admin/supprimer/${prod.idProduit}" class="btn btn-danger"style="margin-left: 5px"> 
										<span class="glyphicon glyphicon-trash"></span>
									</a>
								</security:authorize>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<%@ include file="footer.jsp"%>
	</body>
</html>
