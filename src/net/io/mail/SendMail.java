package net.io.mail;

import java.io.IOException;
import net.io.mail.Mailer;
import java.io.PrintWriter; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SendMail
 */
@WebServlet("/SendMail")
public class SendMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session= request.getSession();
		
		 PrintWriter out = response.getWriter();  
	    out.println("dfjhadfk");  
	    /*
		    //String to=(String) session.getAttribute("email"); 
	    String to="swatipandey1999@gmail.com";
		    String subject="OTP generated";  
		   // String msg=(String) session.getAttribute("otp");  
		    String msg="otp";
		    
		    out.println(to+" "+subject+" "+msg);
		          
		    //Mailer.send(to, subject, msg);  
		    out.print("message has been sent successfully");  
		    out.close();  
		  */  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
