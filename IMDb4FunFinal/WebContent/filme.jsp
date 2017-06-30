<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="model.Filme"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FILME</title>
</head>
<style>

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 4px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color:#f5f5f5
}
</style>
<body>

<TABLE style='width:100%' '><TR></TR></TABLE>
<TABLE style='width:100%' ><TR>></TR></TABLE>
<TABLE style='width:100%' '><TR></TR></TABLE>

<TABLE style='width:100%' ><TR>
<TH style='width:4%'>ID</TH>
<TH style='width:96%' ><FONT size='+1' >FILME(S)</FONT></TH>
</TR></TABLE>
<TABLE style='width:100%'  bordercolor='#262626' border='1'>
<TR>
<TH style='width:04%' >FILME</TH>
<TH style='width:24%' ><FONT size='+1' >TITULO PORTUGUES</FONT></TH>
<TH style='width:24%' ><FONT size='+1' >TITULO INGLES</FONT></TH>
<TH style='width:12%' ><FONT size='+1' >ANO</FONT></TH>
<TH style='width:18%' ><FONT size='+1' >CATEGORIA</FONT></TH>
<TH style='width:18%' ><FONT size='+1' >PONTUACAO</FONT></TH>
</TR>
<%
Filme filme = (Filme) request.getAttribute("filme");

		if(filme.getIdFilme() == 0) {
   		out.println("</TABLE>" +
					"<TABLE style='width:100%' ><TR><TH><FONT size='7' color='#FFFFFF'>" +
					"É Nessesário a Inserção de Dados para a Pesquisa Ser Efetuada</FONT></TH>");
		} else if(filme.getTituloIngles() == null) {
	    out.println("<TR>" +
					"<TH ><FONT size='4' color='#333333'>" + filme.getIdFilme() + "</FONT></TH>" +
					"<TH '><A HREF='exibir-filme?idfilme=" + filme.getIdFilme() + "'>" +
					"<FONT size='4' color='#FFFFFF'> " + filme.getTitulo() + " </FONT></A></TH>" +
					"<TH '><FONT size='4' color='#ffcc00'>Indisponível</FONT></TH>" +
					"<TH '><FONT size='4' color='#FFFFFF'> " + filme.getAno() + " </FONT></TH>" +
				//	"<TH '><FONT size='4' color='#FFFFFF'> " + filme.getCategoria() + " </FONT></TH>" +
					"<TH '><FONT size='4' color='#FFFFFF'> " + filme.getPontuacao() + " </FONT></TH>");	
		}  else {
    	out.println("<TR>" +
				"<TH ><FONT size='4' color='#333333'>" + filme.getIdFilme() + "</FONT></TH>" +
				"<TH '><A HREF='exibir-filme?idfilme=" + filme.getIdFilme() + "'>" +
				"<FONT size='4' color='#FFFFFF'> " + filme.getTitulo() + " </FONT></A></TH>" +
				"<TH '><FONT size='4' color='#FFFFFF'> " + filme.getTituloIngles() + " </FONT></TH>" +
				"<TH '><FONT size='4' color='#FFFFFF'> " + filme.getAno() + " </FONT></TH>" +
			//	"<TH '><FONT size='4' color='#FFFFFF'> " + filme.getCategoria() + " </FONT></TH>" +
				"<TH '><FONT size='4' color='#FFFFFF'> " + filme.getPontuacao() + " </FONT></TH>");
		}
%>
</TR>
</TABLE>
</BODY>
</HTML>