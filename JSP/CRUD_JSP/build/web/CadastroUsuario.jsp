<!DOCTYPE html>

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
            <a href="Usuario.html">Usuarios</a>
        </h4>
        
        <h1>Cadastro de Usuario</h1>
        
        <form action="FimCadastroUsuario.jsp" method="post">
            Login       : <input type="text" name="login"/><br/>
            E-mail     : <input type="email" name="email"/><br/>
            Senha      : <input type="password" name="senha"/><br/>
            Perfil     : <input type="radio" name="perfil" value="Admin"/> Administrador 
                         <input type="radio" name="perfil" value="Fazendeiro"/> Fazendeiro 
                         <input type="radio" name="perfil" value="Operador"/> Operador <br/>
            
            
            <input type="submit" value="Cadastrar"/> 
            <input type="reset" value="Limpar" />
        </form>
    </body>
</html>
