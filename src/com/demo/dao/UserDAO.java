/**
 * 
 */
package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.demo.model.UserBean;


/**
 * @author Alankritha
 *
 */
public class UserDAO {
Connection con;
	
	public UserDAO(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dec2016","root","Hardikritha1!");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//	Deleting the users by id's
	public int deleteUser(String id){
		int x = 0;
		try{
			PreparedStatement ps = con.prepareStatement("delete from user where id=?");
			ps.setString(1,id);
			x = ps.executeUpdate();
			
		}catch(Exception e){
			
		}
		return x;
	}
	
	//	Inserting the users by id's
	public int insertUser(UserBean user){
		int x =0;
	try{
			PreparedStatement ps = con.prepareStatement("insert into user(name,password) values(?,?)");
			ps.setString(1,user.getUsername());
			ps.setString(2,user.getPassword());
			 x = ps.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return x;
	}
	
	public int updateInfo(UserBean user){
		int x=0;
		try{
			PreparedStatement ps = con.prepareStatement("update user set name= ? , password = ? where id=?");
			ps.setString(1, user.getUsername());
			ps.setString(2,user.getPassword());
			ps.setInt(3, user.getId());
			 x = ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return x;
	}
	
	
		
}
