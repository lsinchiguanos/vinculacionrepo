package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class TransferirPaciente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>TRANSFERIR PACIENTE</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Principal/css/main.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/CSS_Transferir.css\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"is-preload\">\n");
      out.write("        <header id=\"header\" style=\"\">\n");
      out.write("\n");
      out.write("            <a class id=\"ulUserData\" href=\"index.html\"></a>\n");
      out.write("            <nav>\n");
      out.write("                <a href=\"cerrar.jsp\" style=\"color:white\" >Cerrar sesión</a>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <section class=\"form-register\">\n");
      out.write("            <h4>Formulario Transferir Paciente</h4>\n");
      out.write("            <input class=\"controls\" type=\"text\" name=\"cedula\" id=\"Cedula\" placeholder=\"Ingrese la cedula\">\n");
      out.write("            <input class=\"controls\" type=\"text\" name=\"nombres\" id=\"nombres\" placeholder=\"Nombre\">\n");
      out.write("            <input class=\"controls\" type=\"text\" name=\"apellidos\" id=\"apellidos\" placeholder=\"Apellido\">\n");
      out.write("            <input class=\"controls\" type=\"text\" name=\"edad\" id=\"correo\" placeholder=\"Edad\">\n");
      out.write("            <select name=\"TransDepartamento\">\n");
      out.write("                <option>.....</option>\n");
      out.write("                <option>D1</option>\n");
      out.write("                <option>D2</option>\n");
      out.write("                <option>D3</option>\n");
      out.write("                <option>D4</option>\n");
      out.write("                <option>D5</option>\n");
      out.write("                <option>D6</option>\n");
      out.write("            </select>\n");
      out.write("            <br>\n");
      out.write("            <input class=\"controls\" type=\"text\" name=\"CodigoDepartamento\" id=\"correo\" placeholder=\"codigo\">            \n");
      out.write("            OBSERVACION: \n");
      out.write("            <textarea></textarea>\n");
      out.write("            <center><input class=\"botons\" type=\"submit\" value=\"Transferir\"></center>\n");
      out.write("        </section>\n");
      out.write("\n");
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
