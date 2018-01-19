<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/navbar.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container-wrapper" style="padding-top:13%;">
	<div class="container" style="margin-bottom: 180px;">
		<section>
			<div class="jumbotron">
				<div class="container text-center" >
					<h1 class="alert alert-danger ">Vérification Annulée!</h1>

					<p>Votre processus de vérification est annulé! Vous pouvez continuer vos achats.</p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<center><a href="<c:url value="/getAllProduits" />" class="btn btn-default">Retour Page Produits</a></center>
			</p>
		</section>
	</div>
</div>
<div style="position: absolute; bottom: 0; left: 0; right: 0;">
			<%@ include file="/WEB-INF/views/footer.jsp"%>
</div>
</body>
</html>
