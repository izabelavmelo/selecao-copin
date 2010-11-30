package copin

class Atribuicao {
	
	Usuario usuarios
	Chamada chamada
	
	static hasMany = {usuarios: Usuario}
	
	static belongsTo = {chamada: Chamada}

    static constraints = {
    }
}
