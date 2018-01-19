<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Panier Invalide</title>
	</head>
	<body>
		<%@ include file="/WEB-INF/views/navbar.jsp"%>
		<div class="container-wrapper">
			<div class="container" style="margin-bottom: 180px;">
				<section>
					<div class="jumbotron">
						<div class="container">
							<h1>Panier Invalide!</h1>
						</div>
					</div>
				</section>
				<section class="container">
					<p>
						<center>
							<a href="<spring:url value="/getAllProduits" />" class="btn btn-default">Voir Produits</a>
						</center>
					</p>
				</section>
			</div>
		</div>
		<div style="position: absolute; bottom: 0; left: 0; right: 0;">
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</div>
	</body>
</html>