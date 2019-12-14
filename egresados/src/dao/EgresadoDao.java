package dao;



import util.Conexion;
import dao.*;
import egresados.*;

public class EgresadoDao 
extends Conexion<Egresado> 
implements GenericDao<Egresado>{
public EgresadoDao() {
	super(Egresado.class);
}


}