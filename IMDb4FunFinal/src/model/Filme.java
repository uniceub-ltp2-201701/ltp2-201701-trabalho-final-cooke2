package model;

public class Filme {
	private int idFilme;
	private String titulo;
	private String tituloIngles;
	private int ano;
	private String categoria;
	private double pontuacao;
	
	public Filme(){
	}
	
	public Filme(int idFilme, String titulo, String tituloIngles, int ano, String categoria,
			double pontuacao) {
		this.idFilme = idFilme;
		this.titulo = titulo;
		this.tituloIngles = tituloIngles;
		this.ano = ano;
		this.categoria = categoria;
		this.pontuacao = pontuacao;
	}

	public int getIdFilme() {
		return idFilme;
	}

	public void setIdFilme(int idFilme) {
		this.idFilme = idFilme;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTituloIngles() {
		return tituloIngles;
	}

	public void setTituloIngles(String tituloIngles) {
		this.tituloIngles = tituloIngles;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getPontuacao() { //OPCIONAL
		if (pontuacao >=0 & pontuacao <=10) {
			return pontuacao + " " + "estrelas";
		} else { 
			return "pontuacao nao registrada";
		}
	}
	public void setPontuacao(double pontuacao) {
		this.pontuacao = pontuacao;
	}
	
}
