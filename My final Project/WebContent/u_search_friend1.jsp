<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searched Friend Details</title>
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
.style9 {font-size: 15px}
.style17 {font-size: 20px}
.style18 {color: #0000FF}
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
          <h2 align="center">  Friend Details </span></h2>
		  <p>&nbsp;</p>
		  
		  
<table width="515" border="1.5" align="center"  cellpadding="0" cellspacing="0">
		  
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
    String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17;
	int i = 0, j = 0, k = 0;
    String friend=request.getParameter("user");
	String user=(String)application.getAttribute("user");

try
{
                    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
					
					String sql="select * from user where name='"+friend+"' ";
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(sql);
					if(rs.next())
					{
										
                                                i = rs.getInt(1);
                                                s2 = rs.getString(2);//uploader(seller)
                                                s3 = rs.getString(3);//pname
                                                s4 = rs.getString(4);//pcat
                                                s5 = rs.getString(5);//pman
                                                s6 = rs.getString(6);//price
                                                s7 = rs.getString(7);//uses
												s8 = rs.getString(8);//uploader
												s9 = rs.getString(9);//desc
												s10 = rs.getString(10);//img
												s11 = rs.getString(11);//dt
												s12 = rs.getString(12);//rk
												s13 = rs.getString(13);//rk
				
				
				                            /*  String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   
						                        String decrys3 = new String(Base64.decode(s3.getBytes()));
											*/	
												
										
										
										
										%>
										
	
										
		<tr>
		  <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong>User Image</strong></div></td>
          <td width="116" rowspan="1" ><div class="style7 style3 style9" style="margin:10px 13px 10px 13px;">
		  <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;">
          </div></td>
        </tr>
		
        <tr>
          <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong>User Name</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s2);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong>Email</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s4);%>
          </div></td>
        </tr>
			
        
		
        <tr>
          <td  width="139" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong>Address</strong></div></td>
          <td  width="252" valign="middle" height="40"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <textarea name="textarea" cols="25" rows="7" readonly><%= s6 %></textarea>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong> Mobile </strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s5);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong> Date of Birth</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s7);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong> Gender </strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s8);%>
          </div></td>
        </tr>
		
	   <tr>
        <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong> Pincode </strong></div></td>
        <td width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s9);%>
          </div></td>
       </tr>
	   
	   <tr>
        <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong> Location </strong></div></td>
        <td width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s10);%>
          </div></td>
       </tr>
	   
	   <tr>
        <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong> Status </strong></div></td>
        <td width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s12);%>
          </div></td>
       </tr>
	   
	   <tr>
        <td  width="139" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style20 style4 style6 style5 style15 style16 style11 style3 style9 style18" style="margin-left:20px;"><strong> Account Type </strong></div></td>
        <td width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style6 style4 style16 style3 style9" style="margin-left:20px;">
            <%out.println(s13);%>
          </div></td>
       </tr>
		
	<%
	  
	                String sql9="select * from friend_req where (rfrom='"+user+"' and rto='"+friend+"') || (rfrom='"+friend+"' and rto='"+user+"') ";
					Statement st9=connection.createStatement();
					ResultSet rs9=st9.executeQuery(sql9);
					if(rs9.next())
					{
					 s4 = rs9.getString(4);//satatus
					 if(s4.equalsIgnoreCase("Requested"))
						{
		   %>
		    
        <tr>
		  <td height="35"></td>
		  <td align="center" bgcolor="#FF00FF"><div class="style15 style18 style11 style3 style17"> Friend Request Sent(Wait..!)</div></td>
		</tr>
		
            <%
						}
					else if(s4.equalsIgnoreCase("Friends"))
						{
			%> 
            <tr>
		       <td height="35"></td>
		       <td align="center" bgcolor="#FF00FF"><div class="style15 style18 style11 style3 style17"> You Both Are Friends</div></td>
		  </tr>
            <%
						}
					}
					else
					{
	  
	%>
		
		<tr>
		  <td height="35"></td>
		  <td align="center" bgcolor="#FF00FF"><a href="u_send_req.jsp?friend=<%=s2%>" class="style15 style17 style18 style11 style9">Send Friend Request</a></td>
		</tr>
<%
                     }
					 		
}
}
catch(Exception e) 
{
out.print(e);
}

%>
		

		</table>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
                      <p align="right"><a href="u_search_friend.jsp" class="style3 style9">Back</a></p>
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
