package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EgresadoDao;
import dao.ProgramaDao;
import egresados.Egresado;
import egresados.Programa;

/**
 * Servlet implementation class RegistrarEgresado
 */
@WebServlet("/RegistrarEgresado")
public class RegistrarEgresado extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarEgresado() {
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
Egresado e = new Egresado();
		
		String clave=request.getParameter("clave");
		e.setClave(clave);
		
		String codigo=request.getParameter("codigo");
		e.setCodigo(codigo);
		
		String email=request.getParameter("email");
		e.setEmail(email);
		
		String nombre=request.getParameter("nombre");
		e.setNombre(nombre);
		
		String perfil=request.getParameter("perfil");
		e.setPerfil(perfil);
		
		String documento=request.getParameter("documento");
		e.setDocumento(documento);
		
		String telefono=request.getParameter("telefono");
		e.setTelefono(telefono);
		
		System.out.println(request.getParameter("codPrograma"));
		
		int codPrograma=Integer.parseInt(request.getParameter("codPrograma"));
		Programa p;
		ProgramaDao pDao=new ProgramaDao();
		p=pDao.find(codPrograma);
		e.setProgramaBean(p);
		
		e.setValidado((byte)0);
		
		
		EgresadoDao eDao = new EgresadoDao();
		eDao.insert(e);
		
		
		
		response.sendRedirect(request.getContextPath()+"/login.jsp");
	}

}
