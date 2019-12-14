package util;
import dao.*;
import egresados.*;
public class prueba {

	public prueba() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
		Nivel n = new Nivel();
		NivelDao nv= new NivelDao();
		n.setDescripcion("Bachiller");
		nv.insert(n);
	}

}
