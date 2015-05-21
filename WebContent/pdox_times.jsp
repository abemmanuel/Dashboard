

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page import="java.util.*"%>

<% String d[][] = dashboard.DatabaseManager.getT2P_SPR_SelfCert();  
   String n[][] = dashboard.DatabaseManager.getT2P_SPR_NonSelfCert();  
   Double t2p_sc =0.0;
   Double t2p_spr =0.0;
%>


<table> 
	<tr>
		<td>

			<table bgcolor="99CCFF">
				<tr><td align=center colspan=3><b>Self Cert Average Times</b></td></tr>
				<tr bgcolor="1E90FF">
					<td>Task</td><td>Avg Time</td><td>#Projects</td><td>T2P</td>
				</tr>
						<% for(int i = 0; i < d.length; i++) { %>
							<%if (Integer.parseInt(d[i][4])%2 == 0) {%> <tr bgcolor="FF8C00"> <%} else {%> <tr> <%} %>
								<td><%=d[i][0]%> </td><td><%=d[i][1]%></td><td> <%=d[i][2]%></td> <td> <%=d[i][3]%></td></tr>
						<% t2p_sc = t2p_sc+Double.parseDouble(d[i][3]); } %>
							<tr><td colspan=4 bgcolor="1E90FF"> Self Cert Time to Permit : <%=Math.round(t2p_sc)%> days</td> </tr>
			</table>		
		
		</td>
		<td>
			
			<table bgcolor="99CCFF">
				<tr><td align=center colspan=3><b>SPR Non-Self Cert Average Times</b></td></tr>
				<tr bgcolor="1E90FF">
					<td>Task</td><td>Avg Time</td><td>#Projects</td><td>T2P</td>
				</tr>
						<% for(int i = 0; i < n.length; i++) { %>
							<%if (Integer.parseInt(n[i][4])%2 == 0) {%> <tr bgcolor="FF8C00"> <%} else {%> <tr> <%} %>
								<td><%=n[i][0]%> </td><td><%=n[i][1]%></td><td> <%=n[i][2]%></td> <td> <%=n[i][3]%></td></tr>
								<% t2p_spr = t2p_spr+Double.parseDouble(n[i][3]); } %>
								<tr bgcolor="1E90FF"><td colspan=4> Regualr SPR Time to Permit : <%=Math.round(t2p_spr)%> days</td> </tr>
			</table>		
		
		
		</td>
	</tr>

</table>