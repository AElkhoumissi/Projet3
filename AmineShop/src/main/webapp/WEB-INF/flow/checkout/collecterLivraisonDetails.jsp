<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/navbar.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Collecter Infos Livraison</title>
		<link rel="stylesheet"
			href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
		<script src="<c:url value="/resource/js/jquery.js"/>"></script>
		<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
		<link rel="stylesheet" type="text/css"
			href="<c:url value="/resource/css/inscription.css"/>">

	</head>
	<body style="padding: 0px;">

	<div class="container" style="margin-bottom: 19px; padding-top:40px;">
			<h1 class="well">Confirmer Adresse Livraison!</h1>
			<div class="col-lg-12 well">
				<div class="row">

					<form:form commandName="commande">
						<div class="col-sm-12">
							<div class="row">
							
							<div><center>Adresse Livraison</center></div>
							<div class="form-group">
								<label for="adresseLivr">Adresse</label>
								<form:textarea type="text" 
									class="form-control" path="panier.client.adresseLivraison.adresseLivr"></form:textarea>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="ville">Ville</label>
									<form:input type="text" 
										class="form-control" path="panier.client.adresseLivraison.ville"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="region">Région</label>
									<form:input type="text" 
										class="form-control" path="panier.client.adresseLivraison.region"></form:input>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="pays">Pays</label>
									<form:input type="text" 
										class="form-control" path="panier.client.adresseLivraison.pays"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="codePostal">Code Postal</label>
									<form:input type="text" 
										class="form-control" path="panier.client.adresseLivraison.codePostal"></form:input>
								</div>
							</div>
							<input type="hidden" name="_flowExecutionKey" />

							<div class="form-actions">
								<button style="float: left; margin-left: 0px" class="btn btn-lg btn-default"	name="_eventId_backToCollectCustomerInfo">Précédent</button>
								<button type="Submit" style="margin-right: 10px; margin-left: 0px" class="btn btn-lg btn-info" name="_eventId_shippingDetailCollected">Suivant</button>
								<button style="float: right;" class="btn btn-lg btn-default" name="_eventId_cancel">Annuler</button>
							</div>
						</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div style="position: absolute; bottom: 0; left: 0; right: 0;">
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</div>
	  </body>
</html>

