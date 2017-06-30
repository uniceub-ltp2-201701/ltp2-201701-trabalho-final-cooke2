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
import dao.ListaTodosObjetosTipoDAO;
import dao.LoginDAO;
import model.Filme;

@WebServlet("/login")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ServletLogin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		Connection conexao = Conexao.getConexao();
		
		LoginDAO ld = new LoginDAO(conexao);
		
		boolean resultadoLogin = ld.resultadoLogin(usuario, senha);	
			
		if (resultadoLogin == true) {
			
			ListaTodosObjetosTipoDAO rtod = new ListaTodosObjetosTipoDAO(conexao);
			
			ArrayList<Filme> todosFilmes = rtod.getListaTodosFilmes();
			
			request.setAttribute("filme", todosFilmes);
		
			RequestDispatcher rd = request.getRequestDispatcher("/lista-edita-filmes.jsp");
			rd.forward(request, response);
			
		} else if (resultadoLogin == false) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/login-falha.jsp");
			rd.forward(request, response);			
			
		} else {
				
			throw new IllegalArgumentException();
		}
	}
}
