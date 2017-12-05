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
	<%@ page import="java.util.List"%>
	<%
	 CrudDisciplina cd = (CrudDisciplina) request.getAttribute("cd");
	if(cd == null)
		cd = (new CrudDisciplina());
	%>
	<form action="crudDisciplina.jsp" method="get">
	<% request.setAttribute("cdA", cd); %>
	<input type="submit" name="crud" value="Pesquisar"/>
	<input type="submit" name="crud" value="Incluir"/>
	<input type="submit" name="crud" value="Alterar"/>
	<input type="submit" name="crud" value="Excluir"/>
	</form>
</body>
</html>