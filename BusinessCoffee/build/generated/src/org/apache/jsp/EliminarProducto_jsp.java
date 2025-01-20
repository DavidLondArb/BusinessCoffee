package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EliminarProducto_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"img/Logo.png\"/>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/stilPerfil.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/stilFormulario.css\"/>\n");
      out.write("        <title>Business Coffee</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"contenedor\">\n");
      out.write("            <div class=\"tit\">\n");
      out.write("                <h1 id=\"titu\">Business Coffee</h1>\n");
      out.write("                <img id=\"Logo\" src=\"img/Logo.png\" alt=\"Logo\">\n");
      out.write("            </div>\n");
      out.write("            <form class=\"boton\" method=\"post\" action=\"Login\" onsubmit=\"return validar()\">\n");
      out.write("                <div class=\"group\">      \n");
      out.write("                    <input class=\"formInput\" type=\"text\" required/>\n");
      out.write("                    <label>Nombre del Producto</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"group\">      \n");
      out.write("                    <input class=\"formInput\" type=\"text\" required/>\n");
      out.write("                    <label>Codigo del producto</label>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <a href=\"PerfilAdmin.jsp\" class=\"cancelar bot\">Cancelar</a>\n");
      out.write("                <input type=\"submit\" class=\"ingresar bot\" value=\"Eliminar\"/>\n");
      out.write("                <input type=\"hidden\" name=\"pagina\" value=\"RegistroAdmin\"/>\n");
      out.write("                <br>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"JS/RegistroJS.js\"></script>\n");
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
