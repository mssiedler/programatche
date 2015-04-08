package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import dao.UsuarioDAO;
import modelo.Usuario;

public final class Usuario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");

    UsuarioDAO dao = new UsuarioDAO();
    
    List<Usuario> lista;
    
    lista = dao.listar();
    

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Fazenda</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("            <link rel=\"stylesheet\" type=\"text/css\" href=\"TesteCSS.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div> <h5>Sistema de Controle de Fazendas</h5>\n");
      out.write("        <img src =\"fazenda.JPG\" height=\"80\" width=\"200\" ><img>\n");
      out.write("        <h4>Usuario:xxxx <a href = http://www.bage.ifsul.edu.br/portal/> Sair</a></h4>\n");
      out.write("        </div>\n");
      out.write("        <hr>\n");
      out.write("        <h4>\n");
      out.write("            <a href =\"index.html\">Fazendas</a> \n");
      out.write("            <a href=\"Animal.html\">Animal</a> \n");
      out.write("            <a href=\"Usuario.jsp\">Usuarios</a>\n");
      out.write("        </h4>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <h1>Usuario</h1>\n");
      out.write("        \n");
      out.write("        <a href = \"CadastroUsuario.jsp\">+ Novo Usuario</a><br/>\n");
      out.write("        \n");
      out.write("        <input type=\"text\" name=\"pesquisar\"/><input type=\"submit\" value=\"Pesquisar\" /> <br/>\n");
      out.write("         <table border=\"1\">\n");
      out.write("            <tr>   \n");
      out.write("               <th>Nome</th>\n");
      out.write("               <th>Email</th>\n");
      out.write("                 <th>Perfil</th>\n");
      out.write("               <th>Ações</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

            for(Usuario registro: lista)
            {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(registro.getLogin());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(registro.getEmail());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(registro.getPerfil());
      out.write("</td>\n");
      out.write("                <td><a href=\"AtualizarUsuario.jsp?login=");
      out.print(registro.getLogin());
      out.write("\">Editar</a>\n");
      out.write("                    <a href=\"ExclusaoUsuario.jsp?login=");
      out.print(registro.getLogin());
      out.write("\">Excluir</a></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("      </table>    \n");
      out.write("      \n");
      out.write("           \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
