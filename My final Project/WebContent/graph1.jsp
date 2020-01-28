
<%@ include file="connect.jsp"%>

<%
try
{
	 String query="select distinct acc_type from user where acc_type='Malicious' || acc_type='Normal' "; 
	 Statement st=connection.createStatement();
	 ResultSet rs=st.executeQuery(query);
					
%>

<html>
<head>
<title>Account Type Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style2 {color: #C1FFFF}
.style3 {color: #F0F0F0}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0,count=0,count1=0;
	String s1,s3="Normal Users",s4="Malicious Users";

	while(rs.next())
	{
	  s1=rs.getString(1);
	  				
				    count=0;
					
					if(s1.equalsIgnoreCase("Normal"))
					{
	  				String query1="select * from user where acc_type='Normal' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					while(rs1.next())
					{
					
						count++;
	 			    }
	 
	 
	 
	
	%>
	
	myData["<%=i%>"]=["<%= s3%>",<%= count%>];
        
	<%
	                i++;
					}//if close
					
	else if(s1.equalsIgnoreCase("Malicious"))
					{
	  				String query1="select * from user where acc_type='Malicious' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					while(rs1.next())
					{
					
						count++;
	 			    }
	 
	 
	 
	
	%>
	
	myData["<%=i%>"]=["<%= s4%>",<%= count%>];
        
	<%
	                i++;
					}
	
	
	}//while close
	
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3300');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#0000FF');
	myChart.setAxisColor('#0588c6');
	myChart.setAxisValuesColor('#0000FF');
	//myChart.setSize(300,300);
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

