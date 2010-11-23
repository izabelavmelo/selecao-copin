import java.util.Calendar;

import copin.Usuario 

class BootStrap {

    def init = { servletContext ->
		def userGod = new Usuario(
			login :'administrador',
			nome :'Administrador do sistema',
			email : 'copinsid@gmail.com',
			cpf: '12345678909',
			senha: 'copinsid',
			endereco: 'rua',
			telefone: '12345678',
			ativo: true,
			ehAdministrador: true)
		
		userGod.dataNascimento = Calendar.getInstance()
		userGod.dataCadastro = Calendar.getInstance()
		userGod.save(flush: true)
    }
		 
    def destroy = {
    }
}
