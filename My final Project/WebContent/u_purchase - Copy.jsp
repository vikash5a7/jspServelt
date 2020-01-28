<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchase Product Status</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {font-size: 23px}
.style2 {color: #FF0000}
.style3 {
	font-family: "Times New Roman", Times, serif;
	color: #FF0000;
	font-size: 20px;
}
.style4 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #0000FF;
}
.style5 {
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
}
.style6 {font-family: "Times New Roman", Times, serif}
.style7 {font-size: 15px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">ProGuard Detecting Malicious<br />Accounts in Social-Network<br />Based Online Promotions</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="a_login.jsp"><span>Bank Admin</span></a></li>
          <li><a href="s_login.jsp"><span>Seller</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>End User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Purchasing Product </span></h2>
		  <p>&nbsp;</p>
		  
            <%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
		  
<%

			   
    try
	{
			int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0,rk=0;
			int accno=0;
  			String s1,s2,s3,s4,s5,s6,s7,s8;
			String pname=request.getParameter("pn");
			
			String user=(String)application.getAttribute("user");
			
			String ip = request.getRemoteHost();
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;		  
		    
			        String query62="select * from user_acc_limit where pname='"+pname+"' and user='"+user+"' "; 
					Statement st62=connection.createStatement();
					ResultSet rs62=st62.executeQuery(query62);
					 if ( rs62.next()!=true )//1
					 {
					      String count1="0";
						  String strQuery122 = "insert into user_acc_limit(user,pname,count) values('"+user+"','"+pname+"','"+count1+"')";
						  connection.createStatement().executeUpdate(strQuery122);
					 }
			
			
			Statement stmt = connection.createStatement();
			String sql="SELECT * FROM account where user='"+user+"' ";
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			   uamount=Integer.parseInt(rs.getString(8));
			   
			   if(uamount==0)
			   { 
			        String query1="select count from access_limit "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					if ( rs1.next()==true )//1
					{
					  s7 =rs1.getString(1);//count
					  int k1=Integer.parseInt(s7);
					
					String query2="select * from user_acc_limit where pname='"+pname+"' and user='"+user+"' "; 
					Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery(query2);
					 if ( rs2.next()==true )//1
					 {
					  s6 =rs2.getString(4);//count
					  int k2=Integer.parseInt(s6);
					  
					  if(k2>k1)
					  {
					    Statement st31 = connection.createStatement();
					    String query31 ="update user set acc_type='Malicious' where name='"+user+"' ";
					    st31.executeUpdate (query31);
						
						String task="Product Purchase";
						Statement st313 = connection.createStatement();
					    String query313 ="insert into blocked_user(user,pname,ip,task,dt) values('"+user+"','"+pname+"','"+ip+"','"+task+"','"+dt+"')";
					    st313.executeUpdate (query313);
						
    %>
			<p align="center" class="style21 style3">You are Blocked for Crossing the Access Limit !!!</p> 
			</b>
			<p align="right"><a href="u_login.jsp" class="style6 style7">Back</a></p>
	<%
					  }
					  if(k2<=k1)
		              {
					    String query72="select * from user_acc_limit where pname='"+pname+"' and user='"+user+"' "; 
					    Statement st72=connection.createStatement();
					    ResultSet rs72=st72.executeQuery(query72);
					    if ( rs72.next()==true )//1
					    {
						  s8 =rs72.getString(4);//count
						  int count=Integer.parseInt(s8)+1;
						
					    Statement st32 = connection.createStatement();
					    String query32 ="update user_acc_limit set count="+count+" where pname='"+pname+"' and user='"+user+"' ";
					    st32.executeUpdate (query32);
						}
						else
					    {
						  String count1="1";
						  String strQuery122 = "insert into user_acc_limit(user,pname,count) values('"+user+"','"+pname+"','"+count1+"')";
						  connection.createStatement().executeUpdate(strQuery122);
						}
						
						        String sql2="SELECT pprice,rank,owname FROM products where pname='"+pname+"' ";
								Statement st52=connection.createStatement();
								ResultSet rs52 =st52.executeQuery(sql2);
								if(rs52.next()==true)
								{
								
								
										
										pprice=Integer.parseInt(rs52.getString(1));
										
										if(pprice>uamount)
										{
											

%>
   <span class="style13 style3"> Insufficiant Amount !!! <br /> Still need <%= (pprice-uamount)%> </span> 
   
     <p><a href="u_add_money.jsp?type=<%="two"%>">ADD AMOUNT</a></p>
	 <p align="right"><a href="u_search_pro.jsp?pn=<%=pname%>" class="style5">Back </a></p>

<%

                                         }
										else
										{
												
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												
												String sql22="Update account set amount='"+leftamount+"'  where user='"+user+"' ";
												Statement stmt22 = connection.createStatement();
												stmt22.executeUpdate(sql22);
												
												
												
												 s5=rs52.getString(3);//owname(seller)    
																									
												PreparedStatement ps1=connection.prepareStatement("insert into buy(pname,user,date,price,seller) values(?,?,?,?,?)");
														ps1.setString(1,pname);
														ps1.setString(2,user);
														ps1.setString(3,dt);
														ps1.setInt(4,pprice);
														ps1.setString(5,s5);
														
														
                                                     int x=ps1.executeUpdate();
													 if(x>0) {
													 
													 String task="Purchased";
													 String strQuery222 = "insert into transaction(user,pname,task,dt) values('"+user+"','"+pname+"','"+task+"','"+dt+"')";
													 connection.createStatement().executeUpdate(strQuery222);
													 
													     rk=Integer.parseInt(rs52.getString(2))+1;
													 
													 String strQuery2 = "update products set rank='"+rk+ "' where pname='"+ pname + "'";
												     connection.createStatement().executeUpdate(strQuery2);
					
					
																   
%>
     <p align="center" class="style16 style4">You Have Successfully Brought this Product</p>
     <p>&nbsp;</p>
     <p align="right"><a href="u_search_pro.jsp?pn=<%=pname%>" class="style5">Back </a></p>
     <br />
<%
															 }
													
																
											}
								
						
									}
						
					  }
					  
					 }
				    }
			   
			   }
			   else//ifamount!=0
			   {
			                    String sql2="SELECT pprice,rank,owname FROM products where pname='"+pname+"' ";
								ResultSet rs2 =stmt.executeQuery(sql2);
								if(rs2.next()==true)
								{
								
										pprice=Integer.parseInt(rs2.getString(1));
										
										if(pprice>uamount)
										{
											

%>
   <span class="style13 style3"> Insufficiant Amount !!! <br /> Still need <%= (pprice-uamount)%> </span> 
   
     <p><a href="u_add_money.jsp?type=<%="two"%>">ADD AMOUNT</a></p>
	 <p align="right"><a href="u_search_pro.jsp?pn=<%=pname%>" class="style5">Back </a></p>

<%

                                         }
										 else
										{
												
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												
												String sql22="Update account set amount='"+leftamount+"'  where user='"+user+"' ";
												Statement stmt22 = connection.createStatement();
												stmt22.executeUpdate(sql22);
												
												
												
												 s5=rs2.getString(3);//owname(seller)    
																									
												PreparedStatement ps1=connection.prepareStatement("insert into buy(pname,user,date,price,seller) values(?,?,?,?,?)");
														ps1.setString(1,pname);
														ps1.setString(2,user);
														ps1.setString(3,dt);
														ps1.setInt(4,pprice);
														ps1.setString(5,s5);
														
														
                                                     int x=ps1.executeUpdate();
													 if(x>0) {
													 
													 String task="Purchased";
													 String strQuery222 = "insert into transaction(user,pname,task,dt) values('"+user+"','"+pname+"','"+task+"','"+dt+"')";
													 connection.createStatement().executeUpdate(strQuery222);
													 
													     rk=Integer.parseInt(rs2.getString(2))+1;
													 
													 String strQuery2 = "update products set rank='"+rk+ "' where pname='"+ pname + "'";
												     connection.createStatement().executeUpdate(strQuery2);
					
					
																   
%>
     <p align="center" class="style16 style4">You Have Successfully Brought this Product</p>
     <p>&nbsp;</p>
     <p align="right"><a href="u_search_pro.jsp?pn=<%=pname%>" class="style5">Back </a></p>
     <br />
<%
															 }
													
																
											}
			   }
			
			}}
			
			else
			{
	          
%>
     <p align="center" class="style16 style17">Account Not Found. Please Create Account First.</p>
     <p><a href="u_search_pro.jsp?pn=<%=pname%>">Back </a></p><br />
	 <p><a href="u_main.jsp">User Main </a></p>
<%				                    		
			
			
			}
			
			
			
			
			
			
			
			
		  
connection.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp"><span>User Main</span></a></li>
            <li><a href="u_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
