package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"materialize/css/materialize.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"materialize/css/materialize.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"only screen and (min-width:777px) and (max-width:2500px)\" href=\"CSS/formato.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"only screen and (min-width:100px) and (max-width:777px)\" href=\"CSS/formato3.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/estilo.css\"/>\n");
      out.write("        <title>Business Coffee</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <aside id=\"registrar\" class=\"elegirReg\">\n");
      out.write("            <div class=\"contentido\">\n");
      out.write("                <header>\n");
      out.write("                    <a href=\"#\" class=\"cerrar\">Cerrar</a>\n");
      out.write("                    <h2>Selecciona el prefil a crear</h2>\n");
      out.write("                </header>\n");
      out.write("                <a href=\"RegistroCliente.jsp\" id=\"cuentas\">Cliente</a>\n");
      out.write("                <a href=\"RegistroAdmin.jsp\" id=\"cuentas\">Administrador</a>\n");
      out.write("            </div>\n");
      out.write("        </aside>\n");
      out.write("        <div class=\"inicio2\">\n");
      out.write("            <input id=\"menu\" type=\"text\" value=\"\" onclick=\"menuC();\">\n");
      out.write("            <img class=\"iconoInicio\" src=\"img/MenuIcono.png\">\n");
      out.write("            <h1 id=\"titMenuC\">Inicio</h1>\n");
      out.write("            <h2 id=\"imp\" onclick=\"importante();\">!</h2>\n");
      out.write("            <ul id=\"menuNav\" class=\"Menu2 escond\">\n");
      out.write("                <li id=\"men2\"><a href=\"index.jsp\">Inicio</a></li>\n");
      out.write("                <li id=\"men2\"><a href=\"Login?pagina=ListarProducto\">Productos</a></li>\n");
      out.write("                <li id=\"men2\"><a href=\"ElCafe.jsp\">El caf&eacute;</a></li>\n");
      out.write("                <li id=\"men2\"><a href=\"Beneficios.jsp\">Beneficios</a></li>\n");
      out.write("                <li id=\"men2\"><a href=\"buco\">Acerca de</a></li>\n");
      out.write("                <li id=\"men2\"><a href=\"buco\">Qui&eacute;nes somos</a></li>\n");
      out.write("                <li id=\"men2\"><a href=\"Ayuda.jsp\">Ayuda</a></li>\n");
      out.write("                <li id=\"men2\"><a href=\"#registrar\">Registrarse</a></li>\n");
      out.write("                <li id=\"men\"><a href=\"IniSesion.jsp\">Iniciar sesi&oacute;n</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"inicio\">\n");
      out.write("            <div class=\"buco\">\n");
      out.write("                <h1>Business Coffee</h1>\n");
      out.write("                <img src=\"img/Logo.png\" id=\"logo\" alt=\"Logo\" width=\"200px\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <ul class=\"Menu\">\n");
      out.write("            <li id=\"men\"><a href=\"index.jsp\">Inicio</a></li>\n");
      out.write("            <li id=\"men\"><a href=\"Login?pagina=ListarProducto\">Productos</a></li>\n");
      out.write("            <li id=\"men\"><a href=\"ElCafe.jsp\">El caf&eacute;</a></li>\n");
      out.write("            <li id=\"men\"><a href=\"Beneficios.jsp\">Beneficios</a></li>\n");
      out.write("            <li id=\"men\"><a href=\"IniSesion.jsp\" name=\"menuIniS\">Iniciar sesi&oacute;n</a></li>\n");
      out.write("        </ul>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"contenedor\">\n");
      out.write("            <section class=\"sep\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col s11 m5 l5 margen\"> \n");
      out.write("                        <img src=\"img/Cafetal.jpg\" id=\"imagP\" class=\"responsive-img materialboxed\" alt=\"Cafetal\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col s11 m6 l6 margen\"> \n");
      out.write("                        <h1 id=\"tit\">¿Sab&iacute;as que...?</h1>\n");
      out.write("\n");
      out.write("                        <p id=\"textimg\">\n");
      out.write("                            El caf&eacute; es un producto de mucha demanda y \n");
      out.write("                            todo esto gracias a que este tiene caracter&iacute;sticas incre&iacute;bles, \n");
      out.write("                            aparte de proveer unos sabores tan inigualables tambi&eacute;n sirve \n");
      out.write("                            para mejorar la salud, adem&aacute;s podemos crear maravillosas \n");
      out.write("                            combinaciones las cuales nos pueden despertar sensaciones \n");
      out.write("                            incre&iacute;bles y lo mejor es que los puedes realizar tu mismo. Ahora contin&uacute;a\n");
      out.write("                            en este camino acompañado por <strong>Business Coffe</strong> y su personal.\n");
      out.write("                        </p>\n");
      out.write("                    </div>   \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"si\">\n");
      out.write("                    <div class=\"cuad1\">\n");
      out.write("                        <p><strong>Genera</strong></p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"cuad2\">\n");
      out.write("                        <p><strong>Ampl&iacute;a</strong></p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"cuad3\">\n");
      out.write("                        <p><strong>Mejora</strong></p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <section class=\"sep\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <h1>Productos destacados</h1>\n");
      out.write("                    <div class=\"col s12 m6 l6\">\n");
      out.write("                        <div class=\"material-placeholder\">\n");
      out.write("                            <img src=\"imgProductos/Cafe.png\" class=\"responsive-img materialboxed\" style=\"width: 394px;height: 250px;\">\n");
      out.write("                            <h3 class=\"descripcion\">Producto</h3>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col s12 m6 l6\">\n");
      out.write("                        <div class=\"material-placeholder\">\n");
      out.write("                            <img src=\"imgProductos/Cafe.png\" class=\"responsive-img materialboxed\" style=\"width: 394px;height: 250px;\">\n");
      out.write("                            <h3 class=\"descripcion\">Producto</h3>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col s12 m6 l6\">\n");
      out.write("                        <div class=\"material-placeholder\">\n");
      out.write("                            <img src=\"imgProductos/Cafe.png\" class=\"responsive-img materialboxed\" style=\"width: 394px;height: 250px;\">\n");
      out.write("                            <h3 class=\"descripcion\">Producto</h3>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col s12 m6 l6\">\n");
      out.write("                        <div class=\"material-placeholder\">\n");
      out.write("                            <img src=\"imgProductos/Cafe.png\" class=\"responsive-img materialboxed\" style=\"width: 394px;height: 250px;\">\n");
      out.write("                            <h3 class=\"descripcion\">Producto</h3>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </div> \n");
      out.write("        <div id=\"importa\" class=\"new escond2\">\n");
      out.write("            <h2>Importante</h2>\n");
      out.write("            <section class=\"importante\">\n");
      out.write("                <div class=\"importa imp1\">\n");
      out.write("                    <a href=\"https://federaciondecafeteros.org/\">\n");
      out.write("                        <img src=\"img/FedeCafet.png\">\n");
      out.write("                        <h2>Federaci&oacute;n Nacional de Cafeteros</h2>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"importa imp1\">\n");
      out.write("                    <a href=\"http://www.ico.org/es/new_historical_c.asp\">\n");
      out.write("                        <img src=\"https://66.media.tumblr.com/ab9c428ae35512d5a4642e318cdda84c/tumblr_pfvjn9skDO1r2e7m2o1_1280.png\">\n");
      out.write("                        <h2>Organización Internacional del café (OIC)</h2>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </div>\n");
      out.write("        <ul class=\"ajuste\">\n");
      out.write("            <li><a><img src=\"img/Ajust.png\" width=\"50px\"></a>\n");
      out.write("                <ul class=\"submenu\">\n");
      out.write("                    <li><a href=\"#footer\">Acerca de</a></li>\n");
      out.write("                    <li><a href=\"#buco\">Qui&eacute;nes somos</a></li>\n");
      out.write("                    <!--<li><a href=\"#registrar\">Registrarse</a></li>-->\n");
      out.write("                    <li><a href=\"RegistroCliente.jsp\">Registro Cliente</a></li>\n");
      out.write("                    <li><a href=\"RegistroAdmin.jsp\">Registro Administrador</a></li>\n");
      out.write("                    <li><a href=\"Ayuda.jsp\">Ayuda</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("        <footer>\n");
      out.write("            <h2><strong>Business Coffee</strong></h2>\n");
      out.write("            <h5>La mejor solución para ampliar tu conocimiento</h5>\n");
      out.write("            <h5>Coffeebusiness4@gmail.com</h5>\n");
      out.write("        </footer>\n");
      out.write("        <div class=\"foot\">\n");
      out.write("            <h2><strong>Business Coffee</strong></h2>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"JS/javascript.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js\"></script>\n");
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
