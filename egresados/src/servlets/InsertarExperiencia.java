package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EgresadoDao;
import dao.ExperienciaDao;
import dao.NivelDao;
import egresados.Egresado;
import egresados.Experiencia;

/**
 * Servlet implementation class InsertarExperiencia
 */
@WebServlet("/InsertarExperiencia")
public class InsertarExperiencia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarExperiencia() {
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
		
		Egresado eg = new Egresado();
		
		
		Experiencia ex = new Experiencia();
		ExperienciaDao exDao = new ExperienciaDao();
		String user = request.getParameter("id");
		
		
		HttpSession sesion = request.getSession();

		Egresado e = new Egresado();
		EgresadoDao egDao= new EgresadoDao();
		e.setId(Integer.parseInt((String) sesion.getAttribute("id")));
		
		
	
		e.setId(Integer.parseInt((String) sesion.getAttribute("id")));
		ex.setDescripcion(request.getParameter("descripcion"));
		ex.setFunciones(request.getParameter("funciones"));
		ex.setPeriodoinicio(request.getParameter("f_inicio"));
		ex.setPeriodofin(request.getParameter("f_final"));
		ex.setEgresadoBean(e);
		
		exDao.insert(ex);
		
		
	}

}
