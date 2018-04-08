package jizhang;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import jizhang.qianbao;
import zhuce.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FindqbServlet
 */
@WebServlet("/FindqbServlet")
public class FindqbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindqbServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		HttpSession session=request.getSession();

		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/test";
			String username="root";
			String password="admin";
		
			Connection conn =DriverManager.getConnection(url,username,password);
			Statement stmt=conn.createStatement();
			String user = (String) session.getAttribute("user");
			String sql="select*from test3 where username ="+"\""+user+"\"";
			

	
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			List<qianbao> list=new ArrayList<qianbao>();
			while(rs.next()){
				qianbao qb=new qianbao();
				qb.setNumber(rs.getInt("number"));
				qb.setAllmoney(rs.getDouble("allmoney"));
				qb.setXianjin(rs.getDouble("xianjin"));
				qb.setZhifubao(rs.getDouble("zhifubao"));
				qb.setYinhangka(rs.getDouble("yinhangka"));
				qb.setUsername(rs.getString("username"));
				qb.setTime(rs.getString("time"));
				
				list.add(qb);
			}
			request.setAttribute("list", list);
			rs.close();
			stmt.close();
			conn.close();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		request.getRequestDispatcher("qbshow.jsp").forward(request, response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
