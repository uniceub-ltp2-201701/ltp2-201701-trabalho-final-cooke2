package control;


import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Conexao;
import dao.DetalhaObjetoDAO;
import dao.ListaTodosObjetosTipoDAO;
import model.Filme;

@WebServlet("/barra-filme")
public class ServletBarraConsultaFilme extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ServletBarraConsultaFilme() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String consultaFilme = request.getParameter("consultaFilme");
		
		Connection conexao = Conexao.getConexao();
		
	if (consultaFilme.equals("Todos os Filmes")) {
			
		ListaTodosObjetosTipoDAO rtod = new ListaTodosObjetosTipoDAO(conexao);
		
		ArrayList<Filme> todosFilmes = rtod.getListaTodosFilmes();
			
		request.setAttribute("filme", todosFilmes);
		
		RequestDispatcher rd = request.getRequestDispatcher("/lista-filmes.jsp");
		rd.forward(request, response);
		   			
	} else {
					
		DetalhaObjetoDAO lftcd = new DetalhaObjetoDAO(conexao);
		
		Filme filme = lftcd.getObjetoFilme(consultaFilme);
		
		int intIdFilme = filme.getIdFilme();
	
		StringBuilder sb = new StringBuilder();
		sb.append("");
		sb.append(intIdFilme);
		String idFilme = sb.toString();
		
		request.setAttribute("idfilme", idFilme);
	
		RequestDispatcher rd = request.getRequestDispatcher("/exibir-filme");
		rd.forward(request, response);
    }
  }
}

