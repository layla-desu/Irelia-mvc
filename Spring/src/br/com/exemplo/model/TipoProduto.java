package br.com.exemplo.model;

public enum TipoProduto {
	
	PERECIVEL("Perecíveis"), NAO_PERECIVEL("Não perecível"), ELETRONICO("Eletrônico");
	
	private final String label;
	
	private TipoProduto(String label) {
		this.label = label;
	}
	public String getLabel() {
		return label;
	}

}
