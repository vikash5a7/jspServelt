<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Account Registration status</title>

<%@ include file="connect.jsp"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.oreilly.servlet.*"%>
<%
			       
									
					
try {
						
						String uname=(String)application.getAttribute("user");
						String accno=request.getParameter("accno");
						String branch=request.getParameter("branch");
						String email=request.getParameter("email");
						String mno=request.getParameter("mobile");
						String loc=request.getParameter("location");
						String amount=request.getParameter("amount");
						
						
			 			String query1="select * from account  where acc_no='"+accno+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
</p>
</p>
<p class="style6">Account Number Already Exist</p>
<p class="style5">&nbsp;</p>
<%
							
							
				%>
<p align="left">
	<a href="u_create_acc.jsp" class="style5 style14">Back</a>
</p>
<%
				
					   }
					   else
					   {
					   
					
PreparedStatement ps=connection.prepareStatement("insert into account(acc_no,user,location,email,mob,branch,amount) values(?,?,?,?,?,?,?)");
						ps.setString(1,accno);
						ps.setString(2,uname);
						ps.setString(3,loc);
						ps.setString(4,email);	
						ps.setString(5,mno);
						ps.setString(6,branch);
						ps.setString(7,amount);
					
						
				       
						
											
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
<p class="style6">Account Created Successfully</p>
<p>&nbsp;</p>
<p>
	<%	
							
			%>
</p>
<p align="left">
	<a href="u_account.jsp" class="style16">Back</a>
</p>
<%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>