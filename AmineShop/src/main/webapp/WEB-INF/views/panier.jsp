<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Panier</title>
		<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/nomOnglet.png"/>" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		<script src="<c:url value="/resource/js/produitController.js"/>"></script>
	</head>
	<body>
		<%@ include file="navbar.jsp"%>
	   	<div class="container" style="width: 1145px; margin-top: 20px; margin-bottom: 180px;">
			<div ng-app="monApp" ng-controller="monController" style="margin-bottom: 30px">
				<div>
					<br> Liste des produits achetés
					<div>
						<a onclick="return confirm('Etes vous sûr de vouloir vider le panier?')" class="btn btn-danger pull-left" href="supprimerAllLignesCommande/${panier.getIdPanier()}" style="margin-top: 15px; margin-left: 20px">
							<span class="glyphicon glyphicon-remove-sign"> </span>
							Videz le panier
						</a>
					</div>
					<div>
						<c:url value="/commander/${panier.getIdPanier()}" var="url1"></c:url>
						<a href="${url1}" class="btn btn-danger pull-left" style="margin-top: 15px; margin-left: 20px"> 
							<span class="glyphicon glyphicon-shipping-cart"> </span>
							Vérification
						</a>
					</div>
					<table class="table table-hover" id="listeProduits">
						<thead>
							<tr>
								<th>Nom Produit</th>
								<th>Quantité</th>
								<th>Prix</th>
								<th>Prix Total</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${panier.getLingeCommandes()}" var="lc">
							<tr>
								<td>${lc.produit.nomProduit}</td>
								<td>${lc.quantité}</td>
								<td>${lc.produit.prixProduit}</td>
								<td>${lc.prix}</td>
								<td>
									<a  onclick="return confirm('Etes vous sûr de vouloir supprimer ce(s) produitr(s)?')" class="btn btn-danger" href="supprimerLigneCommande/${lc.getIdLigneCommande()}" style="margin-top: 0px;">
										<span class="glyphicon glyphicon-trash"></span>
										supprimer
									</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div ><strong>Pirx Total:</strong> ${total} DH</div>
				</div>
				<c:url value="/getAllProduits" var="url"></c:url>
				<a href="${url}" class="btn btn-default" style="margin-left: 20px">
					Continuer Vos Achats
				</a>
			</div>
		</div>
		<div style="position: absolute; bottom: 0; left: 0; right: 0;">
			<%@ include file="footer.jsp"%>
		</div>
	</body>
</html>