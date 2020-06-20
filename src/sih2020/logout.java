package sih2020;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class logout extends HttpServlet {
	HttpSession session = null;
	

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	session = request.getSession(false);
    	if(session != null){
    		
            session.invalidate();
    	
        }        response.sendRedirect(request.getContextPath() + "/a.jsp");
    }

}