<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="scripts" fragment="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Spring MVC | ${title }</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
</head>
<body>

	<div class="container">
		<div class="page-header">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="#"><h2>Spring MVC - Exemplo</h2></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="/Spring/produto/listar">Produtos
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/Spring/produto/cadastrar">Cadastrar</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<jsp:doBody />
	</div>
	<footer>
		<p>&copy; Todos os Direitos Reservados</p>
	</footer>
	<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<jsp:invoke fragment="scripts"></jsp:invoke>
</body>
</html>