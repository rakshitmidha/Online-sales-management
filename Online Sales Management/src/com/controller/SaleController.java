package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.dao;

public class SaleController extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		dao d = new dao();
		int i =0;	
		response.setContentType("html/text");
		String source = request.getParameter("source");
		
		
		System.out.println(request.getParameter("user"));
		if(source.equals("login")){
			String user = request.getParameter("user");
			String pass = request.getParameter("pass");
			if(user.equals("test") && pass.equals("test")){
				response.sendRedirect("index.html");
			}
			else
			{request.setAttribute("message", "Invalid User/Password"); // Will be available as ${message}
			request.getRequestDispatcher("login.jsp").forward(request,response);
			}
		}
		
		
		
		if(source.equals("add_product")){
			String productName=request.getParameter("product_name");
			String Description=request.getParameter("description");
			String Category=request.getParameter("category");
			int Price=Integer.parseInt(request.getParameter("price"));
			int totalQuantity=Integer.parseInt(request.getParameter("quanitity"));
			String status=request.getParameter("status");
			System.out.println(productName+"  "+Description+"  "+Category+" "+Price+"  "+totalQuantity+"  "+status);
			i = d.add_product(productName, Category, Price, totalQuantity, status);
			
			if(i!=0){
				request.setAttribute("i", i);
				request.getRequestDispatcher("add_product.jsp").forward(request,response);
			
			}
		
	}
		
		
		if(source.equals("add_store")){
			String storeName=request.getParameter("store_name");
			String region= Arrays.toString(request.getParameterValues("region"));
			String status=request.getParameter("status");
			System.out.println(storeName+"  "+region+"  "+status);
			i = d.add_store(storeName, region, status);
			
			if(i!=0){
				request.setAttribute("i", i);
				request.getRequestDispatcher("add_store.jsp").forward(request,response);
			
			}
		
	}
		
		if(source.equals("add_employee")){
			
			System.out.println("inside add employee");
			String name=request.getParameter("name");
			int age=Integer.parseInt(request.getParameter("age"));
			String role=request.getParameter("role");
			long phone=Long.parseLong(request.getParameter("phone"));
			String gender=request.getParameter("gender");
			String address=request.getParameter("address");
			System.out.println(name+"  "+age+"  "+role+"  "+phone+" "+gender+"  "+address);
			i = d.add_employee(name, age, role, phone, gender, address);
			if(i!=0){
				request.setAttribute("i", i);
				request.getRequestDispatcher("add_employee.jsp").forward(request,response);
			
			}
		}
		
		if(source.equals("queries")){
			
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String message=request.getParameter("message");
			System.out.println(name+"  "+email+"  "+message);
			d.add_queries(name, email, message);
			response.sendRedirect("thankyou.html");
		}
		
		
if(source.equals("delete_store")){
			
			String id=request.getParameter("store_id");
			d.delete_store(id);
			response.sendRedirect("view_store.jsp");
		}
		
		}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
