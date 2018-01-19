<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<jsp:useBean id="now" class="java.util.Date" />

<%@ include file="/WEB-INF/views/navbar.jsp"%>
<!DOCTYPE jsp:useBean PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirmer Commande</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/inscription.css"/>">
		
	</head>
	<body style="padding: 0px;">
		<div class="container-wrapper" style="padding-top:20px;">
	<div class="container" style="margin-bottom: 19px">
	 <div class="row" style="margin-top: 20px">
     <form:form commandName="commande" class="form-horizontal">
		<div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3" style="width: 100%; margin-left: 0%; ">
		<div style="text-align: center;"><h1>Reçu</h1></div>
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<address>
				<strong>Adresse Livrasison</strong><br />
				${commande.panier.client.adresseLivraison.adresseLivr} <br />
				${commande.panier.client.adresseLivraison.ville},
				${commande.panier.client.adresseLivraison.region} <br />
				${commande.panier.client.adresseLivraison.pays},
				${commande.panier.client.adresseLivraison.codePostal}
				</address>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6 text-right">
				<p><strong>Date Livraison:</strong><fmt:formatDate type="date" value="${now}" /></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<address>
				<strong>Adresse Facturation</strong><br />
				${commande.panier.client.adresseFacturation.adresseFact} <br />
				${commande.panier.client.adresseFacturation.villeFacturation},
				${commande.panier.client.adresseFacturation.regionFacturation} <br />
				${commande.panier.client.adresseFacturation.paysFacturation},
				${commande.panier.client.adresseFacturation.codePostalFacturation}
				</address>
			</div>
		</div>
		<div class="row">
		<div class="container">
			<table class="table table-hover">
				<thead>
    				<tr>
					<th class="text-center">Produit</th>
					<th class="text-center">Quantité</th>
					<th class="text-center">Prix</th>
					<th class="text-center">Total</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="lc" items="${commande.panier.lingeCommandes}">
					<tr>
					<td style="text-align: center"><em>${lc.produit.nomProduit}</em></td>
					<td style="text-align: center">${lc.quantité}</td>
					<td style="text-align: center">${lc.produit.prixProduit}</td>
					<td style="text-align: center">${lc.prix}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			</div>
					<div>
					<h4><strong>Grand Total: </strong> <strong class="text-danger">$ ${commande.panier.prixTotal}</strong></h4>
					</div>
					
		</div>

				
						<input type="hidden" name="_flowExecutionKey" /> <br /> <br />
					
						<button style="float: left;" class="btn btn-lg btn-default"
							name="_eventId_backToCollectShippingDetail">Précédent</button>
						
						<input style="margin-left: 200px" type="submit" value="Submit Order" class="btn btn-lg btn-info"
							name="_eventId_orderConfirmed" />
						
						<button style="float: right;" class="btn btn-lg btn-default" name="_eventId_cancel">Annuler</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
		
	</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp"%>