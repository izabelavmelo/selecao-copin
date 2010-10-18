package copin

class Chamada {
	
	String tipoDeChamada
	String tituloDaChamada
	String texto
	Date DataInicialInscricoes
	Date DataFinalInscricoes

	static hasMany = [usuarios:Usuario]
	
    static constraints = {
    }
}