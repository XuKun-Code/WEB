package jizhang;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jizhang.qianbao;
import zhuce.User;
import jizhang.jihua;
import java.sql.*;
/**
 * Servlet implementation class UpdatejhServlet
 */
@WebServlet("/UpdatejhServlet")
public class UpdatejhServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatejhServlet() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		int number=Integer.valueOf(request.getParameter("number"));
		String shifou=String.valueOf(request.getParameter("shifou"));
		
	//	HttpSession session=request.getSession();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/test";
			String username="root";
			String password="admin";
		
			Connection conn =DriverManager.getConnection(url,username,password);
			
		
			String sql="update test4 set shifou=? where number=?";
	
			PreparedStatement ps=conn.prepareStatement(sql);
		
			ps.setString(1, shifou);
			
			ps.setInt(2, number);
		
			ps.executeUpdate();
			ps.close();
			conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
	response.sendRedirect("FindjhServlet");
	}

		
		
		
	

}
