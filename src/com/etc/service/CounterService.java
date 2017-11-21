package com.etc.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.etc.dao.JDBCConnectionFactory;

public class CounterService {
	public void save(int number){
		Connection conn=JDBCConnectionFactory.getConnection();
		String sql="update counter set number="+number;
		try {
			Statement stmt=conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
	public Integer getNumber(){
		Connection conn=JDBCConnectionFactory.getConnection();
		String sql="select * from counter";
		Integer number=0;
		try {
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				number=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return number;
		
	}
	
	public static void main(String[] args){
		CounterService cs=new CounterService();
		cs.save(0);
		
		System.out.println(cs.getNumber());
		
		
	}
}
