import com.primalworld.math.ExpressionException;
import com.primalworld.math.MathEvaluator;


public class Teste {
	
	public static void main(String[] args) {
		
		MathEvaluator f = new MathEvaluator("a");
		f.addVariable("d1", 1.0);
		try {
			double a = f.getValue();
			System.out.println(a);
		} catch (ExpressionException e) {
			System.out.println("Deu pau");
			e.printStackTrace();
		}
		
	}

}
