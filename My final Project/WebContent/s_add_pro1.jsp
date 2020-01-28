<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Product</title>
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
var na111=document.s.pic.value;
if(na111=="")

{
alert("please Select Picture");
document.s.pic.focus();
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
.style10 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	color: #000000;
}
.style11 {
	color: #000000;
	font-family: "Times New Roman", Times, serif;
	font-size: 18px;
}
.style12 {color: #000000}
.style16 {font-size: 18px}
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
          <li class="active"><a href="s_login.jsp"><span>Seller</span></a></li>
          <li><a href="u_login.jsp"><span>End User</span></a></li>
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
          <h2 align="center"> Add Product </span></h2>
		  <p>&nbsp;</p>

<%
      		String pcat=request.getParameter("pcat");
			String pname=request.getParameter("pname");
      		String pman=request.getParameter("pman");
      		String pprice=request.getParameter("pprice");
			String puses=request.getParameter("puses");
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
		  
%>		  
		  
		  
	  
<form name="s" action="s_add_pro2.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">   
          <table width="603" border="1" align="center" cellspacing="0" cellpadding="10">
            
			<tr>
              <td bgcolor="#00FFFF" class="style4 style10 style11 style12"><div align="left" class="style3 style16 style18">Product Category :- </div></td>
              <td><input name="pcat" type="text" id="tt2" size="48" value="<%=pcat%>"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#00FFFF" class="style4 style10 style11 style12"><div align="left" class="style3 style16 style18">Product Name :- </div></td>
              <td><input name="pname" type="text" id="tt2" size="48" value="<%=pname%>"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#00FFFF" class="style4 style10 style11 style12"><div align="left" class="style3 style16 style18">Product Manufacturer :- </div></td>
              <td><input name="pman" type="text" id="tt2" size="48" value="<%=pman%>"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#00FFFF" class="style4 style10 style11 style12"><div align="left" class="style3 style16 style18">Product Price. :- </div></td>
              <td><input name="pprice" type="text" id="tt2" size="48" value="<%=pprice%>"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#00FFFF" class="style4 style10 style11 style12"><div align="left" class="style3 style16 style18">Product Uses :- </div></td>
              <td><textarea name="puses" cols="50" rows="5" id="address" ><%=puses%></textarea></td>
            </tr>
			
			
			
			
            <tr>
              <td bgcolor="#00FFFF" class="style4 style10 style11 style12"><div align="left" class="style3 style16 style18">File Name :- </div></td>
              <td><input name="tt" type="text" id="tt" size="48" value="<%=file%>"/></td>
            </tr>
            
			
            <tr>
             <td bgcolor="#00FFFF"><div align="left" class="style4 style3 style16 style18"><span class="style3 style16 style18">File </span>Content :-<br />(Description)</div></td>
             <td><textarea name="text" id="textarea" cols="50" rows="15"><%=cont%></textarea></td>
            </tr>
			
		 <tr>
		     <td bgcolor="#00FFFF"><div align="left" class="style4 style3 style16 style18"><span class="style3 style16 style18">Select Image :- </span></div></td>
		   <td><input type="file" id="pic" name="pic" class="text" /></td>
	     </tr>
			
            <tr>
              <td bgcolor="#00FFFF"><div align="center"><span class="style10"><span class="style11"><span class="style12"><span class="style3"><span class="style16"><span class="style18"></span></span></span></span></span></span></div></td>
              <td><input type="submit" name="Submit" value="Upload" /></td>
            </tr>
          </table>
          </form>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p class="style10">&nbsp;</p>
                      <p align="right"><a href="s_main.jsp" class="style3 style9">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Seller</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="s_main.jsp"><span>Seller Main</span></a></li>
            <li><a href="s_login.jsp"><span>Log Out</span></a></li>
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
