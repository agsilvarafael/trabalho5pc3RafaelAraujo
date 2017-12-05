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
	CrudDisciplina cd = (new CrudDisciplina());
	switch(request.getParameter("botaoEnviar")){
		case "Incluir": 
			cd.inserir(new Disciplina(
				Integer.parseInt(request.getParameter("codigo")),
				request.getParameter("descricao"),
				Integer.parseInt(request.getParameter("cargaHoraria"))
				));
			break;
		case "Alterar":
			cd.alterar(
				new Disciplina(
				Integer.parseInt(request.getParameter("codigo")),
				request.getParameter("descricao"),
				Integer.parseInt(request.getParameter("cargaHoraria"))
				));
			break;
		case "Excluir":
			cd.remover(Integer.parseInt(request.getParameter("codigo")));
			break;
	}
	request.setAttribute("cd", cd);
	%>
	<table><tr><td>Codigo</td><td>Descrição</td><td>Carga Horaria</td></tr>
	<%			
	for(Disciplina d : cd.listarTodos()){ %>
		<tr><td><%=d.getCodigo()%></td><td><%=d.getDescricao() %></td><td><%=d.getCargaHoraria() %></td></tr>
	
	<%}
	%>
	</table>
	<%
	%>
</body>
</html>