<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Inscription</title>
		<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/nomOnglet.png"/>" />
		<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/inscription.css"/>">
		<script src="<c:url value="/resource/js/jquery.js"/>"></script>
		<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
	</head>
	<body>
		<%@ include file="navbar.jsp"%>
		<div class="container" style="margin-bottom: 19px">
			<h1 class="well">Inscrivez-vous ici !</h1>
			<div class="col-lg-12 well">
				<div class="row">
					<c:url value="/client/inscription" var="url"></c:url>
					<form:form method="post" action="${url}" commandName="client" enctype="multipart/form-data">
						<div class="col-sm-12">
							<div class="row">
								<div>
									<center>Informations d'utilisateur</center>
								</div>
								<div class="col-sm-6 form-group">
									<form:label path="prenomClient">Prénom</form:label>
									<form:input type="text" placeholder="Entrez Prénom.." class="form-control" path="prenomClient"></form:input>
									<form:errors path="prenomClient"></form:errors>
								</div>
								<div class="col-sm-6 form-group">
									<form:label path="nomClient">Nom</form:label>
									<form:input type="text" placeholder="Entrez Nom.." class="form-control" path="nomClient"></form:input>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label path="utilisateur.idEmail">Id Email </form:label>
									<form:input type="text" placeholder="Entrez Id Email.." class="form-control" path="utilisateur.idEmail"></form:input>
									<form:errors path="utilisateur.idEmail"></form:errors>
								</div>
								<div class="col-sm-6 form-group">
									<form:label path="telepClient">Téléphone</form:label>
									<form:input type="text" placeholder="Entrez Téléphone.." class="form-control" path="telepClient"></form:input>
									<form:errors path="telepClient"></form:errors>
								</div>
							</div>
							<hr>
							<div>
								<center>Adresse de livraison</center>
							</div>
							<div class="form-group">
								<form:label path="adresseLivraison.adresseLivr">Adresse</form:label>
								<form:textarea type="text" placeholder="Entrez Adresse Livraison.."
									class="form-control" path="adresseLivraison.adresseLivr"></form:textarea>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label path="adresseLivraison.ville">Ville</form:label>
									<form:input type="text" placeholder="Entrez Ville.."
										class="form-control" path="adresseLivraison.ville"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<form:label path="adresseLivraison.region">Région</form:label>
									<form:input type="text" placeholder="Entrez Région.."
										class="form-control" path="adresseLivraison.region"></form:input>
									<form:errors path="adresseLivraison.region"></form:errors>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label path="adresseLivraison.pays">Pays</form:label>
									<form:input type="text" placeholder="Entrez Pays.."
										class="form-control" path="adresseLivraison.pays"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<form:label path="adresseLivraison.codePostal">Code Postal</form:label>
									<form:input type="text" placeholder="Entrez Code Postal.."
										class="form-control" path="adresseLivraison.codePostal"></form:input>
									<form:errors path="adresseLivraison.codePostal"></form:errors>
								</div>
							</div>
							<hr>
							<div>
								<center>Adresse de facturation</center>
							</div>
							<div class="form-group">
								<form:label path="adresseFacturation.adresseFact">Adresse</form:label>
								<form:textarea type="text" placeholder="Entrez Adresse Facturation.."
									class="form-control" path="adresseFacturation.adresseFact"></form:textarea>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label path="adresseFacturation.villeFacturation">Ville</form:label>
									<form:input type="text" placeholder="Entrez Ville.."
										class="form-control" path="adresseFacturation.villeFacturation"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<form:label path="adresseFacturation.regionFacturation">Région</form:label>
									<form:input type="text" placeholder="Entrez Région.."
										class="form-control" path="adresseFacturation.regionFacturation"></form:input>
									<form:errors path="adresseFacturation.regionFacturation"></form:errors>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label path="adresseFacturation.paysFacturation">Pays</form:label>
									<form:input type="text" placeholder="Entrez Pays.."
										class="form-control" path="adresseFacturation.paysFacturation"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<form:label path="adresseFacturation.codePostalFacturation">Code Postal</form:label>
									<form:input type="text" placeholder="Entrez Code Postal.."
										class="form-control" path="adresseFacturation.codePostalFacturation"></form:input>
									<form:errors path="adresseFacturation.codePostalFacturation"></form:errors>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label path="utilisateur.motPasse">Mot de passe</form:label>
									<form:input type="password" placeholder="********"
										class="form-control" path="utilisateur.motPasse" id="motPasse"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label>Confirmer Mot de passe</label> <input type="password"
										placeholder="********" class="form-control" id="confirMotPasse" />
								</div>
							</div>
	
							<div class="form-actions">
								<button type="submit" class="btn btn-lg btn-info"
									onclick="return Validate()">Enregistrer</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
			<%@ include file="footer.jsp"%>
		<!-- Validation de mot de passe -->
		<script type="text/javascript">
			function Validate() {
				var password = document.getElementById("motPasse").value;
				var confirmpass = document.getElementById("confirMotPasse").value;
				if (password != confirmpass) {
					alert("Mot de passe incorrect.");
					return false;
				}
				return true;
			}
		</script>
	</body>
</html>