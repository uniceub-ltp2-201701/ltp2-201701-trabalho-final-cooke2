<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.DiretoresFilme"%>
<%@ page import='java.util.ArrayList'%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Diretor(es)</title>
</head>
<body>
<TABLE style='width:100%'><TR><TD><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IMDB_Logo_2016.svg/1200px-IMDB_Logo_2016.svg.png" alt="IMDB" height="52" width="140"></TD>

<TABLE style='width:100%' ><TR>
<TH style='width:96%' ><FONT size='+1' >DIRETORES</FONT></TH>
</TR></TABLE>
<TABLE style='width:100%'  >
<TR>
<TH style='width:04%' ><em>DIRETOR</em></TH>
<TH style='width:48%' ><FONT size='+1' ><em>DIRETOR</em></FONT></TH>
<TH style='width:48%' ><FONT size='+1' ><em>DESCRICAO</em></FONT></TH>
</TR>
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<%
ArrayList<DiretoresFilme> diretores = (ArrayList<DiretoresFilme>) request.getAttribute("diretores");
	      
	for(int i = 0; i < diretores.size(); i++) {
		if(diretores.get(i).getIdDiretor() == 0) {
        out.println("</TABLE>" +
					"<TABLE style='width:100%' ><TR><TH><FONT size='7' >" +
					"É Nessesário a Inserção de Dados para a Pesquisa Ser Efetuada</FONT></TH>");
  		} else if(diretores.get(i).getDescricao() == null) {
  	    out.println("<TR>" +
  					"<TH ><FONT size='4' color='#333333'>" + diretores.get(i).getIdFilme() + "</FONT></TH>" +
  					"<TH ><A HREF='exibir-filme?idfilme=" + diretores.get(i).getIdFilme() + "'>" +
					"<FONT size='4' > " + diretores.get(i).getDiretorNome() + " </FONT></A></TH>" +
					"<TD ><FONT size='4' >----------------------------------------------</FONT><FONT size='4' >Indisponível</FONT></CENTER></TD>");	
		}  else {
        out.println("<TR>" +
					"<TH ><FONT size='4' color='#333333'>" + diretores.get(i).getIdFilme() + "</FONT></TH>" +
					"<TH ><A HREF='exibir-filme?idfilme=" + diretores.get(i).getIdFilme() + "'>" +
					"<FONT size='4' > " + diretores.get(i).getDiretorNome() + " </FONT></A></TH>" +
					"<TD ><FONT size='4'/FONT><FONT size='4'" + diretores.get(i).getDescricao() + "</FONT></CENTER></TD>");
    	}
	}
%>
</TR>
</TABLE>
</BODY>
</html>