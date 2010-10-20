package copin

class Usuario {

	String login
	String hashSenha
	String hashCPF
	String senha
	String nome
	String email
	String CPF
	Boolean ativo
	Calendar dataCadastro
	
	void setSenha(String valor){
		this.senha = valor
		if (valor != null){
			this.hashSenha = valor.encodeAsPassword()
		}	
	}
	
	void setCPF(String valor){
		this.CPF = valor
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
		CPF(blank:false, unique:true, cpf:true)
    }
}
