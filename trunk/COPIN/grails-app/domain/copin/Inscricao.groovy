package copin

class Inscricao {
	
	/** Dados pessoais */
	String cargoFuncoes
	String empresaInstituicao
	String primeiraOpcaoProjeto
	String segundaOpcaoProjeto
	String terceiraOpcaoProjeto
	String quartaOpcaoProjeto
	String cursoInscricao
	
	/** Formação universitaria (graduação) */
	String instituicao
	String curso
	double enade
	Calendar anoDeConclusao
	double mediaEscolar
	
	/** Formação universitaria (mestrado) */
	String instituicaoMestrado
	String cursoMestrado
	double enadeMestrado
	Calendar anoDeConclusaoMestrado
	double mediaEscolarMestrado
	
	/** Dados adicionais */
	String vinculoEmpregaticio
	String nomeEmpresa
	String solicitaBolsa
	String vinculoPICD
	String universidadePICD
	String sabeProgramar
	String linguagens
	int numeroInscricaoPoscomp
	int resultadoPoscomp
	Calendar anoPoscomp
	String estudoTempoIntegral
	String alunoEspecial
	int quantasDisciplinasEspeciais
	double mediaDisciplinasEspeciais
	
	/** Publicações */
	int qualisInternacional
	int qualisNacional
	int outrasInternacionais
	int outrasNacionais
	int locaisERegionais
	
	/** Outras atividades acadêmicas */
	int semestresPesquisadorMestrado
	int semestresMonitoria
	int semestresEnsino
	int semestresAtuandoNaArea
	int semestresPibicIti
	int especializacaoLatuSensu
	int semestresPET
	
	/** Documentos */
	String fileName
	byte[] documentos
	/**byte[] historicosEscolares
	byte[] diplomaDeGraduacao
	byte[] curriculumVitae
	byte[] ResultadoDoPoscomp
	byte[] copiaIdentidade
	byte[] copiaCpf
	byte[] foto3x4
	byte[] documentosMilitares
	byte[] documentosEleitorais
	byte[] cartaDeReferencia1
	byte[] cartaDeReferencia2
	byte[] cartaDeReferencia3
*/
	/** arquivos que diferenciam mestrado de doutorado*/
	/**byte[] arquivosDiferencais 
	*/
	
	Chamada chamada = null
	Usuario usuario = null
	
	static belongsTo = {chamada: Chamada ; usuario: Usuario}
	
    static constraints = {
		
		enade(min:0d, max:10d)
		mediaEscolar(min:0d, max:10d)
		enadeMestrado(min:0d, max:10d)
		mediaEscolarMestrado(min:0d, max:10d)
		numeroInscricaoPoscomp(min:0)
		resultadoPoscomp(min:0)
		quantasDisciplinasEspeciais(min:0)
		mediaDisciplinasEspeciais(min:0d)
		qualisInternacional(min:0)
		qualisNacional(min:0)
		outrasInternacionais(min:0)
		outrasNacionais(min:0)
		locaisERegionais(min:0)
		semestresPesquisadorMestrado(min:0)
		semestresMonitoria(min:0)
		semestresEnsino(min:0)
		semestresAtuandoNaArea(min:0)
		semestresPibicIti(min:0)
		especializacaoLatuSensu(min:0)
		semestresPET(min:0)

		primeiraOpcaoProjeto(blank:false, nullable:false)
		segundaOpcaoProjeto(blank:false, nullable:false)
		terceiraOpcaoProjeto(blank:false, nullable:false)
		quartaOpcaoProjeto(blank:false, nullable:false)
		cursoInscricao(blank:false, nullable:false)
		instituicao(blank:false, nullable:false)
		curso(blank:false, nullable:false)
		instituicaoMestrado(blank:false, nullable:false)
		cursoMestrado(blank:false, nullable:false)
		nomeEmpresa(blank:false, nullable:false)
		universidadePICD(blank:false, nullable:false)
		linguagens(blank:false, nullable:false)
		
		documentos(size:0..5024000)
    }
}
