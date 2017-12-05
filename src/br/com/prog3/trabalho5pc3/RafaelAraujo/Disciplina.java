package br.com.prog3.trabalho5pc3.RafaelAraujo;

public class Disciplina {
	private Integer codigo;
	private String descricao;
	private Integer cargaHoraria;
	
	public Disciplina(Integer codigo, String descricao, Integer cargaHoraria) {
		this.codigo = codigo;
		this.descricao = descricao;
		this.cargaHoraria = cargaHoraria;
	}
	public Integer getCodigo() {
		return codigo;
	}
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Integer getCargaHoraria() {
		return cargaHoraria;
	}
	public void setCargaHoraria(Integer cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}
}
