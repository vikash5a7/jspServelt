<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
 	<%
  		
   	try {
		   
			int i = 0, j = 0, k = 0,n = 0,n1 = 0;
			
			String user=request.getParameter("user");
			String fname=request.getParameter("fname");
			String ip = request.getRemoteHost();
			
			        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
			
			String str2 = "Spam Account";
       		Statement st1 = connection.createStatement();
			String query313 ="insert into blocked_seller(user,ip,dt) values('"+user+"','"+ip+"','"+dt+"')";
			st1.executeUpdate (query313);
			
       		
			
			String query3 ="update seller set acc_type='"+str2+"' where name='"+user+"' ";
	   		st1.executeUpdate (query3);
			
			
				String query2 = "delete from products where fname='"+fname+"' ";				
				int x=st1.executeUpdate(query2);
                if(x>0) {
				         
						 %><p align="left">Seller Blocked Successfully</p>
						   <p align="left"><a href="a_mal_sellers1.jsp">Back</a></p>
						 <%
						 
						 
						 //response.sendRedirect("a_mal_sellers1.jsp");  
						}
				
				    			
			
			
			connection.close();
			
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
