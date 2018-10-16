package br.com.exemplo.model;

public enum TipoProduto {
	
	PERECIVEL("Perec�veis"), NAO_PERECIVEL("N�o perec�vel"), ELETRONICO("Eletr�nico");
	
	private final String label;
	
	private TipoProduto(String label) {
		this.label = label;
	}
	public String getLabel() {
		return label;
	}

}
