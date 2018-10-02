<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template title="Cadastro de Produto">
	<jsp:attribute name="scripts">
		<!-- Código JS... -->
	</jsp:attribute>
	<jsp:body>
		<h4>Produtos:</h4>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">Nome</th>
		      <th scope="col">Preço</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${list}" var="prod">
		  		<tr>
		  			<td>${prod.titulo}</td>
		  			<td>${prod.preco}</td>
		  		</tr>
		  	</c:forEach>
		  </tbody>
		</table>
	</jsp:body>
</tags:template>