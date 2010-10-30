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
	String[] linguagens
	int numeroInscricaoPoscomp
	double resultadoPoscomp
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
	
	/** Atividades acadêmicas */
	int semestresPesquisadorMestrado
	int semestresMonitoria
	int semestresEnsino
	int semestresAtuandoNaArea
	int semestresPibicIti
	int especializacaoLatuSensu
	int semestresPET
	
	/** Documentos */
	File[] historicosEscolares
	File diplomaDeGraduacao
	File curriculumVitae
	File ResultadoDoPoscomp
	File copiaIdentidade
	File copiaCpf
	File foto3x4
	File documentosMilitares
	File documentosEleitorais
	File cartaDeReferencia1
	File cartaDeReferencia2
	File cartaDeReferencia3

	/** arquivos que diferenciam mestrado de doutorado*/
	File arquivosDiferencais 
	
	static belongsTo = {chamada: Chamada ; usuario: Usuario}
	
    static constraints = {
    }
}
