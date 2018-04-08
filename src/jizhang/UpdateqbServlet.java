package jizhang;
import java.io.IOException;
import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jizhang.qianbao;
import zhuce.User;
/**
 * Servlet implementation class UpdateqbServlet
 */
@WebServlet("/UpdateqbServlet")
public class UpdateqbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateqbServlet() {
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
		double xianjin=Double.valueOf(request.getParameter("xianjin"));
		double zhifubao=Double.valueOf(request.getParameter("zhifubao"));
		double yinhangka=Double.valueOf(request.getParameter("yinhangka"));
		double allMoney = xianjin+zhifubao+yinhangka;
	//	HttpSession session=request.getSession();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/test";
			String username="root";
			String password="admin";
		
			Connection conn =DriverManager.getConnection(url,username,password);
			
		
			String sql="update test3 set allmoney=? ,xianjin=? ,zhifubao=? ,yinhangka=? where number=?";
	
			PreparedStatement ps=conn.prepareStatement(sql);
		
			ps.setDouble(1, allMoney);
			ps.setDouble(2, xianjin);	
			ps.setDouble(3, zhifubao);
			ps.setDouble(4, yinhangka);
			ps.setInt(5, number);
			System.out.println(allMoney);
			ps.executeUpdate();
			ps.close();
			conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
	response.sendRedirect("FindqbServlet");
	}

}
