package copin

import java.util.LinkedList;
import com.primalworld.math.ExpressionException;
import com.primalworld.math.MathEvaluator;

import com.japisoft.formula.Formula 

class Chamada {
	
	String tipoDeChamada
	String tituloDaChamada
	String texto
	Calendar dataInicialInscricoes
	Calendar dataFinalInscricoes
	int vagasDisponiveis
	String formula
	
	//Calendar.getInstance().after(chamadaInstance.dataInicialInscricoes) && Calendar.getInstance().before(chamadaInstance.dataFinalInscricoes)
	
	void setFormula(String valor){
		if(formulaValida(valor)){
			this.formula = valor;
		}
	}
	
	static boolean formulaValida(String formula){
		
		formula = formula.toLowerCase();
		
		MathEvaluator f = new MathEvaluator(formula);
		
		//Adiciona variaves
		for(int i = 1; i<=10; i++){
			f.addVariable("n" + i, 1.0);
		}
		
		try {
			f.getValue();
			return true;
		} catch (ExpressionException e) {
			return false
		}
	}
	
	static hasMany = {inscricoes: Inscricao}
	
    static constraints = {
		tipoDeChamada(blank:false, nullable:false)
		tituloDaChamada(blank:false, unique:true, nullable:false)
		formula(blank:false, nullable:false)
		vagasDisponiveis(min:0)
    }
}