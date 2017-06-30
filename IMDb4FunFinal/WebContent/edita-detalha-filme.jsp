<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="model.Filme"%>
<%@ page import="model.AtoresFilme"%>
<%@ page import="model.DiretoresFilme"%>
<%@ page import='java.util.ArrayList'%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FILME</title>
</head>
<body>

<TABLE style='width:100%'><TR><TD><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IMDB_Logo_2016.svg/1200px-IMDB_Logo_2016.svg.png" alt="IMDB" height="52" width="140"></TD>

<TABLE style='width:100%'><TR><TD><input type="button" value="Atualizar" onClick="history.go(0)"></TD>
<%

Filme filme = (Filme) request.getAttribute("filme");

ArrayList<DiretoresFilme> diretoresFilme = (ArrayList<DiretoresFilme>) request.getAttribute("diretoresFilme");

ArrayList<AtoresFilme> atoresFilme = (ArrayList<AtoresFilme>) request.getAttribute("atoresFilme");

		if(filme.getIdFilme() == 0) {
   		out.println("</TABLE>" +
					"Inclua Dados para a Pesquisa Ser Efetuada </FONT>");
		}  else {
			
			out.println("<HTML><HEAD><TITLE>Detalhes do filme em portugues</TITLE>" + "<link href='css/bootstrap.min.css' rel='stylesheet'>" + "</HEAD>" +
						"<BODY>" +
						"<TABLE style='width:100%'><TR><TH><FONT size='+3' color='#000000'>Filme "
						+ ": " + filme.getTitulo() + "</FONT></TH></TR></TABLE>");
					
					
		    out.println(
    			      
						"<TABLE style='width:80%'>" +
						"<TR>" +
"<TH style='width:10%'" + "<FONT size='4'> " +  "<em>" + "ID FILME" +  "</FONT>" + "</TH>" +
"<TH style='width:15%'" + "<FONT size='4'> " + "<em>" + "TITULO" +	    "</FONT>" + "</TH>" +
"<TH style='width:15%'" + "<FONT size='4'> " + "<em>" + "TITULO INGLES" +	"</FONT>" + "</TH>" +
"<TH style='width:08%'" + "<FONT size='4'> " + "<em>" + "ANO" + 		 	"</FONT>" + "</TH>" +
"<TH style='width:22%'" + "<FONT size='4'> " + "<em>" + "CATEGORIA" +   	"</FONT>" + "</TH>" +
"<TH style='width:22%'" + "<FONT size='4'> " + "<em>" + "PONTUACAO" + 	"</FONT>" + "</TH>" +
"<TH style='width:08%'" + "<FONT size='4'> " + "<em>" + "EXCLUIR" +   	"</FONT>" + "</TH>" +
			"</TR>"   +  
								
						
						"<TR>" +
						"<TH>" + "<FONT size='4'> " + filme.getIdFilme() +      "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4'> " + filme.getTitulo() + 	    "</FONT>" + "</TH>" + 
						"<TH>" + "<FONT size='4'> " + filme.getTituloIngles() + "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4'> " + filme.getAno() +          "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4'> " + filme.getCategoria() +    "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4'> " + filme.getPontuacao() +    "</FONT>" + "</TH>" +
						
		
						"<TD>" + "<FORM ACTION='admin-modifica-dados' method='GET'>" + 
						"<INPUT TYPE='HIDDEN' NAME='tipo' VALUE='excluifilme'>" + 
						"<INPUT TYPE='HIDDEN' NAME='idfilme' VALUE=" + filme.getIdFilme() + ">" +
						"<INPUT style='width:100%' TYPE='SUBMIT' VALUE='Excluir'>" + "</FORM>" + "</TD>" +
						"</TR>" 
						);
		
	
			out.println(
					"-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" +
						"<TABLE style='width:100%'><TR><TH></TH></TR></TABLE>" +
			        	"<TABLE style='width:100%'><TR></TR></TABLE>" +
						
						"<TABLE style='width:80%'" +
						"<TR>" +
						"<TH style='width:10%'" + "<FONT size='4'> " +  "<em>" + "ID ATOR" + 	"</FONT>" + "</TH>" +
						"<TH style='width:15%'>" + "<FONT size='4'> " +  "<em>" + "ATORES" +  	"</FONT>" + "</TH>" +
						"<TH style='width:15%'>" + "<FONT size='4'> " +  "<em>" + "PAPEL" +   	"</FONT>" + "</TH>" +
						"<TH style='width:52%'>" + "<FONT size='4'> " +  "<em>" + "DESCRICAO" + "</FONT>" + "</TH>" +
					    "<TH style='width:08%'>" + "<FONT size='4'> " +  "<em>" + "EXCLUIR" +   "</FONT>" + "</TH>" +
						"</TR>" + "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" );
	
			
			for (int i = 0; i < atoresFilme.size(); i++) {
			out.println("<TR>" +
						"<TH>" + "<FONT size='4'> " + atoresFilme.get(i).getIdAtor() +    "</FONT>" + "</TH>" +
			
						"<TH>" + "<FONT size='4'> " + atoresFilme.get(i).getAtorNome() +      "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4'> " + atoresFilme.get(i).getPapel() + 	  "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4'> " + atoresFilme.get(i).getDescricao() + "</FONT>" + "</TH>" +

						
						"<TD>" + "<FORM ACTION='admin-modifica-dados' method='GET'>" + 
						"<INPUT TYPE='HIDDEN' NAME='tipo' VALUE='excluiator'>" +
						"<INPUT TYPE='HIDDEN' NAME='idator' VALUE=" + atoresFilme.get(i).getIdAtor() + ">" +
						"<INPUT style='width:100%' TYPE='SUBMIT' VALUE='Excluir'>" + "</FORM>" + "</TD>" +
						
						"</TR>");
				}
			out.println("</TABLE>");
			
			
			out.println(
						"<TABLE style='width:100%'><TR><TH></TH></TR></TABLE>" + "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"  +
			        	"<TABLE style='width:100%'><TR></TR></TABLE>" +
					
						"<TABLE style='width:100%' >" +
						"<TR>" +
						"<TH style='width:10%'>" + "<FONT size='4'>" + "<em>" + "ID DIRETOR" + "</FONT>" + "</TH>" +
						"<TH style='width:15%'>" + "<FONT size='4'>" + "<em>" +  "DIRETORES" +  "</FONT>" + "</TH>" +
						"<TH style='width:67%'>" + "<FONT size='4'>" + "<em>" +  "DESCRICAO" +  "</FONT>" + "</TH>" +
					    "<TH style='width:08%'>" + "<FONT size='4'>" + "<em>" +  "EXCLUIR" +    "</FONT>" + "</TH>" +
						"</TR>" );
	
			
			for (int i = 0; i < diretoresFilme.size(); i++) {
			out.println("<TR>" +
						"<TH>" + "<FONT size='4' >" + diretoresFilme.get(i).getIdDiretor() + "</FONT>" + "</TH>" +
			
						"<TH>" + "<FONT size='4' >" + diretoresFilme.get(i).getDiretorNome() +   "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4' >" + diretoresFilme.get(i).getDescricao() + "</FONT>" + "</TH>" +
						
					
						"<TD>" + "<FORM ACTION='admin-modifica-dados' method='GET'>" + 
						"<INPUT TYPE='HIDDEN' NAME='tipo' VALUE='excluidiretor'>" + 
						"<INPUT TYPE='HIDDEN' NAME='iddiretor' VALUE=" + diretoresFilme.get(i).getIdDiretor() + ">" +
						"<INPUT style='width:100%' TYPE='SUBMIT' VALUE='Excluir'>" + "</FORM>" + "</TD>" +
						"</TR>");

				}
			out.println("</TABLE>");
			
		
			out.println("<TABLE style='width:100%' ><TR></TR></TABLE>" + "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"  + "****************************************************************************************************************************************************************************" +
	    				"<TABLE style='width:100%' ><TR></TR></TABLE>" +
						"<TABLE style='width:100%' ><TR><TH ><FONT size='+1' >" + 
						"Adicionar Dados ao Filme " + ": " + filme.getTitulo() + "</font></TH></TR></TABLE>" +
						"<TABLE style='width:100%' ><TR></TR></TABLE>");
						
			
			
			out.println("<TABLE style='width:100%' >" +
						"<TR>" +
						"<TH style='width:15%' >" + "<FONT size='4'>" + "<em>" +  "DIRETOR" +      "</FONT>" + "</TH>" +
						"<TH style='width:77%' >" + "<FONT size='4'>" + "<em>" +  "DESCRICAO" +    "</FONT>" + "</TH>" +
						"<TH style='width:08%' >" + "<FONT size='4'>" + "<em>" +  "INCLUIR" +      "</FONT>" + "</TH>" +
						"</TR>" +
						
						"<TR>" +
			
						"<FORM ACTION='admin-modifica-dados' method='GET'>" +
						"<INPUT TYPE='HIDDEN' NAME='tipo' VALUE='incluidiretor'>" + 
						"<INPUT TYPE='HIDDEN' NAME='idfilme' VALUE='" + filme.getIdFilme() + "'>" + 
			
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='diretor-nome'>" +						   "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='descricao-diretor'>" + 				  	   "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='SUBMIT' VALUE='Incluir'>" +           		   "</TD>" +
						"</TR></FORM>" +
						"</TABLE>"); 
			

			out.println("<TABLE style='width:100%' >" + "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"  +
						"<TR>" +
			
						"<TH style='width:15%' >" + "<FONT size='4'>" + "<em>" +  "ATOR" +      "</FONT>" + "</TH>" +
						"<TH style='width:15%' >" + "<FONT size='4'>" + "<em>" +  "PAPEL" +     "</FONT>" + "</TH>" +
						"<TH style='width:62%' >" + "<FONT size='4'>" + "<em>" +  "DESCRICAO" + "</FONT>" + "</TH>" +
						"<TH style='width:08%' >" + "<FONT size='4'>" + "<em>" +  "INCLUIR" +   "</FONT>" + "</TH>" +
						"</TR>" +
						
						"<TR>" +
			
						"<FORM ACTION='admin-modifica-dados' method='GET'>" +
						"<INPUT TYPE='HIDDEN' NAME='tipo' VALUE='incluiator'>" + 
						"<INPUT TYPE='HIDDEN' NAME='idfilme' VALUE='" + filme.getIdFilme() + "'>" + 
			
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='ator-nome'>" +						   "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='papel'>" + 				  	   "</TD>" +
						"<TD>" + "<INPUT STYLE='width:80%' TYPE='TEXT' NAME='descricao-ator'>" + 			   "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='SUBMIT' VALUE='Incluir'>" +           		   "</TD>" +
						"</TR></FORM>" +
						"</TABLE>");
			
		
			out.println(
    			        
    			        "<TABLE style='width:100%' ><TR></TR></TABLE>" + "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"  +
    			        
						"<TABLE style='width:100%' ><TR><TH ><FONT size='+1' >" + 
						"Novo Filme</font></TH></TR></TABLE>" +
						"<TABLE style='width:100%' ><TR></TR></TABLE>" +
					
						"<table style='width:100%' >" + 
						"<TR>" +
						"<TH style='width:15%' >" + "<FONT size='4'>" + "<em>" +  "TITULO" +		   "</FONT>" + "</TH>" +
						"<TH style='width:15%' >" + "<FONT size='4'>" + "<em>" +  "TITULO INGLES" + "</FONT>" + "</TH>" +
						"<TH style='width:08%' >" + "<FONT size='4'>" + "<em>" +  "ANO" + 		   "</FONT>" + "</TH>" +
						"<TH style='width:24%' >" + "<FONT size='4'>" + "<em>" +  "CATEGORIA" +     "</FONT>" + "</TH>" +
						"<TH style='width:30%' >" + "<FONT size='4'>" + "<em>" +  "PONTUACAO" +     "</FONT>" + "</TH>" +
						"<TH style='width:08%' >" + "<FONT size='4'>" + "<em>" +  "INCLUIR" +       "</FONT>" + "</TH>" +
						"</TR>" +
						
						"<TR>" +
						"<FORM ACTION='admin-modifica-dados' method='GET'>" +
						"<INPUT TYPE='HIDDEN' NAME='tipo' VALUE='incluifilme'>" + 
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='titulo'>" +       "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='tituloingles'>" + "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='ano'>" + 		    "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='categoria'>" +    "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='TEXT' NAME='pontuacao'>" +    "</TD>" +
						"<TD>" + "<INPUT STYLE='width:100%' TYPE='SUBMIT' VALUE='Incluir'>" +   "</TD>" +
						"</TR>" +
						"</TABLE>");
			
	    	
			}		
%>
</FORM>
</BODY>
</HTML>