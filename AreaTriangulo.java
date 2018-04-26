package TRi;
import acm.program.*;
public class AreaTriangulo extends ConsoleProgram{
	public void run() {
		int a = readInt("Ingrese la base del triangulo: ");
		int b = readInt("Ingrese la altura del triangulo: ");
		float c = (a*b)/2;
		println("El espectacular area del triangulo es: "+c);
		
	}
	
}
