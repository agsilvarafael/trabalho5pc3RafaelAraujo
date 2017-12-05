package br.com.prog3.trabalho5pc3.RafaelAraujo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class CrudDisciplina {
	private static Map<Integer, Disciplina>	mapaDisciplina;
	
	public CrudDisciplina(){
		Disciplina a = new Disciplina(111, "Programação 3", 80);
		Disciplina b = new Disciplina(123, "Matematica discreta", 80);
		mapaDisciplina = new HashMap<Integer, Disciplina>();
		mapaDisciplina.put(a.getCodigo(), a);
		mapaDisciplina.put(b.getCodigo(), b);
	}
	
	public List<Disciplina> listarTodos(){
		List<Disciplina> lista = new ArrayList<>();
		Set<Integer> chaves = mapaDisciplina.keySet();
		for (Integer i : chaves) {
			lista.add(mapaDisciplina.get(i));
		}
		return lista;
	}
	
	public Disciplina buscarPeloCodigo(Integer codigo){
		return mapaDisciplina.get(codigo);
	}
	
	public void inserir(Disciplina disciplina){
		mapaDisciplina.put(disciplina.getCodigo(), disciplina);
	}

	public void remover(Integer codigo){
		if (mapaDisciplina.containsKey(codigo)){
			mapaDisciplina.remove(codigo);
		}
	}

	public void alterar(Disciplina disciplina){
		if (mapaDisciplina.containsKey(disciplina.getCodigo())){
			mapaDisciplina.replace(disciplina.getCodigo(),disciplina);
		}
		else{
			mapaDisciplina.put(disciplina.getCodigo(),disciplina);			
		}
	}
}
