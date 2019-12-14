package egresados;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the egresado database table.
 * 
 */
@Entity
@NamedQuery(name="Egresado.findAll", query="SELECT e FROM Egresado e")
public class Egresado implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String clave;

	private String codigo;

	private String documento;

	private String email;

	private String nombre;

	@Lob
	private String perfil;

	private String telefono;

	private byte validado;

	//bi-directional many-to-one association to Programa
	@ManyToOne
	@JoinColumn(name="programa")
	private Programa programaBean;

	//bi-directional many-to-one association to Estudio
	@OneToMany(mappedBy="egresadoBean")
	private List<Estudio> estudios;

	//bi-directional many-to-one association to Experiencia
	@OneToMany(mappedBy="egresadoBean")
	private List<Experiencia> experiencias;

	public Egresado() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getClave() {
		return this.clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getCodigo() {
		return this.codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getDocumento() {
		return this.documento;
	}

	public void setDocumento(String documento) {
		this.documento = documento;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPerfil() {
		return this.perfil;
	}

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public byte getValidado() {
		return this.validado;
	}

	public void setValidado(byte validado) {
		this.validado = validado;
	}

	public Programa getProgramaBean() {
		return this.programaBean;
	}

	public void setProgramaBean(Programa programaBean) {
		this.programaBean = programaBean;
	}

	public List<Estudio> getEstudios() {
		return this.estudios;
	}

	public void setEstudios(List<Estudio> estudios) {
		this.estudios = estudios;
	}

	public Estudio addEstudio(Estudio estudio) {
		getEstudios().add(estudio);
		estudio.setEgresadoBean(this);

		return estudio;
	}

	public Estudio removeEstudio(Estudio estudio) {
		getEstudios().remove(estudio);
		estudio.setEgresadoBean(null);

		return estudio;
	}

	public List<Experiencia> getExperiencias() {
		return this.experiencias;
	}

	public void setExperiencias(List<Experiencia> experiencias) {
		this.experiencias = experiencias;
	}

	public Experiencia addExperiencia(Experiencia experiencia) {
		getExperiencias().add(experiencia);
		experiencia.setEgresadoBean(this);

		return experiencia;
	}

	public Experiencia removeExperiencia(Experiencia experiencia) {
		getExperiencias().remove(experiencia);
		experiencia.setEgresadoBean(null);

		return experiencia;
	}

}