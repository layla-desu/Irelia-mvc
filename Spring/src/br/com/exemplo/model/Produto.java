package br.com.exemplo.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Produto {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@Size(min=3, max=150, message="Titulo de produto inválido!!")
	private String titulo;
	
	@NotNull
	@DecimalMin(value="0", message="Preço deve ser válido!")
	private double preco;
	
	@ManyToOne
	private Categoria categoria;
	
	@NotNull
	private TipoProduto tipo;
	
	@Temporal(value=TemporalType.TIMESTAMP)
	private Calendar dataCriacao;
	
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	public TipoProduto getTipo() {
		return tipo;
	}
	public void setTipo(TipoProduto tipo) {
		this.tipo = tipo;
	}
	public Calendar getDataCriacao() {
		return dataCriacao;
	}
	public void setDataCriacao(Calendar dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
}
