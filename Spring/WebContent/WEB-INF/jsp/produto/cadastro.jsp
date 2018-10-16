<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<tags:template title="Cadastro de Produto">
	<jsp:attribute name="scripts">
		<!-- Código JS... -->
	</jsp:attribute>
	<jsp:body>
		<!-- Código da página... -->
		<h3>Cadastro de Produto</h3>
		<c:url value="/produto/cadastrar" var="action"/>
		<form:form action="${action }" method="post" commandName="produto">
			<div class="form-group">
				<form:label path="titulo">Título</form:label>
				<form:input path="titulo" cssClass="form-control"/>
				<form:errors path="titulo" cssClass="text-danger"/>
			</div>
			<div class="form-group">
				<form:label path="preco">Preço</form:label>
				<form:input path="preco" cssClass="form-control"/>
				<form:errors path="preco" cssClass="text-danger"/>
			</div>
			<div class="form-group">
				<form:label path="categoria">Categoria</form:label>
				<form:select path="categoria.id" cssClass="form-control">
				<form:options items="${categorias }" itemLabel="descricao" itemValue="id"/>
				</form:select>
				<form:errors path="categoria"/>
			</div>
			<div class="form-group">
				<form:label path="tipo">Tipo Produto</form:label>
				<form:select path="tipo" cssClass="form-control">
				<form:options items="${tipoProdutos }" itemLabel="label"/>
				</form:select>
			</div>
			<div class="form-group">
				<input type="submit" value="Salvar" class="btn btn-primary"/>
			</div>
		</form:form>
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