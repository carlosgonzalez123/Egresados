package dao;

import egresados.*;
import util.*;


public class EstudioDao 
extends Conexion<Estudio> 
implements GenericDao<Estudio>{
public EstudioDao() {
	super(Estudio.class);
}


}