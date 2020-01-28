<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<% 


try{
	  		int amount1=0,amount2=0;
			String accno=request.getParameter("accno");      
   	        String amount=request.getParameter("amount");
			String type=request.getParameter("type");

			String user=(String)application.getAttribute("user");
			
			String sql="SELECT * FROM account where user='"+user+"' and acc_no='"+accno+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
					amount1=Integer.parseInt(rs.getString(8));
					
					
					
			
			    int amount3=Integer.parseInt(amount);
				
				
				amount2=amount3+amount1;
				
				String amt=String.valueOf(amount2);
				
				String sql1="update account set amount='"+amt+"' where acc_no='"+accno+"' ";
				Statement stmt1 = connection.createStatement();
				stmt1.executeUpdate(sql1);
		
		out.print("Money Added Successfully");
		
		if(type.equalsIgnoreCase("one"))
			{
			  %><p align="left"><a href="u_account.jsp" class="style4">Back</a></p><%
			}
            else if(type.equalsIgnoreCase("two"))
			{
			%><p align="left"><a href="u_search_pro.jsp" class="style4">Back</a></p><%
			}
		
		     
			 }
			 else
			 {
			  %> Wrong Account Number <%
			  
			  if(type.equalsIgnoreCase("one"))
			{
			  %><p align="left"><a href="u_account.jsp" class="style4">Back</a></p><%
			}
            else if(type.equalsIgnoreCase("two"))
			{
			%><p align="left"><a href="u_search_pro.jsp" class="style4">Back</a></p><%
			}
			  
			 }
			
		connection.close();
		
}
		
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
</p>
