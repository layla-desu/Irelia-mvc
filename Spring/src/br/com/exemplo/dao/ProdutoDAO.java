package br.com.exemplo.dao;

import java.util.List;

import br.com.exemplo.model.Produto;

public interface ProdutoDAO extends GenericDAO<Produto, Long> {
	List<Produto> listar();
}
