//Classe de teste para cadastro de usuario

class UsuarioFunctionalTests extends functionaltestplugin.FunctionalTestCase {
  
	private String defaultLocation =  "http://localhost:9090/COPIN/usuario/create";
	
	void testAnonymousAccess() {
		get(this.defaultLocation);
		assertContentContains("Create Usuario")
	}
	
	void testCadastroEmailInvalido(){
		get(this.defaultLocation);
		form("criarUsuario") {
			nome = "Izabela Vanessa"
			senha = "iza1234"
			login = "izabela"
			email = "izabela.vmelo"
			CPF = "08580911435"
			click "Create"
		}
		

		assertContentContains "Endereco de email invalido"
	}
	
	void testCadastroCPFInvalido(){
		get(this.defaultLocation);
		form("criarUsuario") {
			CPF = "12434jh233324"
			email = "izabela.vmelo@gmail.com"
			login = "izabela"
			nome = "Izabela Vanessa"
			senha = "iza1234"
			click "Create"
		}
		
		
		assertContentContains "CPF invalido."
	}
	
	void testCadastroSenhaPequena(){
		get(this.defaultLocation);
		form("criarUsuario") {
			CPF = "08580911435"
			email = "izabela.vmelo@gmail.com"
			login = "izabela"
			nome = "Izabela Vanessa"
			senha = "iz"
			click "Create"
		}
		
		
		assertContentContains "O campo [senha] da classe [class copin.Usuario] com o valor [iz] nao atinge o valor minimo [6]"
	}
	
	void testCadastroSenhaGrande(){
		get(this.defaultLocation);
		form("criarUsuario") {
			CPF = "08580911435"
			email = "izabela.vmelo@gmail.com"
			login = "izabela"
			nome = "Izabela Vanessa"
			senha = "izajdgfgsfguechernthriutgvrhgbfvdfghdfkjhgkjfhgkjdfhg"
			click "Create"
		}
		
		
		assertContentContains "O campo [senha] da classe [class copin.Usuario] com o valor [izajdgfgsfguechernthriutgvrhgbfvdfghdfkjhgkjfhgkjdfhg] ultrapassa o valor maximo [20]"
	}
	
		void testCadastroNomeBranco(){
		get(this.defaultLocation);
		form("criarUsuario") {
			CPF = "08580911435"
			email = "izabela.vmelo@gmail.com"
			login = "izabela"
			nome = ""
			senha = "1234567"
			click "Create"
		}
		
		
		assertContentContains "O campo [nome] da classe [class copin.Usuario] não pode ficar em branco"
	}
	
	void testCadastroSenhaBranco(){
		get(this.defaultLocation);
		form("criarUsuario") {
			CPF = "08580911435"
			email = "izabela.vmelo@gmail.com"
			login = "izabela"
			nome = "Vanessa"
			senha = ""
			click "Create"
		}
		
		
		assertContentContains "O campo [senha] da classe [class copin.Usuario] não pode ficar em branco"
	}
	
		void testCadastroLoginBranco(){
		get(this.defaultLocation);
		form("criarUsuario") {
			CPF = "08580911435"
			email = "izabela.vmelo@gmail.com"
			login = ""
			nome = "Vanessa"
			senha = "12344577"
			click "Create"
		}
		
		
		assertContentContains "O campo [login] da classe [class copin.Usuario] não pode ficar em branco"
	}
	
	void testCadastroEmailBranco(){
		get(this.defaultLocation);
		form("criarUsuario") {
			CPF = "08580911435"
			email = ""
			login = "izabela"
			nome = "Vanessa"
			senha = "12344577"
			click "Create"
		}
		
		
		assertContentContains "O campo [email] da classe [class copin.Usuario] não pode ficar em branco"
	}
	
	void testCadastroLoginEmailCPFSenha(){
		get(this.defaultLocation);
		form("criarUsuario") {
			CPF = "08580911435"
			email = "izabela.vmelo@gmail.com"
			login = "izabela"
			nome = "Izabela Vanessa"
			senha = "iza1234"
			click "Create"
		}
		
		
		assertContentContains "Ola Izabela Vanessa, seu cadastro foi realizado com sucesso!"
	}	
}
