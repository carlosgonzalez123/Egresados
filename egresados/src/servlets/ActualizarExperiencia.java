package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ExperienciaDao;
import egresados.Egresado;
import egresados.Experiencia;

/**
 * Servlet implementation class ActualizarExperiencia
 */
@WebServlet("/ActualizarExperiencia")
public class ActualizarExperiencia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizarExperiencia() {
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
		Experiencia ex = new Experiencia();
		ExperienciaDao exDao = new ExperienciaDao();
		
		HttpSession sesion = null;
		
		Egresado e = new Egresado();
		e.setId(Integer.parseInt((String) sesion.getAttribute("id")));
		ex.setDescripcion("Venta de nenas v3");
		ex.setFunciones("Publicidad");
		ex.setPeriodoinicio("2017");
		ex.setPeriodofin("2019");
		ex.setEgresadoBean(e);
		ex.setId(Integer.parseInt(request.getParameter("id")));
		exDao.update(ex);
	}

}
