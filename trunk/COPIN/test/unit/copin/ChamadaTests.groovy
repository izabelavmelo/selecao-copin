package copin

import grails.test.*

class ChamadaTests extends GrailsUnitTestCase {
    
	void testCreate(){
		
		def ch1 = new Chamada(//cadastrado
			tipoDeChamada:"mestrado",
			tituloDaChamada:"mestrado 2010",
			texto:"mestrado 2010 da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(100),
			DataFinalInscricoes: new Date(1000),
			formula:"x+y+z");
		
		def ch2 = new Chamada(//cadastrado
			tipoDeChamada:"mestrado",
			tituloDaChamada:"mestrado 2011",
			texto:"mestrado 2011 da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(200),
			DataFinalInscricoes: new Date(2000),
			formula:"x+y+3z");
		
		def ch3 = new Chamada(// nao eh cadastrado por causa do tipoDeChamada
			tipoDeChamada:null,
			tituloDaChamada:"mestrado 2012",
			texto:"mestrado 2012 da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(300),
			DataFinalInscricoes: new Date(3000),
			formula:"2x+y+3z");
		
		def ch4 = new Chamada(// nao eh cadastrado por causa do tipoDeChamada
			tipoDeChamada:"",
			tituloDaChamada:"mestrado 2013",
			texto:"mestrado 2013 da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(400),
			DataFinalInscricoes: new Date(4000),
			formula:"2x+2y+3z");
		
		def ch5 = new Chamada(// nao eh cadastrado por causa do tituloDaChamada
			tipoDeChamada:"mestrado",
			tituloDaChamada:null,
			texto:"mestrado da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(500),
			DataFinalInscricoes: new Date(5000),
			formula:"x+4y+3z");
		
		def ch6 = new Chamada(// nao eh cadastrado por causa do tituloDaChamada
			tipoDeChamada:"mestrado",
			tituloDaChamada:"",
			texto:"mestrado da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(600),
			DataFinalInscricoes: new Date(6000),
			formula:"x+5y+3z");
		
		def ch7 = new Chamada(// nao eh cadastrado por causa do tituloDaChamada
			tipoDeChamada:"mestrado",
			tituloDaChamada:"mestrado 2013",
			texto:"mestrado 2013.2 da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(700),
			DataFinalInscricoes: new Date(7000),
			formula:"x+5y+3z");
		
		def ch8 = new Chamada(// nao eh cadastrado por causa de formula
			tipoDeChamada:"doutorado",
			tituloDaChamada:"doutorado 2015",
			texto:"doutorado 2015 da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(800),
			DataFinalInscricoes: new Date(8000),
			formula:"");
		
		def ch9 = new Chamada(// nao eh cadastrado por causa de formula
			tipoDeChamada:"doutorado",
			tituloDaChamada:"doutorado 2016",
			texto:"doutorado 2016 da UFCG/CEEI/DSC",
			DataInicialInscricoes: new Date(900),
			DataFinalInscricoes: new Date(9000),
			formula:null);
		
		assertEquals ch1.getTipoDeChamada(), "mestrado"
		assertEquals ch2.getTipoDeChamada(), "mestrado"
		assertEquals ch3.getTipoDeChamada(), null
		assertEquals ch4.getTipoDeChamada(), ""
		assertEquals ch5.getTipoDeChamada(), "mestrado"
		assertEquals ch6.getTipoDeChamada(), "mestrado"
		assertEquals ch7.getTipoDeChamada(), "mestrado"
		assertEquals ch8.getTipoDeChamada(), "doutorado"
		assertEquals ch9.getTipoDeChamada(), "doutorado"
		
		assertEquals ch1.getTituloDaChamada(), "mestrado 2010"
		assertEquals ch2.getTituloDaChamada(), "mestrado 2011"
		assertEquals ch3.getTituloDaChamada(), "mestrado 2012"
		assertEquals ch4.getTituloDaChamada(), "mestrado 2013"
		assertEquals ch5.getTituloDaChamada(), null
		assertEquals ch6.getTituloDaChamada(), ""
		assertEquals ch7.getTituloDaChamada(), "mestrado 2013"
		assertEquals ch8.getTituloDaChamada(), "doutorado 2015"
		assertEquals ch9.getTituloDaChamada(), "doutorado 2016"
		
		assertEquals ch1.getTexto(), "mestrado 2010 da UFCG/CEEI/DSC"
		assertEquals ch2.getTexto(), "mestrado 2011 da UFCG/CEEI/DSC"
		assertEquals ch3.getTexto(), "mestrado 2012 da UFCG/CEEI/DSC"
		assertEquals ch4.getTexto(), "mestrado 2013 da UFCG/CEEI/DSC"
		assertEquals ch5.getTexto(), "mestrado da UFCG/CEEI/DSC"
		assertEquals ch6.getTexto(), "mestrado da UFCG/CEEI/DSC"
		assertEquals ch7.getTexto(), "mestrado 2013.2 da UFCG/CEEI/DSC"
		assertEquals ch8.getTexto(), "doutorado 2015 da UFCG/CEEI/DSC"
		assertEquals ch9.getTexto(), "doutorado 2016 da UFCG/CEEI/DSC"
		
		assertEquals ch1.getDataInicialInscricoes().toString(), new Date(100).toString()
		assertEquals ch2.getDataInicialInscricoes().toString(), new Date(200).toString()
		assertEquals ch3.getDataInicialInscricoes().toString(), new Date(300).toString()
		assertEquals ch4.getDataInicialInscricoes().toString(), new Date(400).toString()
		assertEquals ch5.getDataInicialInscricoes().toString(), new Date(500).toString()
		assertEquals ch6.getDataInicialInscricoes().toString(), new Date(600).toString()
		assertEquals ch7.getDataInicialInscricoes().toString(), new Date(700).toString()
		assertEquals ch8.getDataInicialInscricoes().toString(), new Date(800).toString()
		assertEquals ch9.getDataInicialInscricoes().toString(), new Date(900).toString()
		
		assertEquals ch1.getDataFinalInscricoes().toString(), new Date(1000).toString()
		assertEquals ch2.getDataFinalInscricoes().toString(), new Date(2000).toString()
		assertEquals ch3.getDataFinalInscricoes().toString(), new Date(3000).toString()
		assertEquals ch4.getDataFinalInscricoes().toString(), new Date(4000).toString()
		assertEquals ch5.getDataFinalInscricoes().toString(), new Date(5000).toString()
		assertEquals ch6.getDataFinalInscricoes().toString(), new Date(6000).toString()
		assertEquals ch7.getDataFinalInscricoes().toString(), new Date(7000).toString()
		assertEquals ch8.getDataFinalInscricoes().toString(), new Date(8000).toString()
		assertEquals ch9.getDataFinalInscricoes().toString(), new Date(9000).toString()

		
		assertEquals ch1.getFormula(), "x+y+z"
		assertEquals ch2.getFormula(), "x+y+3z"
		assertEquals ch3.getFormula(), "2x+y+3z"
		assertEquals ch4.getFormula(), "2x+2y+3z"
		assertEquals ch5.getFormula(), "x+4y+3z"
		assertEquals ch6.getFormula(), "x+5y+3z"
		assertEquals ch7.getFormula(), "x+5y+3z"
		assertEquals ch8.getFormula(), ""
		assertEquals ch9.getFormula(), null
		
		if(ch1) true
		if(ch2) true
		if(!ch3) true
		if(!ch4) true
		if(!ch5) true
		if(!ch6) true
		if(!ch7) true
		if(!ch8) true
		if(!ch9) true
				
	}
	
}
