package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Principal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Proyecto VI - Remenber me</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"icon\" type=\"img/logoblancod.ico\" href=\"img/logoblancod.ico\"/>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"keywords\" content=\"\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"Principal/css/main.css\" />\n");
      out.write("    </head>\n");
      out.write("    ");

        HttpSession s = request.getSession();
        //variables de session
    
      out.write("\n");
      out.write("    <body class=\"is-preload\">    \n");
      out.write("        <!-- Encabezado -->\n");
      out.write("        <header id=\"header\" style=\"\">\n");
      out.write("            \n");
      out.write("            <a class=\"logo\" id=\"ulUserData\" href=\"index.html\"></a>\n");
      out.write("            <nav>\n");
      out.write("                <a href=\"cerrar.jsp\" style=\"color:white\" >Cerrar sesión</a>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <!-- Nav -->\n");
      out.write("        <nav id=\"menu\"  style=\"color:white\">\n");
      out.write("            <ul class=\"links\">\n");
      out.write("                <li><a href=\"index.html\" >Inicio</a></li>\n");
      out.write("                <li><a href=\"ReporteKi.jsp\" style=\"\" >Reportes</a></li>\n");
      out.write("                <li><a href=\"reportesj.jsp\" style=\"\" >Historial</a></li>\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("        <!-- container principal -->\n");
      out.write("        <section class=\"wrapper\">\n");
      out.write("            <div class=\"inner\">\n");
      out.write("                <div class=\"highlights\">\n");
      out.write("\n");
      out.write("                    <!-- PRIMER MODULO -->\n");
      out.write("                    <section>\n");
      out.write("                        <div class=\"content\">\n");
      out.write("                            <header>\n");
      out.write("                                <a href=\"\">\n");
      out.write("                                    <img alt=\"\" src=\"img/departamentos.png\">\n");
      out.write("                                    <span class=\"label\"></span></a>\n");
      out.write("                                <h3 style=\"color:#4D8846; font-weight: bold\">AGREGAR INFORMACIÓN</h3>\n");
      out.write("                            </header>\n");
      out.write("                            <p>Agregar, modificar y eliminar informacion sobre el paciente</p>\n");
      out.write("                            <a  href=\"\" class=\"button primary\" >Acceder</a>\n");
      out.write("                        </div>\n");
      out.write("                    </section>\n");
      out.write("\n");
      out.write("                    <!-- SEGUNDO MODULO -->\n");
      out.write("                    <section>\n");
      out.write("                        <div class=\"content\">\n");
      out.write("                            <header>\n");
      out.write("                                <a href=\"\" >\n");
      out.write("                                    <img alt=\"\" src=\"img/REPORTESSS.png\">\n");
      out.write("                                    <span class=\"label\"></span></a>\n");
      out.write("                                <h3 style=\"color:#4D8846; font-weight: bold\">Reportes</h3>\n");
      out.write("                            </header>\n");
      out.write("                            <p>Mostrar informe de las actividades</p>\n");
      out.write("                            <a href=\"\" class=\"button primary\">Acceder</a>\n");
      out.write("                        </div>\n");
      out.write("                    </section>\n");
      out.write("\n");
      out.write("                    <!-- TERCER MODULO -->\n");
      out.write("                    <section>\n");
      out.write("                        <div class=\"content\">\n");
      out.write("                            <header>\n");
      out.write("                                <a href=\"\">\n");
      out.write("                                    <img alt=\"\" src=\"img/HISTORIAL11.png\">\n");
      out.write("                                    <span class=\"label\"></span></a>\n");
      out.write("                                <h3 style=\"color:#4D8846; font-weight: bold\">Historial</h3>\n");
      out.write("                            </header>\n");
      out.write("                            <p>Mostrar la información de las actividades </p>\n");
      out.write("                            <a href=\"\" class=\"button primary\">Acceder</a>\n");
      out.write("                        </div>\n");
      out.write("                    </section>\n");
      out.write("                   <!-- CUARTO MODULO -->\n");
      out.write("                    <section>\n");
      out.write("                        <div class=\"content\">\n");
      out.write("                            <header>\n");
      out.write("                                <a href=\"\">\n");
      out.write("                                    <img alt=\"\" src=\"img/HISTORIAL11.png\">\n");
      out.write("                                    <span class=\"label\"></span></a>\n");
      out.write("                                <h3 style=\"color:#4D8846; font-weight: bold\">Transferir Paciente</h3>\n");
      out.write("                            </header>\n");
      out.write("                            <p>Transferir un paciente a otro departamento</p>\n");
      out.write("                            <a href=\"TransferirPaciente.jsp\" class=\"button primary\">Acceder</a>\n");
      out.write("                        </div>\n");
      out.write("                    </section>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Scripts -->\n");
      out.write("        <script src=\"Principal/js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"Principal/js/browser.min.js\"></script>\n");
      out.write("        <script src=\"Principal/js/breakpoints.min.js\"></script>\n");
      out.write("        <script src=\"Principal/js/util.js\"></script>\n");
      out.write("        <script src=\"Principal/js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("</html>");
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
