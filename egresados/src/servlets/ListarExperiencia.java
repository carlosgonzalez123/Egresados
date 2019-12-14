package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EgresadoDao;
import dao.ExperienciaDao;
import egresados.Egresado;
import egresados.Experiencia;

/**
 * Servlet implementation class ListarExperiencia
 */
@WebServlet("/ListarExperiencia")
public class ListarExperiencia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarExperiencia() {
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
		response.setContentType( "text/html; charset=iso-8859-1" );
		PrintWriter out = response.getWriter();
		
		List<Experiencia> exp =new ArrayList<Experiencia>();
		Experiencia ex = new Experiencia();
		ExperienciaDao exDao = new ExperienciaDao();		
		HttpSession sesion = null;	
		Egresado e = new Egresado();
		EgresadoDao egDao= new EgresadoDao();
		e.setId(Integer.parseInt((String) sesion.getAttribute("id")));
		e = egDao.find(e.getId());
		System.out.print(e.getNombre());
		exp =   e.getExperiencias();
		
		String hola="hola";
		request.setAttribute("exp", exp); 
        request.setAttribute("user", hola); 
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/hola.jsp");
        rd.forward(request, response);
		
	}

}
