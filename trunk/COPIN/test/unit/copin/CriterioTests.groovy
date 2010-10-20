package copin

import grails.test.*

class CriterioTests extends GrailsUnitTestCase {
    
	void testCreate(){
		def c1 = new Criterio(nome:"nota do POSCOMP",descricao:"a nota do POSCOMP"); //cadastrado
		def c2 = new Criterio(nome:"nota do POSCOMP",descricao:"a nota do POSCOMP 2009"); //nao eh cadastrado por causa do nome
		def c3 = new Criterio(nome:"certificados",descricao:"");//cadastrado
		def c4 = new Criterio(nome:"cartas de recomendacao",descricao:null);//nao eh cadastrado por causa da descricao
		def c5 = new Criterio(nome:"",descricao:"alguma coisa");//nao eh cadastrado por causa do nome
		def c6 = new Criterio(nome:null,descricao:"alguma coisa null");//nao eh cadastrado por causa do nome
		
		assertEquals c1.getNome(), "nota do POSCOMP"
		assertEquals c2.getNome(), "nota do POSCOMP"
		assertEquals c3.getNome(), "certificados"
		assertEquals c4.getNome(), "cartas de recomendacao"
		assertEquals c5.getNome(), ""
		assertEquals c6.getNome(), null
		
		assertEquals c1.getDescricao(), "a nota do POSCOMP"
		assertEquals c2.getDescricao(), "a nota do POSCOMP 2009"
		assertEquals c3.getDescricao(), ""
		assertEquals c4.getDescricao(), null
		assertEquals c5.getDescricao(), "alguma coisa"
		assertEquals c6.getDescricao(), "alguma coisa null"
		
		assertEquals c1.toString(), "nota do POSCOMP"
		assertEquals c2.toString(), "nota do POSCOMP"
		assertEquals c3.toString(), "certificados"
		assertEquals c4.toString(), "cartas de recomendacao"
		assertEquals c5.toString(), ""
		assertEquals c6.toString(), null
		
		if(c1) true
		if(!c2) true
		if(c3) true
		if(!c4) true
		if(!c5) true
		if(!c6) true
		
	}
	
}
