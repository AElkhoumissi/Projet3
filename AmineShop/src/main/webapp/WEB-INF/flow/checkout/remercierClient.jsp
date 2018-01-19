<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/navbar.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE jsp:useBean PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Merci</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>

</head>
<body style="padding: 0px;">

	<div class="container-wrapper">
		<div class="container" >
			<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Merci pour vos achats!</h1>

					<p>Votre commande sera livr�e dans</p>
				</div>
			</div>
<%@ include file="/WEB-INF/views/countdown.jsp"%>
			</section>
			<section class="container" style="margin-bottom: 30px;">
			<p style="text-align: center;">
				<a href="<spring:url value="/" />" class="btn btn-default">OK</a>
			</p>
			</section>
		</div>
	</div>
	<div style="position: absolute; bottom: 0; left: 0; right: 0;">
			<%@ include file="/WEB-INF/views/footer.jsp"%>
	</div>
</body>
</html>

