package copin

import grails.test.*

class ChamadaTests extends GrailsUnitTestCase {
    
	void testCreate(){
		
		def dataInicial1 = Calendar.getInstance()
		dataInicial1.set(2010, 1, 1)
		def dataFinal1 = Calendar.getInstance()
		dataFinal1.set(2010, 2, 1)
		
		def ch1 = new Chamada(//cadastrado
			tipoDeChamada:"mestrado",
			tituloDaChamada:"mestrado 2010",
			texto:"mestrado 2010 da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial1, 
			dataFinalInscricoes: dataFinal1,
			formula:"x+y+z");
		
		def dataInicial2 = Calendar.getInstance()
		dataInicial2.set(2010, 2, 1)
		def dataFinal2 = Calendar.getInstance()
		dataFinal2.set(2010, 3, 1)
		
		def ch2 = new Chamada(//cadastrado
			tipoDeChamada:"mestrado",
			tituloDaChamada:"mestrado 2011",
			texto:"mestrado 2011 da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial2,
			dataFinalInscricoes: dataFinal2,
			formula:"x+y+3z");
		
		def dataInicial3 = Calendar.getInstance()
		dataInicial3.set(2010, 3, 1)
		def dataFinal3 = Calendar.getInstance()
		dataFinal3.set(2010, 4, 1)
		
		def ch3 = new Chamada(// nao eh cadastrado por causa do tipoDeChamada
			tipoDeChamada:null,
			tituloDaChamada:"mestrado 2012",
			texto:"mestrado 2012 da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial3,
			dataFinalInscricoes: dataFinal3,
			formula:"2x+y+3z");
		
		def dataInicial4 = Calendar.getInstance()
		dataInicial4.set(2010, 4, 30)
		def dataFinal4 = Calendar.getInstance()
		dataFinal4.set(2010, 5, 30)
		
		def ch4 = new Chamada(// nao eh cadastrado por causa do tipoDeChamada
			tipoDeChamada:"",
			tituloDaChamada:"mestrado 2013",
			texto:"mestrado 2013 da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial4,
			dataFinalInscricoes: dataFinal4,
			formula:"2x+2y+3z");
		
		def dataInicial5 = Calendar.getInstance()
		dataInicial5.set(2010, 5, 1)
		def dataFinal5 = Calendar.getInstance()
		dataFinal5.set(2010, 6, 1)
		
		def ch5 = new Chamada(// nao eh cadastrado por causa do tituloDaChamada
			tipoDeChamada:"mestrado",
			tituloDaChamada:null,
			texto:"mestrado da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial5,
			dataFinalInscricoes: dataFinal5,
			formula:"x+4y+3z");
		
		def dataInicial6 = Calendar.getInstance()
		dataInicial6.set(2010, 6, 1)
		def dataFinal6 = Calendar.getInstance()
		dataFinal6.set(2010, 7, 1)
		
		def ch6 = new Chamada(// nao eh cadastrado por causa do tituloDaChamada
			tipoDeChamada:"mestrado",
			tituloDaChamada:"",
			texto:"mestrado da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial6,
			dataFinalInscricoes: dataFinal6,
			formula:"x+5y+3z");
		
		def dataInicial7 = Calendar.getInstance()
		dataInicial7.set(2010, 7, 1)
		def dataFinal7 = Calendar.getInstance()
		dataFinal7.set(2010, 8, 1)
		
		
		//TODO Nao entendi esse teste
		
		def ch7 = new Chamada(// nao eh cadastrado por causa do tituloDaChamada
			tipoDeChamada:"mestrado",
			tituloDaChamada:"mestrado 2013",
			texto:"mestrado 2013.2 da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial7,
			dataFinalInscricoes: dataFinal7,
			formula:"x+5y+3z");
		
		def dataInicial8 = Calendar.getInstance()
		dataInicial8.set(2010, 8, 1)
		def dataFinal8 = Calendar.getInstance()
		dataFinal8.set(2010, 9, 1)
		
		def ch8 = new Chamada(// nao eh cadastrado por causa de formula
			tipoDeChamada:"doutorado",
			tituloDaChamada:"doutorado 2015",
			texto:"doutorado 2015 da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial8,
			dataFinalInscricoes: dataFinal8,
			formula:"");
		
		def dataInicial9 = Calendar.getInstance()
		dataInicial9.set(2010, 9, 1)
		def dataFinal9 = Calendar.getInstance()
		dataFinal9.set(2010, 10, 1)
		
		def ch9 = new Chamada(// nao eh cadastrado por causa de formula
			tipoDeChamada:"doutorado",
			tituloDaChamada:"doutorado 2016",
			texto:"doutorado 2016 da UFCG/CEEI/DSC",
			dataInicialInscricoes: dataInicial9,
			dataFinalInscricoes: dataFinal9,
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
		
		assertEquals ch1.getDataInicialInscricoes().toString(), dataInicial1.toString()
		assertEquals ch2.getDataInicialInscricoes().toString(), dataInicial2.toString()
		assertEquals ch3.getDataInicialInscricoes().toString(), dataInicial3.toString()
		assertEquals ch4.getDataInicialInscricoes().toString(), dataInicial4.toString()
		assertEquals ch5.getDataInicialInscricoes().toString(), dataInicial5.toString()
		assertEquals ch6.getDataInicialInscricoes().toString(), dataInicial6.toString()
		assertEquals ch7.getDataInicialInscricoes().toString(), dataInicial7.toString()
		assertEquals ch8.getDataInicialInscricoes().toString(), dataInicial8.toString()
		assertEquals ch9.getDataInicialInscricoes().toString(), dataInicial9.toString()
		
		assertEquals ch1.getDataFinalInscricoes().toString(), dataFinal1.toString()
		assertEquals ch2.getDataFinalInscricoes().toString(), dataFinal2.toString()
		assertEquals ch3.getDataFinalInscricoes().toString(), dataFinal3.toString()
		assertEquals ch4.getDataFinalInscricoes().toString(), dataFinal4.toString()
		assertEquals ch5.getDataFinalInscricoes().toString(), dataFinal5.toString()
		assertEquals ch6.getDataFinalInscricoes().toString(), dataFinal6.toString()
		assertEquals ch7.getDataFinalInscricoes().toString(), dataFinal7.toString()
		assertEquals ch8.getDataFinalInscricoes().toString(), dataFinal8.toString()
		assertEquals ch9.getDataFinalInscricoes().toString(), dataFinal9.toString()

		
		assertEquals ch1.getFormula(), "x+y+z"
		assertEquals ch2.getFormula(), "x+y+3z"
		assertEquals ch3.getFormula(), "2x+y+3z"
		assertEquals ch4.getFormula(), "2x+2y+3z"
		assertEquals ch5.getFormula(), "x+4y+3z"
		assertEquals ch6.getFormula(), "x+5y+3z"
		assertEquals ch7.getFormula(), "x+5y+3z"
		assertEquals ch8.getFormula(), ""
		assertEquals ch9.getFormula(), null
		
				
	}
	
}
