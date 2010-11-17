package copin

class Chamada {
	
	String tipoDeChamada
	String tituloDaChamada
	String texto
	Calendar dataInicialInscricoes
	Calendar dataFinalInscricoes
	int vagasDisponiveis
	String formula
	
	//Calendar.getInstance().after(chamadaInstance.dataInicialInscricoes) && Calendar.getInstance().before(chamadaInstance.dataFinalInscricoes)
	
	static hasMany = {inscricoes: Inscricao}
	
    static constraints = {
		tipoDeChamada(blank:false, nullable:false)
		tituloDaChamada(blank:false, unique:true, nullable:false)
		formula(blank:false, nullable:false)
		vagasDisponiveis(min:0)
    }
}