package copin

class Administrador {
	
	String login
	String senha
	String hashSenha
	String nome
	
	void setSenha(String valor){
		this.senha = valor
		if (valor != null){
			this.hashSenha = valor.encodeAsPassword()
		}
	}
	
	static transisents = ['senha']

    static constraints = {
		login(blank:false, unique:true)
		senha(blank:false, minSize:6, maxSize:20)
		nome(blank:false, nullable:false, unique:true)
    }

}
