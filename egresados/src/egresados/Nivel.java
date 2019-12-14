package egresados;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the nivel database table.
 * 
 */
@Entity
@NamedQuery(name="Nivel.findAll", query="SELECT n FROM Nivel n")
public class Nivel implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String descripcion;

	//bi-directional many-to-one association to Estudio
	@OneToMany(mappedBy="nivelBean")
	private List<Estudio> estudios;

	public Nivel() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public List<Estudio> getEstudios() {
		return this.estudios;
	}

	public void setEstudios(List<Estudio> estudios) {
		this.estudios = estudios;
	}

	public Estudio addEstudio(Estudio estudio) {
		getEstudios().add(estudio);
		estudio.setNivelBean(this);

		return estudio;
	}

	public Estudio removeEstudio(Estudio estudio) {
		getEstudios().remove(estudio);
		estudio.setNivelBean(null);

		return estudio;
	}

}