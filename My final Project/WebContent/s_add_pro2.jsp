
<title>Upload Product</title>

		  
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>


<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>







<%
		


		            ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null,aname=null,cont=null,mac=null,cld=null;
					String a=null,b=null,d=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String tname=null;     
					String desc=null;
					
					String pname=null;     
					String pcat=null;
					String pman=null;
					String puses=null;
					String pprice=null;
					String hos=null;     
					String blood=null;
					String diss=null;
					String symm=null;
					String agee=null;
					String fname=null;
					String con=null;
					String image=null;
					
					FileInputStream fs=null;
					File file1 = null;	
					
					
try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("pcat"))
							{
								pcat=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("pname"))
							{
								pname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pman"))
							{
								pman=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pprice"))
							{
								pprice=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("puses"))
							{
								puses=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("tt"))
							{
								fname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("text"))
							{
								con=multi.getParameter(paramname);
							}
							
													
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1)
								 {
									if (i != -1) 
									{
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
			            String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
         

            String query="select * from products where pname='"+pname+"'";
			Statement st = connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			
			if(rs.next()==true)
			{
              out.println("Product Name Already Exist");
			  
			  %>
		
		  </p><br />
		<p>  <a href="s_add_pro.jsp">Back</a></p>

<%
			  			
			}
			 else if(rs.next()!=true)
             {
			 			
		  String rank="0";
		  String oname=(String)application.getAttribute("seller");
		  		   
		  PreparedStatement ps=connection.prepareStatement("insert into products (owname,pname,pcat,pman,pprice,puses,fname,cont,image,dt,rank) values(?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,oname);
						ps.setString(2,pname);
						ps.setString(3,pcat);
						ps.setString(4,pman);
						ps.setString(5,pprice);
						ps.setString(6,puses);
						ps.setString(7,fname);
						ps.setString(8,con);		
						ps.setBinaryStream(9, (InputStream)fs, (int)(file1.length()));	
						ps.setString(10,dt);
						ps.setString(11,rank);	
						
						int x=ps.executeUpdate();	
						
						
		  	
						
						if(f == 0)
							ps.setObject(10,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(10,fs1,fs1.available());
						}	
					
						
						
						
						
						if(x>0)
						{
							%>
							  <p><h1 class="style8">Product Uploaded Successfully !!!</h1>
							
					         <%
							 
							 

					
					String task="Uploaded";
					String strQuery222 = "insert into transaction(user,pname,task,dt) values('"+oname+"','"+pname+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery222);
							 
							
						}
%>
		
		  </p><br />
		<p>  <a href="s_add_pro.jsp">Back</a></p>

<%
		  	}
		  		connection.close();
				
	}
		  	catch (Exception e) 
			{
		  		out.println(e.getMessage());
		  		e.printStackTrace();
		  	}
		  %>  

		  
		  
          