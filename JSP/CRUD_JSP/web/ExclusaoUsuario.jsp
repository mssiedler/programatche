<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%
String msg = null;    
if(request.getParameter("login")==null)
{
    msg = "Registro não envidado, verifique e tente novamente";
}
else
{
    UsuarioDAO dao = new UsuarioDAO();
    Usuario usuario = new Usuario();
    usuario.setLogin(request.getParameter("login"));
    Boolean ret = dao.excluir(usuario);
    if(ret==true)
    {
        msg = "Registro excluído com sucesso";
    }
    else
    {
        msg = "Não foi possível realizar a exclusão, verifique dependências e tente novamente";
    }
}
    





%>
<html>
    <head>
        <title>Exclusão</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <link rel="stylesheet" type="text/css" href="TesteCSS.css" />
    </head>
    <body>
        <div> <h5>Sistema de Controle de Fazendas</h5>
        <img src ="fazenda.JPG" height="80" width="200" ><img>
        <h4><a href="Usuario.jsp"/></a></h4>
        </div>
        <hr>
        <h4>
            <a href ="index.html">Fazendas</a> 
            <a href="Animal.html">Animal</a> 
            <a href="Usuario.html">Usuarios</a>
        </h4>
        
        <h4><%=msg%></h4>
        
        <a href="Usuario.jsp">Voltar para Listagem</a><br/>
        <hr>
    
    </body>
</html>
