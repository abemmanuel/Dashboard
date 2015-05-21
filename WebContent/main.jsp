<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Department of Buildings Dashboard</title>
</head>
<body>



<center>
<table CELLPADDING="0" CELLSPACING="0"> 
	<tr> 
		<td> 
			<img alt="" height= 70 width=70 src="img/city_logo.jpg">
		</td>
		<td align=center>
			<h2>City of Chicago <br> Department of Buildings Permits and Inspections Dashboard</h2>
		</td>
		<td> 
			<img alt="" height= 70 width=160 src="img/dob_logo_full.jpg">
		</td>
	</tr>

	<tr> 
		<td  colspan=3 align = left bgcolor = "#E3E3E3" valign = center > <jsp:include page="h7_main.jsp" />  </td>
	</tr>
	<tr> 
		<td  colspan=3 align = left bgcolor = "#E3E3E3" valign = center > <jsp:include page="pdox_times.jsp" />  </td>
	</tr>
	<tr> 
		<td  colspan=3 align = left bgcolor = "#E3E3E3" valign = center > <jsp:include page="pdox_queue.jsp" />  </td>
	</tr>
</table>
</center>

</body>
</html>