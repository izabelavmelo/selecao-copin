package copin

class Criterio {

	String nome
	String descricao
	
	public String toString() {
		return nome;
	}
	
    static constraints = {
		nome(blank:false, unique:true, nullable:false)
		descricao(blank: true, nullable:false)
    }
}
