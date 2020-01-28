<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View My Bank Account</title>
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
.style15 {font-family: "Times New Roman", Times, serif; font-size: 18px; }
.style16 {color: #000000; font-family: "Times New Roman", Times, serif; font-size: 18px; }
.style17 {color: #0000FF}
.style18 {font-size: 18px}
.style19 {color: #000000}
.style20 {color: #FF00FF}
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
          <h2 align="center"> View My Bank Account </span></h2>
		  <p>&nbsp;</p>
		  
		  
<table width="315" border="2" align="center"  cellpadding="0" cellspacing="0"  >
                       
<%@ include file="connect.jsp" %>
 <%@ page import="java.sql.*"%>						
                        <%
						
						String user=(String )application.getAttribute("user");
						
						String i,s1,s2,s3,s4,s5,s6;
						int j=0;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(2);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
								
								
								
								
					%>
                        <tr>
                          <td  width="145" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style21 style14 style15 style16 style17 style18" style="margin-left:20px;"><strong>Account Number </strong></div></td>
                          <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style10 style3 style18 style19" style="margin-left:20px;">
                              <%out.println(i);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style21 style14 style15 style16 style17 style18" style="margin-left:20px;"><strong>User Name </strong></div></td>
                          <td  width="164" valign="middle" height="40"><div align="left" class="style23 style10 style3 style18 style19" style="margin-left:20px;">
                              <%out.println(s1);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style21 style14 style15 style16 style17 style18" style="margin-left:20px;"><strong>Location</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style10 style3 style18 style19" style="margin-left:20px;">
                              <%out.println(s2);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style21 style14 style15 style16 style17 style18" style="margin-left:20px;"><strong>Email</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style10 style3 style18 style19" style="margin-left:20px;">
                              <%out.println(s3);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style21 style14 style15 style16 style17 style18" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                          <td align="left" valign="middle" height="51"><div align="left" class="style23 style10 style3 style18 style19" style="margin-left:20px;">
                              <%out.println(s4);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style21 style14 style15 style16 style17 style18" style="margin-left:20px;"><strong>Branch</strong></div></td>
                          <td align="left" valign="middle" height="51"><div align="left" class="style23 style10 style3 style18 style19" style="margin-left:20px;">
                              <%out.println(s5);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td   width="145" height="51" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style21 style14 style15 style16 style17 style18" style="margin-left:20px;"><strong>Amount</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                              <div align="left" class="style23 style10 style3 style18 style19" style="margin-left:20px;">
                                <span class="style20"><%out.println(s6);%></span> </div></td>
                        </tr>
						
						
                        <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
  </table>		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
                      <p align="right"><a href="u_account.jsp" class="style3 style9">Back</a></p>
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
