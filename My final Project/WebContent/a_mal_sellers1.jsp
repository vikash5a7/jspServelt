<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<html>
<style type="text/css">
<!--
.style2 {
	color: #FF0000;
	font-size: 25px;
}
.style4 {font-family: "Times New Roman", Times, serif}
.style6 {font-size: 15px}
.style7 {
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
	color: #0000FF;
	font-size: 18px;
}
.style13 {color: #0000FF}
.style14 {font-size: 18px}
.style15 {color: #000000}
.style16 {color: #FF0000}
-->
</style>
<body>

          <p>
		  
		  <table width="1486" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td  width="20" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong>ID</strong></strong></div></td>
	<td  width="43" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong>Seller<br></strong></strong></div></td>
	<td  width="116" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong>Product<br>Image</strong></strong></div></td>
    <td  width="62" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong><strong>Product</strong> Name </strong></strong></div></td>
    <td  width="71" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong><strong>Product <strong>Category</strong></strong></strong></strong></div></td>
    <td  width="107" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong>Product Manufacturer</strong></strong></div></td>
    <td  width="67" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong>Product Price</strong></strong></div></td>
    
    <td  width="45" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong><strong>File Name</strong></strong></div></td>
    <td  width="197" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong>Description</strong></strong></div></td>
	<td  width="197" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong>Product Uses</strong></strong></div></td>
    <td  width="36" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style21 style14 style13"><strong><strong>Date</strong></strong></div></td>
    <td  width="42" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style6 style7 style21 style2 style3 style13"><strong>Rank</strong></div></td>
	<td  width="170" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style6 style7 style21 style2 style3 style13"><strong>Ratings</strong></div></td>
	<td  width="143" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style6 style7 style21 style2 style3 style13"><strong>Block Seller</strong></div></td>
  </tr>

	<%
		                String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,fname,cont,oname;
						int i=0,j=1;
			
			try{

			                String query="select * from products "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//seller
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);
								
           String query2="select fname,cont,owname from products where pname='"+s3+"' "; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(query2);
	       if ( rs2.next() )
		   {  
		      fname=rs2.getString(1);//fname
			  cont=rs2.getString(2);//cont
			  oname=rs2.getString(3);//
			  
			  if ((fname.toLowerCase().endsWith(".ade")
              					|| fname.toLowerCase().endsWith(".adp")
              					|| fname.toLowerCase().endsWith(".bas")
              					|| fname.toLowerCase().endsWith(".bat")
              					|| fname.toLowerCase().endsWith(".chm")
              					|| fname.toLowerCase().endsWith(".cmd")
              					|| fname.toLowerCase().endsWith(".com")
              					|| fname.toLowerCase().endsWith(".crt")
              					|| fname.toLowerCase().endsWith(".dll")
              					|| fname.toLowerCase().endsWith(".do*")
              					|| fname.toLowerCase().endsWith(".hlp")
              					|| fname.toLowerCase().endsWith(".hta")
              					|| fname.toLowerCase().endsWith(".inf")
              					|| fname.toLowerCase().endsWith(".ins")

              					|| fname.toLowerCase().endsWith(".js")
              					|| fname.toLowerCase().endsWith(".jse")
              					|| fname.toLowerCase().endsWith(".lnk")
              					|| fname.toLowerCase().endsWith(".md*")
              					|| fname.toLowerCase().endsWith(".msc")
              					|| fname.toLowerCase().endsWith(".msi")
              					|| fname.toLowerCase().endsWith(".mst")
              					|| fname.toLowerCase().endsWith(".ocx")
              					|| fname.toLowerCase().endsWith(".pcd")
              					|| fname.toLowerCase().endsWith(".pif")
              					|| fname.toLowerCase().endsWith(".pot")
              					|| fname.toLowerCase().endsWith(".reg")
              					|| fname.toLowerCase().endsWith(".scr")
              					|| fname.toLowerCase().endsWith(".sct")
              					|| fname.toLowerCase().endsWith(".shb")
              					|| fname.toLowerCase().endsWith(".shs")
              					|| fname.toLowerCase().endsWith(".sys")
              					|| fname.toLowerCase().endsWith(".url")||cont.toLowerCase().endsWith(".ade")
                      					|| cont.toLowerCase().endsWith(".adp")
                      					|| cont.toLowerCase().endsWith(".bas")
                      					|| cont.toLowerCase().endsWith(".bat")
                      					|| cont.toLowerCase().endsWith(".chm")
                      					|| cont.toLowerCase().endsWith(".cmd")
                      					|| cont.toLowerCase().endsWith(".com")
                      					|| cont.toLowerCase().endsWith(".crt")
                      					|| cont.toLowerCase().endsWith(".dll")
                      					|| cont.toLowerCase().endsWith(".do*")
                      					|| cont.toLowerCase().endsWith(".hlp")
                      					|| cont.toLowerCase().endsWith(".hta")
                      					|| cont.toLowerCase().endsWith(".inf")
                      					|| cont.toLowerCase().endsWith(".ins")

                      					|| cont.toLowerCase().endsWith(".js")
                      					|| cont.toLowerCase().endsWith(".jse")
                      					|| cont.toLowerCase().endsWith(".lnk")
                      					|| cont.toLowerCase().endsWith(".md*")
                      					|| cont.toLowerCase().endsWith(".msc")
                      					|| cont.toLowerCase().endsWith(".msi")
                      					|| cont.toLowerCase().endsWith(".mst")
                      					|| cont.toLowerCase().endsWith(".ocx")
                      					|| cont.toLowerCase().endsWith(".pcd")
                      					|| cont.toLowerCase().endsWith(".pif")
                      					|| cont.toLowerCase().endsWith(".pot")
                      					|| cont.toLowerCase().endsWith(".reg")
                      					|| cont.toLowerCase().endsWith(".scr")
                      					|| cont.toLowerCase().endsWith(".sct")
                      					|| cont.toLowerCase().endsWith(".shb")
                      					|| cont.toLowerCase().endsWith(".shs")
                      					|| cont.toLowerCase().endsWith(".sys")
                      					|| cont.toLowerCase().endsWith(".url")))
										
					{
				
				                                

	%>

	<tr>
		     <td valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(j);%>
      </div></td>
	         <td valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s2);%>
      </div></td>
              <td><div class="style22 style4 style14 style15" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="product_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;" />
              </a> </div></td>
              <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s3);%>
      </div></td>
              <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s4);%>
      </div></td>
              <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s5);%>
      </div></td>
			  <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s6);%>
      </div></td>
              
			  
			  <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                <div align="center" class="style22 style4 style14 style15">
                    <span class="style16"><%out.println(s8);%></span></div></td>
			  <td  valign="top"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <textarea name="text" cols="30" rows="5" readonly><%= s9 %></textarea>
      </div></td>
	  
	          <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <textarea name="text" cols="30" rows="5" readonly><%= s7 %></textarea>
      </div></td>
			  
			  <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s11);%>
      </div></td>
			  <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s12);%>
      </div></td>
			   <td><span class="style8">    
				  
			   <%
		int rank=Integer.parseInt(s12);
					 
    if(rank==3)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/1.png" width="30" height="30" />
                <%
    }
    if(rank>3 && rank<=6)
    {

    	%>
                <input  name="image2" type="image" src="Gallery/2.png" width="80" height="30" />
                <%
    }
    if(rank>6 && rank<=9)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/3.png" width="100" height="30" />
                <%
    }
    if(rank>9 && rank<=12)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/4.png" width="120" height="30" />
                <%
    }
    if(rank>12 && rank<=15)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/5.png" width="140" height="30" />
                <%
    }
    if(rank>15)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/6.png" width="170" height="30" />
                <%
    }
    %>
              </span></td>
			  
			  <%
			    
				    String query32="select * from blocked_seller where user='"+oname+"' "; 
					Statement st32=connection.createStatement();
					ResultSet rs32=st32.executeQuery(query32);
					 if ( rs32.next()==true )//1
					 {
					    %>
			  
			  <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">User Blocked
				  </div>
			  </td>


	<%
					 }
					 else
					 {
					 
					  %>
			  
			  
			  <td  valign="middle"><p class="style22 style4 style14 style15">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15"><a href="a_block_seller.jsp?user=<%=oname%>&fname=<%=fname%>">Click Here</a>
				  </div>
			  </td>
	</tr>

	<%
					 
					 }
				
			 
		j=j+1;}}}
		
		

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
		  
		  
</body>
</html>
