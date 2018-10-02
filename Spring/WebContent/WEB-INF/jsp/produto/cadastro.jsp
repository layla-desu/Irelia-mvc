<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template title="Cadastro de Produto">
	<jsp:attribute name="scripts">
		<!-- Código JS... -->
	</jsp:attribute>
	<jsp:body>
		<!-- Código da página... -->
		<h3>Cadastro de Produto</h3>
		<form action="cadastrar" method="post">
			<div class="form-group">
			    <label for="titulo">Titulo:</label>
			    <input type="text" name="titulo" class="form-control" id="titulo">
			  </div>
			  <div class="form-group">
			    <label for="preco">Preço:</label>
			    <input type="text" name="preco" class="form-control" id="preco">
			  </div>
			<button type="submit" class="btn btn-default">Salvar</button>
		</form>
		<br>
		<h3>Nossos vídeos</h3>
		<h4>Fullmetal Alchemist</h4>
		<div class="embed-responsive embed-responsive-16by9">
		  <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/VWfbtZoOVCU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
		</div>
		<br>
		<div class="embed-responsive embed-responsive-16by9">
		  <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/2DYYVp4QXew" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
		</div>
		<h4>Tokyo Ghoul</h4>
		<div class="embed-responsive embed-responsive-16by9">
		  <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/vvvvcpwFw5o" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
		</div>
	</jsp:body>
</tags:template>