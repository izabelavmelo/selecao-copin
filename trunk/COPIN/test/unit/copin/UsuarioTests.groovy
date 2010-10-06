package copin

import grails.test.*

class UsuarioTests extends GrailsUnitTestCase {
	
	void testCreate() {
		def u1 = new Usuario( //eh cadastrado
				login:'teste',
				senha :'teste123',
				nome : 'Joaquim',
				email : 'joaquim@teste.com',
				cpf : '08580911439');
		def u2 = new Usuario( //nao eh cadastrado por causa de senha
				login:'teste1',
				senha :'tes',
				nome : 'Joao',
				email : 'joaquim@teste.com',
				cpf : '08580911438');
		def u3 = new Usuario(
				login:'teste2',
				senha :'teste1234',
				nome : 'Joaquim',
				email : 'joaquimohhh@teste.com',
				cpf : '08580911437');
		def u4 = new Usuario( //nao eh cadastrado: falta item de email
				login:'teste3',
				senha :'teste1234',
				nome : 'Joaquim',
				email : '',
				cpf : '08580911436');
		
		
		assertEquals u1.getNome(), "Joaquim"
		//assertEquals u2.getNome(), "Joao"
		assertEquals u3.getNome(), "Joaquim"
		//assertEquals u4.getNome(), "Joaquim"
		
		assertEquals u1.getLogin(), "teste"
		//assertEquals u2.getLogin(), "teste1"
		assertEquals u3.getLogin(), "teste2"
		//assertEquals u4.getLogin(), "teste3"
		
		/*assertEquals u1.getPasswd(), "senhasemcriptografia"
		assertEquals u2.getPasswd(), "teste2"
		assertEquals u3.getPasswd(), "senhaaa"
		
		assertTrue u1.isEnabled()
		assertFalse u2.isEnabled()**/
	}
}
