package zhuce;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
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

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String repassword=request.getParameter("repassword");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
	    String tel=request.getParameter("tel");
	    String qq=request.getParameter("qq");
		UserDao userDao=new UserDao();
		if(username!=null&&!username.isEmpty()&& password.equals(repassword)){
			if(userDao.userlsExist(username)){
				User user=new User();
				user.setUsername(username);
				user.setPassword(password);
				
				user.setName(name);
				user.setSex(sex);
				user.setTel(tel);
				user.setQq(qq);
				userDao.saveUser(user);
				request.setAttribute("info","恭喜你，注册成功！ <br>");
				request.getRequestDispatcher("zhuce_success.jsp").forward(request, response);
			}
			else{
				request.setAttribute("info", "错误：这个用户已经存在 ！<br>");
			
			}
		}
		request.getRequestDispatcher("message.jsp").forward(request, response);
		
	}

}
