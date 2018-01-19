<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Collecter Infos Client</title>
		<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
		<link rel="stylesheet" type="text/css"	href="<c:url value="/resource/css/inscription.css"/>">
		<script src="<c:url value="/resource/js/jquery.js"/>"></script>
		<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
	</head>
	<body style="padding: 0px;">
		<%@ include file="/WEB-INF/views/navbar.jsp"%>
		<div class="container" style="margin-bottom: 19px; padding-top:15px;">
			<center><h1 class="well">Détails Client!</h1></center>
			<div class="col-lg-12 well">
				<div class="row">
					<form:form commandName="commande" enctype="multipart/form-data">
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="prenomClient">Prénom</label>
									<form:input type="text" class="form-control"
										path="panier.client.prenomClient"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="nomClient">Nom</label>
									<form:input type="text" class="form-control"
										path="panier.client.nomClient"></form:input>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="utilisateur.idEmail">Id Email</label>
									<form:input type="text" class="form-control"
										path="panier.client.utilisateur.idEmail"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="telepClient">Téléphone</label>
									<form:input type="text" class="form-control"
										path="panier.client.telepClient"></form:input>
								</div>
							</div>
	
							<div>Adresse Facturation:</div>
							<div class="form-group">
								<label for="adresseFact">Adresse</label>
								<form:textarea type="text" class="form-control"
									path="panier.client.adresseFacturation.adresseFact"></form:textarea>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="villeFacturation">Ville</label>
									<form:input type="text" class="form-control"
										path="panier.client.adresseFacturation.villeFacturation"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="regionFacturation">Région</label>
									<form:input type="text" class="form-control"
										path="panier.client.adresseFacturation.regionFacturation"></form:input>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="paysFacturation">Pays</label>
									<form:input type="text" class="form-control"
										path="panier.client.adresseFacturation.paysFacturation"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="codePostalFacturation">Code Postal</label>
									<form:input type="text" class="form-control"
										path="panier.client.adresseFacturation.codePostalFacturation"></form:input>
								</div>
							</div>
							<input type="hidden" name="_flowExecutionKey" />
	
							<div class="form-actions">
								<button type="Submit" class="btn btn-lg btn-info"
									name="_eventId_customerInfoCollected" style="margin-right: 44px; margin-left: 0px">Suivant</button>
								<button class="btn btn-lg btn-default" name="_eventId_cancel">Annuler</button>
							</div>
	
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/footer.jsp"%>	
	</body>
</html>

