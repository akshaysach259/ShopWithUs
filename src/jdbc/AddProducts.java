package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jdbc.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddProducts")
public class AddProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddProducts() {
        super();
        // TODO Auto-generated constructor stub
    }
	
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	 
		
			Connection conn;
			try {
				conn = ConnectionProvider.getConn();
			
			String pName = request.getParameter("pName");
    		String pPrice = request.getParameter("pPrice");
    		String pDiscription = request.getParameter("pDiscription");
			String pCategories = request.getParameter("pCategories");
    		String pSize = request.getParameter("pSize");
    		String pImage = request.getParameter("pImage");
    		
    		String sql = "insert into products(pName,pPrice,pDiscription,pCategories,pSize,pImage) values (?,?,?,?,?,?)";
    		
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, pName);
			ps.setString(2, pPrice);
			ps.setString(3, pDiscription);
			ps.setString(4, pCategories);
			ps.setString(5, pSize);
			ps.setString(6, pImage);
			ps.executeUpdate();
						
			request.setAttribute("pName", pName);
			request.setAttribute("pPrice", pPrice);
			request.setAttribute("pDiscription", pDiscription);
			request.setAttribute("pCategories", pCategories);
			request.setAttribute("pSize", pSize);
			request.setAttribute("pImage", pImage);

			request.getRequestDispatcher("Message.jsp").forward(request, response);
			

			
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	
		
		
		
	}

	
	
}
