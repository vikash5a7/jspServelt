<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Transfer Amount</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{

var na99=document.s.frnd.value;
if(na99=="--Select--")

{
alert("Please Select Friend Name");
document.s.frnd.focus();
return false;
}

var na3=document.s.amt.value;
if(na3=="")

{
alert("Please Enter Amount");
document.s.amt.focus();
return false;
}

}
</script>

<style type="text/css">
<!--
.style1 {font-size: 23px}
.style2 {color: #FF0000}
.style3 {font-family: "Times New Roman", Times, serif}
.style9 {font-size: 15px}
.style10 {font-size: 18px}
.style11 {color: #0000FF}
.style12 {color: #000000}
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
          <h2 align="center"> Transfer Amount to Your Friend </span></h2>
		  <p>&nbsp;</p>
		  
		  
		  
	  
<form name="s" action="u_transfer_amt1.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
          <table width="603" border="1" align="center" cellspacing="0" cellpadding="10">
            
			<tr>
              <td bgcolor="#00FFFF" class="style4 style10 style11 style12"><div align="left" class="style3 style16 style18">Select Friend :- </div></td>
              <td><select id="s1" name="frnd" class="text" style="width:170px;">
                      <option>--Select--</option>

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


	String uuu=null;
	String uname1 = (String)application.getAttribute("user");
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select name from user where name!='"+uname1+"'";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		String username = rs1.getString(1);
		
		Statement stmt2=connection.createStatement();
		String strQuery2 = "select rfrom,rto from friend_req where ((rfrom ='"+uname1+"' and rto='"+username+"') ||(rfrom ='"+username+"' and rto='"+uname1+"'))and status ='Friends' ";
		ResultSet rs2 = stmt2.executeQuery(strQuery2);
		if(rs2.next())
		{
		
			if(rs2.getString(1).equals(uname1))
			{
				uuu = rs2.getString(2);
			}
			else
			{
				uuu = rs2.getString(1);
			}
%>
                  <option> <%=uuu%></option>
<%
		}
	}
%>
                </select></td>
            </tr>
			
			<tr>
              <td bgcolor="#00FFFF" class="style4 style10 style11 style12"><div align="left" class="style3 style16 style18">Enter Amount :- </div></td>
              <td><input name="amt" type="text" id="tt2" size="20"/></td>
            </tr>
			
			
			
            <tr>
              <td bgcolor="#00FFFF"><div align="center"><span class="style10"><span class="style11"><span class="style12"><span class="style3"><span class="style16"><span class="style18"></span></span></span></span></span></span></div></td>
              <td><input type="submit" name="Submit" value="Transfer Amount" /></td>
            </tr>
          </table>
          </form>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
                      <p align="right"><a href="u_main.jsp" class="style3 style9">Back</a></p>
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
