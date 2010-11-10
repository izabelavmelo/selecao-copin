package copin

class Usuario {

	String login
	String hashSenha
	String hashCPF
	String senha
	String nome
	String email
	String cpf
	Boolean ativo
	Calendar dataCadastro
	
	String endereco
	String telefone
	Calendar dataNascimento
	
	static hasMany = [inscricoes: Inscricao]
	
	void setSenha(String valor){
		this.senha = valor
		if (valor != null){
			this.hashSenha = valor.encodeAsPassword()
		}	
	}
	
	void setCpf(String valor){
		this.cpf = valor
		if (valor != null){
			this.hashCPF = valor.encodeAsPassword()
		}
	}
		
	static transisents = ['senha']

    static constraints = {
		login(blank:false, unique:true)
		senha(blank:false, minSize:6, maxSize:20)
		nome(blank:false, nullable:false)		
		email(email:true, blank:false)
		cpf(blank:false, unique:true, cpf:true)
    }
}
