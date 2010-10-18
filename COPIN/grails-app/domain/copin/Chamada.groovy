package copin

class Chamada {
	
	String tipoDeChamada
	String tituloDaChamada
	String texto
	Date DataInicialInscricoes
	Date DataFinalInscricoes
	String formula
	int camposExtras

	static hasMany = [usuarios:Usuario]
	
    static constraints = {
    }
}