package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import egresados.Programa;
import egresados.Usuario;

/**
 * Servlet implementation class Registrar
 */
public class Registrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registrar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario u=new Usuario();
		String clave=request.getParameter("clave");
		u.setClave(clave);
		String email=request.getParameter("email");
		u.setEmail(email);
		String nombre=request.getParameter("nombre");
		u.setNombre(nombre);
		String usuario=request.getParameter("usuario");
		u.setUsuario(usuario);
		
		int codPrograma=Integer.parseInt(request.getParameter("codPrograma"));
		Programa p=new Programa ();
		u.setProgramaBean(p);
		
		UsuarioDao uDao = new UsuarioDao();
		
		uDao.insert(u);
	    response.sendRedirect("");
	}

}
