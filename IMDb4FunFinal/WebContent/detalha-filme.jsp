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
<%
Filme filme = (Filme) request.getAttribute("filme");

ArrayList<DiretoresFilme> diretoresFilme = (ArrayList<DiretoresFilme>) request.getAttribute("diretoresFilme");

ArrayList<AtoresFilme> atoresFilme = (ArrayList<AtoresFilme>) request.getAttribute("atoresFilme");



		if(filme.getIdFilme() == 0) {
   		out.println("</TABLE>" +
					"<TABLE style='width:100%' ><TR><TH><FONT size='7' >" +
					"É Nessesário a Inserção de Dados para a Pesquisa Ser Efetuada</FONT></TH>");
		}  else {
			
			out.println("<HTML><HEAD><TITLE>Detalhes do filme pt</TITLE>" + "</HEAD>" +
						"<BODY>" +
    			   
    			        "<TABLE style='width:100%' ><TR><TH style='width:100%' ><FONT size='+1' >Filme "
    					+ ": " + filme.getTitulo()  + "</FONT></TH>");
		    out.println("<TABLE style='width:100%' ><TR></TR></TABLE>" +
    			        "<TABLE style='width:100%' ><TR><TH ></TH></TR></TABLE>" +
    			        "<TABLE style='width:100%' ><TR></TR></TABLE>" + "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------" +
						
						"<TABLE '>" +
						"<TR>" +
						"<TH style='width:10%' >" + "<FONT size='4' > "  + "<em>" + "ID FILME" +    	"</FONT>" + "</TH>" +
						"<TH style='width:15%' >" + "<FONT size='4' > "  + "<em>"  + "TITULO" +	    "</FONT>" + "</TH>" +
						"<TH style='width:15%' >" + "<FONT size='4' > "  + "<em>"  + "TITULO INGLES" +	"</FONT>" + "</TH>" +
						"<TH style='width:08%' >" + "<FONT size='4' > "  + "<em>"  + "ANO" + 		 	"</FONT>" + "</TH>" +
						"<TH style='width:22%' >" + "<FONT size='4' > "  + "<em>"  + "CATEGORIA" +   	"</FONT>" + "</TH>" +
						"<TH style='width:30%' >" + "<FONT size='4' > "  + "<em>"  + "PONTUACAO" + 	"</FONT>" + "</TH>" +
						"</TR>" +
					
						
						"<TR>" +
						"<TH>" + "<FONT size='4' > " + filme.getIdFilme() +      "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4' > " + filme.getTitulo() + 	    "</FONT>" + "</TH>" + 
						"<TH>" + "<FONT size='4' > " + filme.getTituloIngles() + "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4' > " + filme.getAno() +          "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4' > " + filme.getCategoria() +    "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4' > " + filme.getPontuacao() +    "</FONT>" + "</TH>" +
						"</TR>" +
						"</TABLE>" + "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
			
			
			out.println(
						"<TABLE style='width:100%' ><TR><TH ></TH></TR></TABLE>" +
			        	"<TABLE style='width:100%' ><TR></TR></TABLE>" +
						
						"<TABLE 'style='width:100%' >" +
						"<TR>" +
						"<TH style='width:10%' >" + "<FONT size='4' > " + "ID ATOR" + 	"</FONT>" + "</TH>" +
		
						"<TH style='width:15%' >" + "<FONT size='4' > " + "ATORES" +  	"</FONT>" + "</TH>" +
						"<TH style='width:15%' >" + "<FONT size='4' > " + "PAPEL" +   	"</FONT>" + "</TH>" +
						"<TH style='width:60%' >" + "<FONT size='4' > " + "DESCRICAO" + "</FONT>" + "</TH>" +
						"</TR>");
	
		
			for (int i = 0; i < atoresFilme.size(); i++) {
			out.println("<TR>" +
						"<TH>" + "<FONT size='4' > " + atoresFilme.get(i).getIdAtor() +    "</FONT>" + "</TH>" +
			
						"<TH>" + "<FONT size='4' > " + atoresFilme.get(i).getAtorNome() +      "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4' > " + atoresFilme.get(i).getPapel() + 	  "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4' > " + atoresFilme.get(i).getDescricao() + "</FONT>" + "</TH>" +
						"</TR>");
				}
			out.println("</TABLE>"  + "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
			
			
			out.println(
						"<TABLE style='width:100%' ><TR><TH ></TH></TR></TABLE>" +
			        	"<TABLE style='width:100%' ><TR></TR></TABLE>" +
					
						"<TABLE ' style='width:100%' >" +
						"<TR>" +
						"<TH style='width:10%' >" + "<FONT size='4' >" + "ID DIRETOR" + "</FONT>" + "</TH>" +
		
						"<TH style='width:15%' >" + "<FONT size='4' >" + "DIRETORES" +  "</FONT>" + "</TH>" +
						"<TH style='width:75%' >" + "<FONT size='4' >" + "DESCRICAO" +  "</FONT>" + "</TH>" +
						"</TR>");
	
			
			for (int i = 0; i < diretoresFilme.size(); i++) {
			out.println("<TR>" +
						"<TH>" + "<FONT size='4' >" + diretoresFilme.get(i).getIdDiretor() + "</FONT>" + "</TH>" +
		
						"<TH>" + "<FONT size='4' >" + diretoresFilme.get(i).getDiretorNome() +   "</FONT>" + "</TH>" +
						"<TH>" + "<FONT size='4' >" + diretoresFilme.get(i).getDescricao() + "</FONT>" + "</TH>" +
						"</TR>");

				}
			out.println("</TABLE>" );
		
			}	
		
		
		
%>
</BODY>
</HTML>