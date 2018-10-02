package br.com.exemplo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.exemplo.dao.ProdutoDAO;
import br.com.exemplo.model.Produto;

@Controller
@RequestMapping("/produto")
public class ProdutoController {
	@Autowired
	private ProdutoDAO dao;

	@GetMapping("cadastrar")
	public String abrirForm(){
		return "produto/cadastro";
	}

	@PostMapping(value="cadastrar")
	@Transactional
	public ModelAndView processarForm(Produto produto){
		ModelAndView retorno = new ModelAndView("produto/sucesso");
		retorno.addObject("prod", produto);
		dao.cadastrar(produto);
		return retorno;
	}
	
	@GetMapping(value="listar")
	@Transactional
	public ModelAndView listar(){
		ModelAndView retorno = new ModelAndView("produto/listar");
		List<Produto> lista = dao.listar();
		retorno.addObject("list", lista);
		return retorno;
	}
}
