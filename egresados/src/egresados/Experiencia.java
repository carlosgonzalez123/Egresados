package egresados;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the experiencia database table.
 * 
 */
@Entity
@NamedQuery(name="Experiencia.findAll", query="SELECT e FROM Experiencia e")
public class Experiencia implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String descripcion;

	@Lob
	private String funciones;

	private String periodofin;

	private String periodoinicio;

	//bi-directional many-to-one association to Egresado
	@ManyToOne
	@JoinColumn(name="egresado")
	private Egresado egresadoBean;

	public Experiencia() {
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

	public String getFunciones() {
		return this.funciones;
	}

	public void setFunciones(String funciones) {
		this.funciones = funciones;
	}

	public String getPeriodofin() {
		return this.periodofin;
	}

	public void setPeriodofin(String periodofin) {
		this.periodofin = periodofin;
	}

	public String getPeriodoinicio() {
		return this.periodoinicio;
	}

	public void setPeriodoinicio(String periodoinicio) {
		this.periodoinicio = periodoinicio;
	}

	public Egresado getEgresadoBean() {
		return this.egresadoBean;
	}

	public void setEgresadoBean(Egresado egresadoBean) {
		this.egresadoBean = egresadoBean;
	}

}