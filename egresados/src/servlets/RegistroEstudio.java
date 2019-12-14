package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import egresados.Egresado;
import egresados.Estudio;
import dao.*;
/**
 * Servlet implementation class RegistroEstudio
 */
@WebServlet("/RegistroEstudio")
public class RegistroEstudio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroEstudio() {
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
		
		HttpSession misession;
		misession = request.getSession();
		Integer id_egresado=2;
		//Integer id_egresado= (Integer) misession.getAttribute("id");
		String titulo= request.getParameter("titulo");
		String nivel= request.getParameter("nivel");
		String periodofin= request.getParameter("periodofin");
		String lugar= request.getParameter("lugar");
		Estudio e= new Estudio();
		Egresado eg= new Egresado();
		eg.setId(id_egresado);
		EstudioDao ed= new EstudioDao();
		e.setLugar(lugar);
		e.setPeriodofin(periodofin);
		e.setTitulo(titulo);
		e.setEgresadoBean(eg);
		ed.insert(e);
		response.sendRedirect(request.getContextPath() + "/Lists");
		
	}

}
