package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import dao.*;
import egresados.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import dao.NivelDao;
import egresados.Usuario;


public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public login() {
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
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
	        	    session.setAttribute("user", u);
	        }
	    } catch(Exception e) {
	    	System.out.println("Error");
	    	response.getWriter().append("ERROR").append(request.getContextPath());
	    }
	}

}
