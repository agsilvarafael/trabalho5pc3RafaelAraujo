<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="br.com.prog3.trabalho5pc3.RafaelAraujo.*"%>
	<%  
		if (request.getParameter("crud").equals("Pesquisar")){
			CrudDisciplina cd = (new CrudDisciplina());
			%>
			<table><tr><td>Codigo</td><td>Descrição</td><td>Carga Horaria</td></tr>
			<%			
			for(Disciplina d : cd.listarTodos()){ %>
				<tr><td><%=d.getCodigo()%></td><td><%=d.getDescricao() %></td><td><%=d.getCargaHoraria() %></td></tr>
			
			<%}
			%>
			</table>
			<%
		}
		else{	
			if(request.getParameter("crud").equals("Excluir")){
				%>
				<form action=alteracoes.jsp>
				<br>
				<I>Codigo</I>
				<INPUT TYPE=text NAME=codigo>
				<br>
				<INPUT TYPE="submit" NAME=botaoEnviar title=Enviar value=<%=request.getParameter("crud")%>>
				</form>
				<%
			}
			else{
				%>
				<form action=alteracoes.jsp>
				<br>
				<I>Codigo</I>
				<INPUT TYPE=text NAME=codigo>
				<br>
				<I>Descricao</I>
				<INPUT TYPE=text NAME=descricao>
				<br>
				<I>Carga Horaria</I>
				<INPUT TYPE=text NAME=cargaHoraria>
				<br>
				<INPUT TYPE="submit" NAME=botaoEnviar title=Enviar value=<%=request.getParameter("crud")%>>
				</form>
				<%
			}
		}
		%>
</body>
</html>