<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="model.Filme"%>
<%@ page import='java.util.ArrayList'%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Filme(s)</title>
</head>
<body>
<TABLE style='width:100%'><TR><TD><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IMDB_Logo_2016.svg/1200px-IMDB_Logo_2016.svg.png" alt="IMDB" height="52" width="140"></TD>

<TABLE style='width:100%' ><TR>
<TH style='width:96%'><FONT size='+1' >FILMES</FONT></TH>
</TR></TABLE>
<TABLE style='width:100%'  >
<TR>
<TH style='width:04%' ><em>FILME</em></TH>
<TH style='width:48%'> <FONT size='+1' ><em>EM PORTUGUES</em></FONT></TH>
<TH style='width:48%'> <FONT size='+1' c><em>EM INGLES</em></FONT></TH>
</TR>

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<%
ArrayList<Filme> filmes = (ArrayList<Filme>) request.getAttribute("filme");
	      
	for(int i = 0; i < filmes.size(); i++) {
		if(filmes.get(i).getIdFilme() == 0) {
        out.println("</TABLE>" +
					"<TABLE style='width:100%' ><TR><TH><FONT size='7' >" +
					"É Nessesário a Inserção de Dados para a Pesquisa Ser Efetuada</FONT></TH>");
  		} else if(filmes.get(i).getTituloIngles() == null) {
  	    out.println("<TR>" +
  					"<TH ><FONT size='4' >" + filmes.get(i).getIdFilme() + "</FONT></TH>" +
  					"<TH ><A HREF='detalha-filme?idfilme=" + filmes.get(i).getIdFilme() + "'>" +
					"<FONT size='4' > " + filmes.get(i).getTitulo() + " </FONT></A></TH>" +
					"<TH ><FONT size='4' >Indisponível</FONT></TH>");
		}  else {
        out.println("<TR>" +
					"<TH ><FONT size='4' >" + filmes.get(i).getIdFilme() + "</FONT></TH>" +
					"<TH ><A HREF='detalha-filme?idfilme=" + filmes.get(i).getIdFilme() + "'>" +
					"<FONT size='4' > " + filmes.get(i).getTitulo() + " </FONT></A></TH>" +
					"<TH ><A HREF='detalha-filme?idfilme=" + filmes.get(i).getIdFilme() + "'>" +
					"<FONT size='4' > " + filmes.get(i).getTituloIngles() + " </FONT></A></TH>");
    	}
	}
%>
</TR>
</TABLE>
</BODY>
</HTML>