package copin

import grails.test.*

class UsuarioTests extends GrailsUnitTestCase {
	
	void testCreate() {
		def u1 = new Usuario( //eh cadastrado
				login: 'teste',
				//senha: "teste123",
				nome: 'Joaquim',
				email: 'joaquim@teste.com',
				//cpf : '26364959164'
				);
		def u2 = new Usuario( //nao eh cadastrado por causa de senha
				login:'teste1',
				//senha :'tes',
				nome : 'Joao',
				email : 'joaquim@teste.com',
				//cpf : '08580911438'
				);
		def u3 = new Usuario(//nao eh cadastrado por causa do login repetido
				login:'teste2',
				//senha :'teste1234',
				nome : 'Joaquim',
				email : 'joaquimohhh@teste.com',
				//cpf : '08580911437'
				);
		def u4 = new Usuario( //nao eh cadastrado: falta item de email
				login:'teste3',
				//senha :'teste1234',
				nome : 'Joaquim',
				email : '',
				//cpf : '08580911436'
				);
		
		//Testando os nomes
		assertEquals u1.getNome(), "Joaquim"
		assertEquals u2.getNome(), "Joao"
		assertEquals u3.getNome(), "Joaquim"
		assertEquals u4.getNome(), "Joaquim"
		
		//Testando os logins
		assertEquals u1.getLogin(), "teste"
		assertEquals u2.getLogin(), "teste1"
		assertEquals u3.getLogin(), "teste2"
		assertEquals u4.getLogin(), "teste3"
		
		/*
		//Testando as senhas
		assertEquals u1.getSenha(), "teste123"
		assertEquals u2.getSenha(), "tes"
		assertEquals u3.getSenha(), "teste1234"
		assertEquals u4.getSenha(), "teste1234"
		*/
		
		//Testando os emails
		assertEquals u1.getEmail(), "joaquim@teste.com"
		assertEquals u2.getEmail(), "joaquim@teste.com"
		assertEquals u3.getEmail(), "joaquimohhh@teste.com"
		assertEquals u4.getEmail(), ""
		
		/*
		//Testando os CPFs
		assertEquals u1.getCpf(), "26364959164"
		assertEquals u2.getCpf(), "08580911438"
		assertEquals u3.getCpf(), "08580911437"
		assertEquals u4.getCpf(), "08580911436"
		*/
		
	}
}
