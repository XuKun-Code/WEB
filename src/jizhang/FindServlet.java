package jizhang;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import jizhang.jiazhang;
import zhuce.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.websocket.Session;

//import com.sun.crypto.provider.RSACipher;

/**
 * Servlet implementation class FindServlet
 */
@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindServlet() {
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
			String sql="select*from test2 where username ="+"\""+user+"\"";
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			List<jiazhang> list=new ArrayList<jiazhang>();
			
			while(rs.next()){
				jiazhang jz=new jiazhang();
				jz.setNumber(rs.getInt("number"));
				jz.setTime(rs.getString("time"));
				jz.setStyle(rs.getString("style"));
			    jz.setZhifu(rs.getString("zhifu"));
				jz.setMoney(rs.getDouble("money"));
				jz.setRemark(rs.getString("remark"));
				jz.setUsername(rs.getString("username"));
				
				list.add(jz);
			}
			request.setAttribute("list", list);
//			System.out.println(list.get(0).getMoney());
			rs.close();
			stmt.close();
			conn.close();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		request.getRequestDispatcher("zhuye.jsp").forward(request, response);
	

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
