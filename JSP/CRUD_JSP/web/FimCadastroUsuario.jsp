<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%
  Usuario usuario = new Usuario();
  //peguei as informações do formulário
  usuario.setLogin(request.getParameter("login"));
  usuario.setEmail(request.getParameter("email"));
  usuario.setPerfil(request.getParameter("perfil"));
  usuario.setSenha(request.getParameter("senha"));
  
  //INSERIR NO BANCO
  UsuarioDAO dao = new UsuarioDAO();
  
  Boolean ret = dao.inserir(usuario);
  String msg;
  if(ret==true)
  {
      msg = "Registro cadastrado com sucesso";
  }
  else
  {
      msg = "Erro ao cadastrar";
  }
%>
<html>
    <head>
        <title>Cadastro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" type="text/css" href="TesteCSS.css" />
    </head>
    <body>
        <div> <h5>Sistema de Controle de Fazendas</h5>
        <img src ="fazenda.JPG" height="80" width="200" ><img>
        <h4>Usuario:xxxx <a href = http://www.bage.ifsul.edu.br/portal/> Sair</a></h4>
        </div>
        <hr>
        <h4>
            <a href ="index.html">Fazendas</a> 
            <a href="Animal.html">Animal</a> 
            <a href="Usuario.html">Usuarios</a>
        </h4>
        
        <h1>Cadastro do Usuario</h1>
        
        <%=msg%>.<br>
        <a href = "Usuario.jsp">Voltar para o Usuario</a><br/>
        <hr>
    
    </body>
</html>
