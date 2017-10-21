package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.DbConnection;

public class dao {
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public int add_product(String a,String b,int c,int d,String e){
		int i= 0;boolean f=false;
		try{
			con = DbConnection.getConnection();
		
		ps = con.prepareStatement("INSERT INTO OSM_PRODUCT VALUES(SEQ_PRODUCT.nextval,?,?,?,?,?)");
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setInt(3, c);
		ps.setInt(4, d);
		ps.setString(5, e);
		int a1=ps.executeUpdate();
		if(a1!=0)
		{
			f=true;
		}
		System.out.println(a1);
		ps= con.prepareStatement("SELECT MAX(ID) FROM OSM_PRODUCT");
		rs = ps.executeQuery();
		
		if(rs.next()){
			i = rs.getInt(1);
		}}
		catch(SQLException e1){
			e1.printStackTrace();
		}
		finally{
			DbConnection.closeConnection(con);
			DbConnection.closeStatement(ps);
		}
		return i;
	}

	public int add_store(String storeName, String region, String status) {
		int i= 0;boolean f=false;
		try{
			con = DbConnection.getConnection();
		
		ps = con.prepareStatement("INSERT INTO OSM_STORE VALUES(SEQ_STORE.nextval,?,?,?)");
		ps.setString(1, storeName);
		ps.setString(2, region);
		ps.setString(3, status);
		int a1=ps.executeUpdate();
		if(a1!=0)
		{
			f=true;
		}
		System.out.println(a1);
		ps= con.prepareStatement("SELECT MAX(ID) FROM OSM_STORE");
		rs = ps.executeQuery();
		
		if(rs.next()){
			i = rs.getInt(1);
		}}
		catch(SQLException e1){
			e1.printStackTrace();
		}
		finally{
			DbConnection.closeConnection(con);
			DbConnection.closeStatement(ps);
		}
		return i;
	}
	
	
	
	public int add_employee(String name,int age,String role,long phone,String gender,String address){
		int i= 0;boolean f=false;
		try{
			con = DbConnection.getConnection();
		
		ps = con.prepareStatement("INSERT INTO OSM_EMPLOYEE VALUES(SEQ_EMPLOYEE.nextval,?,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setInt(2, age);
		ps.setString(3, role);
		ps.setLong(4, phone);
		ps.setString(5,gender);
		ps.setString(6,address);
		int a1 = ps.executeUpdate();
		if(a1!=0)
		{
			f=true;
		}
		System.out.println(a1);
		ps= con.prepareStatement("SELECT MAX(ID) FROM OSM_EMPLOYEE");
		rs = ps.executeQuery();
		
		if(rs.next()){
			i = rs.getInt(1);
		}}
		catch(SQLException e1){
			e1.printStackTrace();
		}
		finally{
			DbConnection.closeConnection(con);
			DbConnection.closeStatement(ps);
		}
		return i;
}
	public void add_queries(String name ,String email,String message){
		try{
			con = DbConnection.getConnection();
		
		ps = con.prepareStatement("INSERT INTO OSM_QUERIES VALUES(?,?,?)");
		ps.setString(1, name);
		ps.setString(2, email);
		
		ps.setString(3,message );
		ps.executeUpdate();
		System.out.println("Query added to database");
	}
		catch(SQLException e1){
			e1.printStackTrace();
		}
		finally{
			DbConnection.closeConnection(con);
			DbConnection.closeStatement(ps);
		}
		
		
	}

	public void delete_store(String id) {
		con = DbConnection.getConnection();
		String query = "DELETE FROM OSM_STORE WHERE ID ="+id;
		try {
			ps = con.prepareStatement(query);
			int i= ps.executeUpdate();
			if(i>0){
			System.out.println("Store Deleted with id"+id);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Please enter a Valid Store number");
		}
		
		
	}
	

}
