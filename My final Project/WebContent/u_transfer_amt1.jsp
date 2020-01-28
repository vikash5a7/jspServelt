<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Transfer Amount Status</title>
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
.style3 {font-family: "Times New Roman", Times, serif}
.style9 {
	font-size: 20px;
	color: #FF0000;
}
.style11 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #FF0000;
}
.style13 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style14 {color: #0000FF}
.style15 {font-family: "Times New Roman", Times, serif; font-size: 15px; }
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
          <h2 align="center"> Transfer Amount Status </span></h2>
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
			int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0,add=0,rk=0,famt=0;
			int accno=0;
  			String s1,s2,s3,s4,s5,s6,s7,s8;
			String rto=request.getParameter("frnd");
			String amt2=request.getParameter("amt");
			
			int amt=Integer.parseInt(amt2);
			
			String user=(String)application.getAttribute("user");
			
			String ip = request.getRemoteHost();
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;		  
		    
			        String query62="select * from user_acc_limit_transfer where rto='"+rto+"' and user='"+user+"' "; 
					Statement st62=connection.createStatement();
					ResultSet rs62=st62.executeQuery(query62);
					 if ( rs62.next()!=true )//1
					 { 
					      String count1="0";
						  String strQuery122 = "insert into user_acc_limit_transfer(user,rto,count) values('"+user+"','"+rto+"','"+count1+"')";
						  connection.createStatement().executeUpdate(strQuery122);
					 }
			
			
			Statement stmt = connection.createStatement();
			String sql="SELECT * FROM account where user='"+user+"' ";
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{  
			   uamount=Integer.parseInt(rs.getString(8));
			   
			   
			   
			   
			               if(amt>uamount)
						   {
						   
						   
						   
					String query1="select * from access_limit "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					if ( rs1.next()==true )//1
					{ 
					  s7 =rs1.getString(3);//count
					  int k1=Integer.parseInt(s7);
					
					String query2="select * from user_acc_limit_transfer where (user='"+user+"' and rto='"+rto+"') "; //where to='"+rto+"' and user='"+user+"' "; 
					Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery(query2);
					 if ( rs2.next()==true )//1
					 { 
					  s6 =rs2.getString(4);//count
					  int k2=Integer.parseInt(s6);
					  
					  if(k2>=k1)
					  {
					    Statement st31 = connection.createStatement();
					    String query31 ="update user set acc_type='Malicious' where name='"+user+"' ";
					    st31.executeUpdate (query31);
						
						String task="Amount Transfer";
						Statement st313 = connection.createStatement();
					    String query313 ="insert into blocked_user(user,pname,ip,task,dt) values('"+user+"','"+rto+"','"+ip+"','"+task+"','"+dt+"')";
					    st313.executeUpdate (query313);
						
    %>
			<p align="center" class="style21 style3 style9">You are Blocked for Crossing the Access Limit !!!</p> 
			</b>
			<p align="right"><a href="u_login.jsp" class="style6 style7">Back</a></p>
	<%
					  }
					  if(k2<k1)
		              {
					    String query72="select * from user_acc_limit_transfer where rto='"+rto+"' and user='"+user+"' "; 
					    Statement st72=connection.createStatement();
					    ResultSet rs72=st72.executeQuery(query72);
					    if ( rs72.next()==true )//1
					    {
						  s8 =rs72.getString(4);//count
						  int count=Integer.parseInt(s8)+1;
						
					    Statement st32 = connection.createStatement();
					    String query32 ="update user_acc_limit_transfer set count="+count+" where rto='"+rto+"' and user='"+user+"' ";
					    st32.executeUpdate (query32);
						}
						else
					    {
						  String count1="1";
						  String strQuery122 = "insert into user_acc_limit_transfer(user,rto,count) values('"+user+"','"+rto+"','"+count1+"')";
						  connection.createStatement().executeUpdate(strQuery122);
						}
						
						        %> 
                    <span class="style11">You Cannot Transfer Amount!!! Your Account Balance is Low.</span></p>
	                <p>
                   <span class="style11">Please Add Money to Your Account, Otherwise You Will Be Blocked.</span></p>
	        <p> 
	          
	          <span class="style13 style3 style2"> Insufficiant Amount !!! <br /> 
               Still need <%= (amt-uamount)%> </span> 
	          
          </p>
	        <p><a href="u_add_money.jsp?type=<%="three"%>">ADD AMOUNT</a></p>
						
						
		  <p align="right"><a href="u_transfer_amt.jsp" class="style5">Back </a></p>
                        <%
						
					  }
					  
					 }
				    } 
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
											



						   }
						   else
						   {
						      String query1="select * from account  where user='"+rto+"' "; 
						      Statement st1=connection.createStatement();
						      ResultSet rs1=st1.executeQuery(query1);
					          if ( rs1.next() )
					          {
							    famt=Integer.parseInt(rs1.getString(8));
						   
						   
						    PreparedStatement ps1=connection.prepareStatement("insert into transfered(user,rto,amt,dt) values(?,?,?,?)");
														ps1.setString(1,user);
														ps1.setString(2,rto);
														ps1.setString(3,amt2);
														ps1.setString(4,dt);
														
														int x=ps1.executeUpdate();
														if(x>0) //continue from here
														{
														   
												sub=uamount-amt;
												String leftamount=String.valueOf(sub);
												
												String sql22="Update account set amount='"+leftamount+"'  where user='"+user+"' ";
												Statement stmt22 = connection.createStatement();
												stmt22.executeUpdate(sql22);
												
												add=famt+amt;
												String newamount=String.valueOf(add);
												
												
												String sql222="Update account set amount='"+newamount+"'  where user='"+rto+"' ";
												Statement stmt222 = connection.createStatement();
												stmt222.executeUpdate(sql222);
													 
													 
%>
     <p align="center" class="style16 style4 style13 style14">You Have Successfully Transfered Amount to Your Friend</p>
     <p>&nbsp;</p>
     <p align="right"><a href="u_transfer_amt.jsp" class="style5">Back </a></p>
     <br />
<%
														   }
								}
								else
								{
								
%>
     <p align="center" class="style16 style4 style13 style2">You Cannot Transfer!!! </p>
     <p align="center" class="style16 style4 style13 style2">Your Friend Do Not Have Account.</p>
     <p>&nbsp;</p>
     <p align="right"><a href="u_transfer_amt.jsp" class="style5">Back </a></p>
     <br />
<%								
								}
														
						   }
			                    
			
			}
			
			else
			{
	          
%>
     <p align="center" class="style16 style17 style3 style9">Account Not Found. Please Create Account First.</p>
     <p align="right"><a href="u_transfer_amt.jsp" class="style15">Back </a></p>
     <br />
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
