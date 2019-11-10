

import java.io.IOException;



import java.sql.*;
import java.util.*;
import java.io.PrintWriter;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
	 * @se HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		PrintWriter out =response.getWriter();
		
		
		String un = request.getParameter("email");
        String pw = request.getParameter("password");
        //out.println(un);

// Connect to mysql(mariadb) and verify username password

        try {
            Class.forName("com.mysql.jdbc.Driver");
// loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", ""); // gets a new connection
            
            Statement st=c.createStatement();
            
            String q="select email,password from signup where email='"+un+"' and password='"+pw+"'";
            
            //st.setString(1, un);
            //st.setString(2, pw);

            ResultSet rs = st.executeQuery(q);

            while (rs.next()) {
            	//out.println(rs.getString("email"));
            	HttpSession session= request.getSession();
                session.setAttribute("email", un);
                session.setAttribute("password", pw);

             
                response.sendRedirect("home.jsp");
                return;
            }
            out.println("no");
            response.sendRedirect("login.jsp");
            return;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
		
	}

}
