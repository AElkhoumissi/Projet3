<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Editer Produit</title>
	<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/nomOnglet.png"/>" />
	<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/inscription.css"/>">
	<script src="<c:url value="/resource/js/jquery.js"/>"></script>
	<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
	</head>
	<body>
		<%@ include file="navbar.jsp"%>
		<div class="container" style="margin-bottom: 19px">
			<h1 class="well">Mettre à jour Produit</h1>
			<div class="col-lg-12 well">
				<div class="row">
					<c:url value="/admin/produit/editProduit" var="url"></c:url>
					<form:form method="post" action="${url}" commandName="produit">
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label path="idProduit">Id Produit</form:label>
									<form:input type="text" placeholder="Entrez Id Produit.."
										class="form-control" path="idProduit" ></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<form:label path="nomProduit">Nom Produit</form:label>
									<form:input type="text" placeholder="Entrez Nom Produit.."
										class="form-control" path="nomProduit"></form:input>
								</div>
							</div>
							<div class="form-group">
								<form:label path="descriptionProduit">Description Produit</form:label>
								<form:textarea type="text" placeholder="Entrez Description Produit.."
									class="form-control" path="descriptionProduit"></form:textarea>
							</div>
							<div class="form-group">
								<form:label path="catégorieProduit">Catégorie Produit</form:label>
								<form:radiobutton path="catégorieProduit" value="Android" />
								Android
								<form:radiobutton path="catégorieProduit" value="Windows" />
								Windows
								<form:radiobutton path="catégorieProduit" value="Linux" />
								Linux
								<form:radiobutton path="catégorieProduit" value="Mac" />
								Mac
							</div>
							<div class="row">
								<div class="col-sm-4 form-group">
									<form:label path="fabricantProduit">Fabricant Produit</form:label>
									<form:input type="text"
										placeholder="Entrez Fabricant Produit.." class="form-control"
										path="fabricantProduit"></form:input>
								</div>
								<div class="col-sm-4 form-group">
									<form:label path="prixProduit">Prix Produit</form:label>
									<form:input type="text" placeholder="Entrez Prix Produit.."
										class="form-control" path="prixProduit"></form:input>
								</div>
								<div class="col-sm-4 form-group">
									<form:label path="unitStock">Nombre Produits</form:label>
									<form:input type="text" placeholder="Nombre Produits.."
										class="form-control" path="unitStock"></form:input>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-lg btn-info">Mettre à jour</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div style="position:absolute; bottom:0px; left:0px; right:0px;">
			<%@ include file="footer.jsp"%>
		</div>
	</body>
</html>