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
	
	/** Forma��o universitaria (gradua��o) */
	String instituicao
	String curso
	double enade
	Calendar anoDeConclusao
	double mediaEscolar
	
	/** Forma��o universitaria (mestrado) */
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
	String[] linguagens
	int numeroInscricaoPoscomp
	double resultadoPoscomp
	Calendar anoPoscomp
	String estudoTempoIntegral
	String alunoEspecial
	int quantasDisciplinasEspeciais
	double mediaDisciplinasEspeciais
	
	/** Publica��es */
	int qualisInternacional
	int qualisNacional
	int outrasInternacionais
	int outrasNacionais
	int locaisERegionais
	
	/** Atividades acad�micas */
	int semestresPesquisadorMestrado
	int semestresMonitoria
	int semestresEnsino
	int semestresAtuandoNaArea
	int semestresPibicIti
	int especializacaoLatuSensu
	int semestresPET
	
	/** Documentos */
	File[] arquivosNecessarios
	
	static belongsTo = {chamada: Chamada ; usuario: Usuario}
	
    static constraints = {
    }
}
