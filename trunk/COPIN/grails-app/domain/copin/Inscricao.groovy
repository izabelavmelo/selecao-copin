package copin

class Inscricao {
	
	File a
	
	static belongsTo = {chamada: Chamada ; usuario: Usuario}
	
    static constraints = {
    }
}
