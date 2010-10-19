package copin

class Criterio {

	String nome
	String descricao
	
    static constraints = {
		nome(blank:false, unique:true, nullable:false)
		descricao(blank: true, nullable:false)
    }
}
