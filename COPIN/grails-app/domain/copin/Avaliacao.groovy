package copin


class Avaliacao {

	/**Média*/
	double mediaGeral
	
	double cartasDeRecomendacao
	double curriculo
	double cartaDeIntencoes
	double planoDeTrabalho
	boolean mestradoCCAfins
	double mediaPosCOMP
	
	Inscricao inscricao
	Usuario avaliador
	
	static belongsTo = {inscricao: Inscricao; avaliador: Usuario}
	
	static constraints = {
		
		mediaGeral(min:0d, max:10d)
		cartasDeRecomendacao(min:0d, max:10d)
		curriculo(min:0d, max:10d)
		cartaDeIntencoes(min:0d, max:10d)
		planoDeTrabalho(min:0d, max:10d)
		inscricao(nullable:false)
		avaliador(nullable:false)
	}
	
}
