<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.AtoresFilme"%>
<%@ page import='java.util.ArrayList'%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ator(es)</title>
</head>

<body>
<TABLE style='width:100%'><TR><TD><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IMDB_Logo_2016.svg/1200px-IMDB_Logo_2016.svg.png" alt="IMDB" height="52" width="140"></TD>



<TABLE style='width:100%' ><TR>
<TH style='width:96%' ><FONT size='+1' >ATORES</FONT></TH>
</TR></TABLE>
<TABLE style='width:100%'  >
<TR>
<TH style='width:04%' >ATOR</TH>
<TH style='width:32%' ><FONT size='+1' > <em>ATOR</em> </FONT></TH>
<TH style='width:32%' ><FONT size='+1' ><em>PAPEL</em> </FONT></TH>
<TH style='width:32%' ><FONT size='+1' ><em>DESCRICAO</em> </FONT></TH>
</TR>

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<%
ArrayList<AtoresFilme> atores = (ArrayList<AtoresFilme>) request.getAttribute("atores");

for(int i = 0; i < atores.size(); i++) {
	if(atores.get(i).getIdAtor() == 0) {
    out.println("</TABLE>" +
				"<TABLE style='width:100%' ><TR><TH><FONT size='7' color='#FFFFFF'>" +
				"É Nessesário a Inserção de Dados para a Pesquisa Ser Efetuada</FONT></TH>");
		} else if(atores.get(i).getDescricao() == null) {
	out.println("<TR>" +
				"<TH ><FONT size='4' >" + atores.get(i).getIdAtor() + "</FONT></TH>" +
				"<TH><A HREF='exibir-filme?idfilme=" + atores.get(i).getIdFilme() + "'>" +
				"<FONT size='4'> " + atores.get(i).getAtorNome() + " </FONT></A></TH>" +
				"<TH><FONT size='4'>" + atores.get(i).getPapel() + "</FONT></TH>" +
				"<TD><FONT size='4'>----</FONT><FONT size='4' color='#ffcc00'>Indisponível</FONT></CENTER></TD>");	
	}  else {
    out.println("<TR>" +
				"<TH ><FONT size='4'>" + atores.get(i).getIdFilme() + "</FONT></TH>" +
				"<TH><A HREF='detalha-filme?idfilme=" + atores.get(i).getIdFilme() + "'>" +
				"<FONT size='4' > " + atores.get(i).getAtorNome() + " </FONT></A></TH>" +
				"<TH ><FONT size='4' >" + atores.get(i).getPapel() + "</FONT></TH>" +
				"<TD><FONT size='4'></FONT><FONT size='4'>" + atores.get(i).getDescricao() + "</FONT></CENTER></TD>");
	}
}
%>
</TR>
</TABLE>
</BODY>
</html>