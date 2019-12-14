package egresados;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the programa database table.
 * 
 */
@Entity
@NamedQuery(name="Programa.findAll", query="SELECT p FROM Programa p")
public class Programa implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigo;

	private String nombre;

	//bi-directional many-to-one association to Egresado
	@OneToMany(mappedBy="programaBean")
	private List<Egresado> egresados;

	//bi-directional many-to-one association to Usuario
	@OneToMany(mappedBy="programaBean")
	private List<Usuario> usuarios;

	public Programa() {
	}

	public int getCodigo() {
		return this.codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<Egresado> getEgresados() {
		return this.egresados;
	}

	public void setEgresados(List<Egresado> egresados) {
		this.egresados = egresados;
	}

	public Egresado addEgresado(Egresado egresado) {
		getEgresados().add(egresado);
		egresado.setProgramaBean(this);

		return egresado;
	}

	public Egresado removeEgresado(Egresado egresado) {
		getEgresados().remove(egresado);
		egresado.setProgramaBean(null);

		return egresado;
	}

	public List<Usuario> getUsuarios() {
		return this.usuarios;
	}

	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}

	public Usuario addUsuario(Usuario usuario) {
		getUsuarios().add(usuario);
		usuario.setProgramaBean(this);

		return usuario;
	}

	public Usuario removeUsuario(Usuario usuario) {
		getUsuarios().remove(usuario);
		usuario.setProgramaBean(null);

		return usuario;
	}

}