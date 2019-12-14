package servlets;

import java.io.IOException;
import egresados.*;
import dao.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Lists
 */
@WebServlet("/Lists")
public class Lists extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lists() {
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
		NivelDao nv= new NivelDao();
		
		Egresado eg = new Egresado();
		EgresadoDao egd = new EgresadoDao();
		Integer id_egresado=2;
		eg=egd.find(id_egresado);
		
		request.setAttribute("niveles_list", nv.list()); 
		request.setAttribute("estduios_list", eg.getEstudios()); 
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/listarEstudios.jsp");
        rd.forward(request, response);
	}

}
