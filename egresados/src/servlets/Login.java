package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsuarioDao;
import egresados.Usuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String usuario=request.getParameter("user");
		String clave=request.getParameter("pass");
		UsuarioDao uDao=new UsuarioDao();
		
	    try {
	    	Usuario u = (Usuario) uDao.getEm().createQuery("SELECT u FROM Usuario u WHERE u.email='"+usuario+"' and u.clave='"+clave+"'").getSingleResult();
	        if(!u.getNombre().equals("")) {
	        	  RequestDispatcher rd=request.getRequestDispatcher("perfilegresado.html");
	        	  response.getWriter().append("DONE").append(request.getContextPath());
	        	  HttpSession session = request.getSession();
	        	    String username = (String)request.getAttribute("un");
	        	    session.setAttribute("usuario", u);
	        }
	    } catch(Exception e) {
	    	System.out.println("Error");
	    	response.getWriter().append("ERROR").append(request.getContextPath());
	    }
	
	}

}
