<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/nomOnglet.png"/>" />
		<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/global.css"/>">
		<script src="<c:url value="/resource/js/jquery.js"/>"></script>
		<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
	</head>
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="collapse navbar-collapse" id="monNavbar">
					<ul class="nav navbar-nav" >
						<li><h3 style="color:white;margin:9px;"> Amine's Shop</h3></li>
						<li ><a  href=" <c:url value="/index1" />">Accueil</a></li>
						<li><a href=" <c:url value="/getAllProduits" />">Produits</a></li>
						<li><a href=" <c:url value="proposNous" />">A Propos de nous</a></li>
						<security:authorize access="hasRole('ROLE_USER')">
							<li><a href=" <c:url value="/contactezNous" />">Contactez-nous</a></li>
						</security:authorize>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href=" <c:url value="/admin/produit/ajouterProduit" />">Ajouter Produits</a></li>
						</security:authorize>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href=" <c:url value="/admin/getAllUtilisateurs" />">Liste Utilisateurs</a></li>
						</security:authorize>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${!empty pageContext.request.userPrincipal.name}">
							<li>
								<a href="<c:url value="/index1" />">
									<span class="glyphicon glyphicon-shopping-user"></span>
									Bienvenue..${pageContext.request.userPrincipal.name}
								</a>
							</li>
							<security:authorize access="hasRole('ROLE_USER')">
								<li>
									<a href="<c:url value="/panier/getPanierParId" />">
										<span class="glyphicon glyphicon-shopping-cart"></span>
										Panier
									</a>
								</li>
							</security:authorize>
							<li>
								<a href="<c:url value="/j_spring_security_logout" />">
									<span class="glyphicon glyphicon-log-out"></span>
									Logout
								</a>
							</li>
						</c:if>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${pageContext.request.userPrincipal.name==null}">
							<li>
								<a href="<c:url value="/login" />">
									<span class="glyphicon glyphicon-shopping-cart"></span>
									Mon panier
								</a>
							</li>
							<li>
								<a href="<c:url value="/client/inscription" />">
									<span class="glyphicon glyphicon-log-user"></span> 
									S'inscrire
								</a>
							</li>
							<li>
								<a href="<c:url value="/login" />">
									<span class="glyphicon glyphicon-log-in"></span> 
									Se connecter
								</a>
							</li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</body>
</html>