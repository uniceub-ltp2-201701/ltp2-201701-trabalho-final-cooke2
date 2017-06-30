
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BANCO DE DADOS IMDb</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body>


<TABLE style='width:100%' bgcolor='#FFFFFF'><TR></TR></TABLE>


<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IMDB_Logo_2016.svg/1200px-IMDB_Logo_2016.svg.png" alt="IMDB" height="52" width="140">

<TABLE style='width:35%'><TR><TH style='width:100%'><FONT size='+1' >Logar Como Administrador</FONT></TH></TR></TABLE>

<TABLE style='width:35%'>
<TR>
<form action='/IMDb4FunFinal/login' method='POST'>
<TH style='width:15%'><FONT>Usuário: </FONT></TH>
<TH style='width:30%'><input style='width:100%' type='text' name='usuario'></TD>
<TD style='width:50%'></TD>
</TR>
<TR>
<TH style='width:15%'><FONT>Senha: </FONT></TH>
<TH style='width:15%'><input style='width:100%' type='password' name='senha'></TH>
<TD><input type='hidden' name="tipoLogin" value="loginIndex"><input type='submit' value='Logar'>
</form>
</TR>
</TABLE>

<br>


<h2 style="text-align: center;"><strong>Buscar no database</strong></h2>

<table style='width:95%'>
<TR>
<form action="/IMDb4FunFinal/barra-tipo-consulta">
<TH>
<input type="text" name="dados">
 </TH>
 <TH>
  <select class="w3-select w3-border" style='width:61%' name="tipoConsulta">
  	<option value="FILMES" selected>Pesquise Filmes</option>
	<option value="" disabled>Consultar Filmes por....</option>
	<option value="Titulo em Portugues">Titulo em Portugues</option>
	<option value="Titulo em Ingles">Titulo em Ingles</option>
	<option value="Ano">Ano</option>
	<option value="Pontuacao">Pontuacao</option>
	<option value="Diretores">Diretores</option>
	<option value="Atores">Atores</option>
	<option value="Categoria">Categoria</option>
	<option value="Todos os Filmes">Todos os Filmes</option>
  </select>
<button class="button button5" type="submit" name="barraConsulta" value="Barra de Filmes">Buscar</button>
 </TH>
</form>


<form action="/IMDb4FunFinal/barra-tipo-consulta">
<TH>
 <input type="text" name="dados">
 </TH>
  <TH >
  <select class="w3-select w3-border" style='width:100%' name="tipoConsulta">
  	<option value="DIRETORES" selected>Pesquise Diretores</option>
	<option value="" disabled>Consultar Diretores por....</option>
	<option value="Diretor Nome">Nome</option>
	<option value="Todos os Diretores">Todos os Diretores</option>
  </select>
 </TH>
  <TH>
<button class="button button5" style='width:100%' type="submit" name="barraConsulta" value="Barra de Diretores">Buscar</button>
 </TH>
</form>

<form action="/IMDb4FunFinal/barra-tipo-consulta">
<TH>
<TH style='width:5%'>
 <input type="text" name="dados">
 </TH>
  <TH >
  <select class="w3-select w3-border" style='width:100%' name="tipoConsulta">
  	<option value="ATORES" selected>Pesquise Atores</option>
	<option value="" disabled>Consultar Atores por....</option>
	<option value="Ator Nome">Nome</option>
	<option value="Ator Papel">Papel</option>
	<option value="Todos os Atores">Todos os Atores</option>
  </select>
 </TH>
  <TH>
<button class="button button5" style='width:100%' type="submit" name="barraConsulta" value="Barra de Atores">Buscar</button>
 </TH>
</form>
</TR>

</TABLE>
<!---/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

</body>
</html>