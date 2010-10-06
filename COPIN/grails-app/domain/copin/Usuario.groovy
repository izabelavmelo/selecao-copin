package copin

class Usuario {

	String login
	String senha
	String nome
	String email
	String CPF 

    static constraints = {
		login(blank:false, unique:true)
		senha(blank:false, minSize:6, maxSize:20)
		nome(blank:false, nullable:false)		
		email(email:true, blank:false)
		CPF(blank:false, unique:true, cpf:true)
    }
}
