<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Infos Utilisateurs</title>
	</head>
	<body>
		<jsp:include page="navbar.jsp"></jsp:include>
		<div>
				<div class="container" style="width: 829px">
					<br/>
					<h2 style="font-weight:bold;">Informations Utilisateurs</h2>
					<table class="table table-bordered text-center" id="prod">
						<tbody>	
							<tr>
								<td style="font-weight:bold;">Id Utilisateur</td>
								<td>${utilisateur.idUtilisateur }</td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Prénom Utilisateur</td>
								<td>${utilisateur.client.prenomClient }</td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Nom Utilisateur</td>
								<td>${utilisateur.client.nomClient}</td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Téléphone Utilisateur</td>
								<td>${utilisateur.client.telepClient}</td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Login</td>
								<td>${utilisateur.idEmail}</td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Mot De Passe</td>
								<td>${utilisateur.motPasse}</td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Activation</td>
								<td>${utilisateur.enabled}</td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Page précédente</td>
								<td>
									<a href="/ecommerce/admin/getAllUtilisateurs" class="btn btn-info" style="margin-top: 0px; width: 150px; float: right; margin-right: 31px;">
										<span class="glyphicon glyphicon-arrow-left "></span>
									</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
	
			<div style="position:absolute; bottom:0px;right:0px;left:0px;">
				<%@ include file="footer.jsp"%>
			</div>
	</body>
</html>