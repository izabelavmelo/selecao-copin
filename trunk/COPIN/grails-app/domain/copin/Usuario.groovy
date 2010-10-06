package copin

class Usuario {

	String login
	String senha
	String nome
	String email
	String CPF

    static constraints = {
		nome(blank:false, nullable:false)
		senha(blank:false, minSize:6, maxSize:20)
		login(blank:false, unique:true)
		email(email:true, blank:false)
    }
}
