package zhuce;
import java.sql.*;
import java.util.Date;

public class UserDao {
	

public boolean userlsExist(String username){
	Connection conn= DataBaseUtil.getConnection();
	String sql="select*from test1 where username=?";
	try{
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, username);
		ResultSet rs=ps.executeQuery();
		if(!rs.next()){
			return true;
		}
		rs.close();
		ps.close();
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		DataBaseUtil.closeConnection(conn);
	}
return false;
}
public void saveUser(User user){
	Connection conn=DataBaseUtil.getConnection();
	String sql="insert into test1(username,password,name,sex,tel,qq) values(?,?,?,?,?,?)";
	try{
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		ps.setString(3,user.getName() );
		ps.setString(4, user.getSex());
		ps.setString(5, user.getTel());
		ps.setString(6, user.getQq());
		ps.executeUpdate();
		ps.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
		DataBaseUtil.closeConnection(conn);
	}
}
public User login(String username,String password){
	User user=null;
	Connection conn=DataBaseUtil.getConnection();
	String sql="select*from test1 where username=? and password=?";
	try{
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,username);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
	user=new User();
	user.setId(rs.getInt("id"));
	user.setUsername(rs.getString("username"));
	user.setPassword(rs.getString("password"));
	user.setName(rs.getString("name"));
	user.setSex(rs.getString("sex"));
	user.setTel(rs.getString("tel"));
	user.setQq(rs.getString("qq"));
		}
		rs.close();
		ps.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
			DataBaseUtil.closeConnection(conn);
	}
	return user;
}
}
