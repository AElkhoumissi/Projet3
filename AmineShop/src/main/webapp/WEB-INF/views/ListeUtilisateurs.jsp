<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>




<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Gestion Utilisateurs</title>
		<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/listeProduits.css"/>">
		<script src="<c:url value="/resource/js/jquery.js"/>"></script>
		<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
	</head>
	<body>
		<%@ include file="navbar.jsp"%>
		<div class="container" id="produitable" style="width:1145px;margin-bottom: 180px;">
			<h2>Gestion Utilisateurs</h2>
			<p>Liste des utilisateurs dans la base de données</p>
			<table class="table table-hover" id="listeProduits">
				<thead>
					<tr>
						<th>Id Utilisateur</th>
						<th>Prénom</th>
						<th>Nom</th>
						<th>Adresse</th>
						<th>Région</th>
						<th>Ville</th>
						<th>Téléphone</th>
						<th>Email</th>
						<th>Mot de passe</th>
						<th>Voir/Supprimer</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${utilisateurs}" var="utilisateur">
						<tr>
							<td>${utilisateur.idUtilisateur}</td>
							<td>${utilisateur.client.prenomClient}</td>
							<td>${utilisateur.client.nomClient}</td>
							<td>${utilisateur.client.adresseFacturation.adresseFact}</td>
							<td>${utilisateur.client.adresseFacturation.regionFacturation}</td>
							<td>${utilisateur.client.adresseFacturation.villeFacturation}</td>
							<td>${utilisateur.client.telepClient}</td>
							<td>${utilisateur.idEmail}</td>
							<td>${utilisateur.motPasse}</td>
							<td>
								<a href="getUtilisateurtParId/${utilisateur.idUtilisateur}" class="btn btn-info" role="button"> 
									<span class="glyphicon glyphicon-info-sign"></span>
								</a>
							    <a onclick="return confirm('Etes vous sûr de vouloir supprimer cet utilisateur?')" href="utilisateur/supprimer/${utilisateur.idUtilisateur}" class="btn btn-danger" style="margin-left: 5px"> 
							    <span class="glyphicon glyphicon-trash"></span></a>
							</td>  
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div style="position:absolute; bottom:0px;right:0px;left:0px;">
			<%@ include file="footer.jsp"%>
		</div>
	</body>
</html>
