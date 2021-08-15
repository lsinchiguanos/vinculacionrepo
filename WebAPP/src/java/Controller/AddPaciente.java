/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.InsertAddPaciente;
import Model.ControladorPaciente;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jean
 */
@WebServlet(name = "AddPaciente", urlPatterns = {"/AddPaciente"})
public class AddPaciente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String TipoIden = request.getParameter("TipoIden");
            String Identificacion = request.getParameter("Identificacion");
            String PrimerNombre = request.getParameter("PrimerNombre");
            String SegundoNombre = request.getParameter("SegundoNombre");
            String PrimerApellido = request.getParameter("PrimerApellido");
            String SegundoApellido = request.getParameter("SegundoApellido");
            String Fechadenacimiento = request.getParameter("Fechadenacimiento");
            String CorreoElectronico = request.getParameter("CorreoElectronico");
            String convencional = request.getParameter("convencional");
            String Celular = request.getParameter("Celular");
            String Provincia = request.getParameter("Provincia");
            String canton = request.getParameter("canton");
            String Direccion = request.getParameter("Direccion");
            String parroquia = request.getParameter("parroquia");
            String estadoCivil = request.getParameter("estadoCivil");
            String Ayuda = request.getParameter("Ayuda");
            if(Ayuda.equals("si"))
            {
                Ayuda = "1";
            }
            else
            {
                Ayuda = "0";
            }
            String nacionalidad = request.getParameter("nacionalidad");
            String discapacidad = request.getParameter("discapacidad");
            String tipoSangre = request.getParameter("tipoSangre");
            String genero = request.getParameter("genero");
            Calendar fecha = new GregorianCalendar();
            java.sql.Date d1 = new Date(Calendar.getInstance().getTimeInMillis());
            Date d = d1;
            String estado = "1";

            if (!TipoIden.equalsIgnoreCase("") && !Identificacion.equalsIgnoreCase("") && !PrimerNombre.equalsIgnoreCase("") && !PrimerApellido.equalsIgnoreCase("") && !SegundoApellido.equalsIgnoreCase("")
                    && !Fechadenacimiento.equalsIgnoreCase("") && !CorreoElectronico.equalsIgnoreCase("") && !convencional.equalsIgnoreCase("") && !Celular.equalsIgnoreCase("")
                    && !Provincia.equalsIgnoreCase("") && !canton.equalsIgnoreCase("") && !Direccion.equalsIgnoreCase("")
                    && !parroquia.equalsIgnoreCase("") && !estadoCivil.equalsIgnoreCase("") && !Ayuda.equalsIgnoreCase("")
                    && !nacionalidad.equalsIgnoreCase("") && !discapacidad.equalsIgnoreCase("") && !tipoSangre.equalsIgnoreCase("") && !SegundoNombre.equalsIgnoreCase("")
                    && !genero.equalsIgnoreCase("") && d != null && !estado.equalsIgnoreCase("")) {
                ControladorPaciente busuario = new ControladorPaciente(TipoIden, Identificacion, PrimerApellido, PrimerNombre, Fechadenacimiento, Direccion, Celular, genero, discapacidad,
                        Ayuda, d, SegundoApellido, SegundoNombre, estado, Provincia, canton, parroquia, nacionalidad, estadoCivil, convencional, tipoSangre);
                boolean sw = InsertAddPaciente.agregarUsuario(busuario);
                if (sw) {
                    request.getRequestDispatcher("Principal.jsp").forward(request, response);
                } else {
                    out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud.");
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
