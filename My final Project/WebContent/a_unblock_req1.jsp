	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
 	<%
  		
   	try {
		   
			int i = 0, j = 0, k = 0,n = 0,n1 = 0;
			String id=request.getParameter("id");
			String user=request.getParameter("user");
			
			        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
			
			String str = "Unblocked",str2 = "Normal";
       		Statement st1 = connection.createStatement();
       		String query1 ="update unblock_req set status='"+str+"',res_dt='"+dt+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			
			                    String sql2="SELECT * FROM user where name='"+user+"' ";
								Statement stmt = connection.createStatement();
								ResultSet rs2 =stmt.executeQuery(sql2);
								if(rs2.next()==true)
								{
			                      String query3 ="update user set acc_type='"+str2+"' where name='"+user+"' ";
	   		                      st1.executeUpdate (query3);
								  
								  String query2 = "delete from blocked_user where user='"+ user + "' ";
				                  int x=st1.executeUpdate(query2);
				                  if(x>0)
				                  {
				                   response.sendRedirect("a_unblock_req.jsp");  
				                  }
								  
			                    }
								
								String sql3="SELECT * FROM seller where name='"+user+"' ";
								Statement stmt3 = connection.createStatement();
								ResultSet rs3 =stmt3.executeQuery(sql3);
								if(rs3.next()==true)
								{
			                      String query3 ="update seller set acc_type='"+str2+"' where name='"+user+"' ";
	   		                      st1.executeUpdate (query3);
								  
								  String query2 = "delete from blocked_seller where user='"+ user + "' ";
				                  int x=st1.executeUpdate(query2);
				                  if(x>0)
				                  {
				                   response.sendRedirect("a_unblock_req.jsp");  
				                  }
			                    }
			
			
			connection.close();
			
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
