package copin

class Chamada {
	
	String tipoDeChamada
	String tituloDaChamada
	String texto
	Date DataInicialInscricoes
	Date DataFinalInscricoes
	String formula
	
	
    static constraints = {
		tipoDeChamada(blank:false, nullable:false)
		tituloDaChamada(blank:false, unique:true, nullable:false)
		formula(blank:false, nullable:false)
    }
}