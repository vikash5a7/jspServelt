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
			
			String str = "Friends",str2 = "Normal";
       		Statement st1 = connection.createStatement();
       		String query1 ="update friend_req set status='"+str+"',res_dt='"+dt+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			
			
			
		%>
 	<style type="text/css">
<!--
.style1 {
	font-family: "Times New Roman", Times, serif;
	font-size: medium;
	color: #0000FF;
}
-->
    </style>
 	
		<p class="style1">Friend Request Accepted</p>
		<p class="style1">You Both Are Friends Now</p>
		<p><a href="u_friend_req.jsp">Back</a></p>
		<%	
				
				
				    			
			
			
		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
