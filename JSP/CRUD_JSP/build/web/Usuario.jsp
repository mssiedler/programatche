<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<!DOCTYPE html>

<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%
    UsuarioDAO dao = new UsuarioDAO();
    
    List<Usuario> lista;
    
    lista = dao.listar();
    
%>
<html>
    <head>
        <title>Fazenda</title>
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
            <a href="Usuario.jsp">Usuarios</a>
        </h4>
        
        
        <h1>Usuario</h1>
        
        <a href = "CadastroUsuario.jsp">+ Novo Usuario</a><br/>
        
        <input type="text" name="pesquisar"/><input type="submit" value="Pesquisar" /> <br/>
         <table border="1">
            <tr>   
               <th>Nome</th>
               <th>Email</th>
                 <th>Perfil</th>
               <th>Ações</th>
            </tr>
            <%
            for(Usuario registro: lista)
            {
            %>
            <tr>
                <td><%=registro.getLogin()%></td>
                <td><%=registro.getEmail()%></td>
                <td><%=registro.getPerfil()%></td>
                <td><a href="AtualizarUsuario.jsp?login=<%=registro.getLogin()%>">Editar</a>
                    <a href="ExclusaoUsuario.jsp?login=<%=registro.getLogin()%>">Excluir</a></td>
            </tr>
            
            <%
            }
            %>
      </table>    
      
           
    </body>
</html>
