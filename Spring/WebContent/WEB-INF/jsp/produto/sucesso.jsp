<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template title="Cadastro de Produto">
	<jsp:attribute name="scripts">
		<!-- Código JS... -->
	</jsp:attribute>
	<jsp:body>
		<!-- Código da página... -->
		<div class="alert alert-success" role="alert"><strong>Sucesso!!</strong> ${prod.titulo } foi cadastrado!</div>
		<h2>O preço é: R$ ${prod.preco }</h2>
		
		<!-- 16:9 aspect ratio -->
		<div class="embed-responsive embed-responsive-16by9">
		  <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/45xrq0wpqv4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
		</div>
		<br>
	</jsp:body>
</tags:template>