package br.com.exemplo.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.exemplo.dao.ProdutoDAO;
import br.com.exemplo.model.Produto;

@Repository
public class ProdutoDAOImpl extends GenericDAOImpl<Produto, Long> implements ProdutoDAO{

	@Override
	public List<Produto> listar() {
		List<Produto> lista= em.createQuery("from Produto").getResultList();
		return lista;
	}
}
