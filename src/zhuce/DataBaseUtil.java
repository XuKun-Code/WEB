package zhuce;
//��װ���ݿ��������ر�
import java.sql.*;
public class DataBaseUtil {
	public static Connection getConnection(){
		Connection conn =null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/test";
			conn =DriverManager.getConnection(url,"root","admin");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	public static void closeConnection (Connection conn){
		if(conn!=null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}

}
