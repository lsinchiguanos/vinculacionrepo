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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>DIRECCION DE DESARROLLO SOCIAL </title>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\" />\n");
      out.write("    <link rel=\"icon\" type=\"img/logoblancod.ico\" href=\"img/logoblancod.ico\"/>\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/colores.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/materialize.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <script src=\"js/materialize.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"https://apis.google.com/js/platform.js\" async defer></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <form id=\"form1\" action=\"Login1\" name=\"frm1\"  autocomplete=\"off\">\n");
      out.write("        <!--Div del fondo colorido-->\n");
      out.write("        <div id=\"fondocolors\" style=\"background-color:black\">\n");
      out.write("            <!--Div para el logotipo-->\n");
      out.write("            <div id=\"divlogo\">\n");
      out.write("                <div id=\"logotipo\" style=\"display: inline-block\">\n");
      out.write("                    <img src=\"img/LOGO_DIRE\" alt=\"Alternate Text\">\n");
      out.write("                    <p>DIRECCION DE DESARROLLO SOCIAL</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!--Div para el título y subtítulo-->\n");
      out.write("            <div id=\"divtitulo\">\n");
      out.write("                <div id=\"divsubt\" style=\"opacity: 0\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!--Div de inicio de sesión-->\n");
      out.write("                <div class=\"divforlog\">\n");
      out.write("                    <!--Panel blanco inicio de sesión-->\n");
      out.write("                    <div id=\"divlogin\" style=\"display: inline-block\">\n");
      out.write("                        <!--Títulos-->\n");
      out.write("                        <p class=\"textgrueso\" style=\"padding-top:30px; text-align:center; width:100%; font-size:20px; color:#707070\">INICIO DE SESIÓN</p>\n");
      out.write("                        <img src=\"img/users.gif\" alt=\"\" style=\"height:150px; width: 180px; margin:auto; text-align:center; margin-top:5px\"/>\n");
      out.write("\n");
      out.write("                        <!--Nombre de usuario-->\n");
      out.write("                        <div class=\"input-field col s6\" style=\"margin-left:0px; margin-right:10px; margin-top:-1px; height:30px;\">\n");
      out.write("                            <img alt=\"\" src=\"img/icons8_User_Male_30px.png\" style=\"position:absolute; margin-left: 0px; margin-top:15px\"/>\n");
      out.write("                            <input id=\"usuario\" name=\"usuario\" class=\"validate\" type=\"text\" style=\"width:240px; margin-left:40px; margin-top:2px\">\n");
      out.write("                            <label for=\"UserName\" style=\"width:270px; margin-left:78px;\">\n");
      out.write("                                Nombre de usuario</label>\n");
      out.write("                        </div>\n");
      out.write("                        <!--Contraseña-->\n");
      out.write("                        <div class=\"input-field col s6\" style=\"margin-left:0px; margin-right:10px; margin-top:55px; height:30px; top: 0px; left: 0px;\">\n");
      out.write("                            <img alt=\"\" src=\"img/icons8_Lock_2_30px.png\" style=\"position:absolute; margin-left: 0px; margin-top:15px\"/>\n");
      out.write("                            <input id=\"clave\" class=\"validate\" type=\"password\"  name=\"clave\" style=\"width:240px; margin-left:40px; margin-top:2px\">\n");
      out.write("                            <label for=\"clave\" style=\"width:270px; margin-left:78px;\">\n");
      out.write("                                Contraseña</label>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <!--Boton de acceso-->\n");
      out.write("                        <button name=\"btn1\"  class=\"btnnew first\" style=\" justify-content: center; align-items: center; margin-left:0px; margin-bottom: 20px; margin-top:20px; width:50% \">INICIAR SESION</button>\n");
      out.write("                        <!--boton googl-->\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div style=\"position: absolute; width: 370px; margin-top:-10px; margin-left:3px;\">\n");
      out.write("                            <p style=\"color:black; background-color:white; font-family:sans-serif; font-size:11px; text-align:center\">\n");
      out.write("\n");
      out.write("                                <span>\n");
      out.write("\n");
      out.write("                                </span>\n");
      out.write("                            </p>\n");
      out.write("                            <p style=\"color:black; background-color:white; font-family:sans-serif; font-size:11px; text-align:center; margin-top:3px\">\n");
      out.write("                                <a id=\"LinkButton1\" class=\"waves-effect waves-light btn modal-trigger\" href=\"\">\n");
      out.write("                                    <strong style=\"color:#4D8846; font-size:16px; font-size: 85%\" class=\"textgrueso\">Recuperar Contraseña</strong>\n");
      out.write("                                </a>\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                        <!--Final panel blanco inicio de sesión-->\n");
      out.write("                    </div>\n");
      out.write("                    <!--Final div inicio de sesión-->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"diviconos\">\n");
      out.write("                <!--Párrafo con centrado vertical-->                                \n");
      out.write("                <p>\n");
      out.write("                    <img src=\"img/estruc.png\" alt=\"Alternate Text\" style=\"height:18px; width:18px; margin-left:-20px\" />\n");
      out.write("                <center><strong style=\"color:#4D8846; font-size:16px; font-size: 190%\" class=\"textgrueso\">&nbsp&nbsp MÓDULOS PARA CADA DEPARTAMENTO</strong></center>\n");
      out.write("                </p>\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <img src=\"img/departamentos.png\" alt=\"\" style=\"display:block; margin:auto; text-align:center\"/>\n");
      out.write("                    <p style=\"color:#4D8846; font-size:16px\" class=\"textgrueso\">DEPARTAMENTOS</p>\n");
      out.write("                    <p>Se proporcionara información diferente por cada departamento</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <img src=\"img/REPORTESSS.png\" alt=\"\" style=\"display:block; margin:auto; text-align:center\"/>\n");
      out.write("                    <p style=\"color:#4D8846; font-size:16px\" class=\"textgrueso\">Reportes</p>\n");
      out.write("                    <p>Mostrar informe de las actividades de acuerdo a cada departamento</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <img src=\"img/HISTORIAL11.png\" alt=\"\" style=\"display:block; margin:auto; text-align:center\"/>\n");
      out.write("                    <p style=\"color:#4D8846; font-size:16px\" class=\"textgrueso\">Historial</p>\n");
      out.write("                    <p>Mostrar la información de las actividades de acuerdo a cada departamento</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!--REGISTRAR MODAL-->   \n");
      out.write("    <div id=\"modal1\" class=\"modal\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <h4>cvbnmk,l</h4>\n");
      out.write("            <p>cvbnm,./</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal-footer\">\n");
      out.write("            <a href=\"#!\" class=\" btn modal-close \">Cerrar</a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</form>\n");
      out.write("<script>\n");
      out.write("    document.addEventListener('DOMContentLoaded', function () {\n");
      out.write("        var elems = document.querySelectorAll('.modal');\n");
      out.write("        var instances = M.Modal.init(elems);\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
