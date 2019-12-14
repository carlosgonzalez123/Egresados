package egresados;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the estudio database table.
 * 
 */
@Entity
@NamedQuery(name="Estudio.findAll", query="SELECT e FROM Estudio e")
public class Estudio implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String lugar;

	private String periodofin;

	private String titulo;

	//bi-directional many-to-one association to Egresado
	@ManyToOne
	@JoinColumn(name="egresado")
	private Egresado egresadoBean;

	//bi-directional many-to-one association to Nivel
	@ManyToOne
	@JoinColumn(name="nivel")
	private Nivel nivelBean;

	public Estudio() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLugar() {
		return this.lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getPeriodofin() {
		return this.periodofin;
	}

	public void setPeriodofin(String periodofin) {
		this.periodofin = periodofin;
	}

	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Egresado getEgresadoBean() {
		return this.egresadoBean;
	}

	public void setEgresadoBean(Egresado egresadoBean) {
		this.egresadoBean = egresadoBean;
	}

	public Nivel getNivelBean() {
		return this.nivelBean;
	}

	public void setNivelBean(Nivel nivelBean) {
		this.nivelBean = nivelBean;
	}

}