package br.com.exemplo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.exemplo.dao.CategoriaDAO;
import br.com.exemplo.dao.ProdutoDAO;
import br.com.exemplo.model.Produto;
import br.com.exemplo.model.TipoProduto;

@Controller
@RequestMapping("/produto")
public class ProdutoController {
	@Autowired
	private ProdutoDAO dao;
	
	@Autowired
	private CategoriaDAO categoriaDao;

	@GetMapping("cadastrar")
	public ModelAndView abrirForm(Produto produto){
		ModelAndView retorno = new ModelAndView("produto/cadastro");
		retorno.addObject("categorias", categoriaDao.listar());
		retorno.addObject("tipoProdutos", TipoProduto.values());
		return retorno;
	}

	@PostMapping(value="cadastrar")
	@Transactional
	public ModelAndView processarForm(@Valid Produto produto, BindingResult result, RedirectAttributes redirectAttributes){
		if (result.hasErrors()){
			return abrirForm(produto);
		}
		try {
			dao.cadastrar(produto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("msg","Produto cadastrado!");
		return new ModelAndView("redirect:/produto/listar");
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
