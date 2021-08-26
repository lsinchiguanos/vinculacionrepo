/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.medcinaGeneralGuardar;
import DAO.AgregarMedicinaGeneral;

/**
 *
 * @author jean
 */
@WebServlet(name = "AddMedicinaGeneral", urlPatterns = {"/AddMedicinaGeneral"})
public class AddMedicinaGeneral extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String TipoIden = request.getParameter("cedula");
            String Identificacion = request.getParameter("estatura");
            String PrimerNombre = request.getParameter("peso");
            String SegundoNombre = request.getParameter("sangre");
            String PrimerApellido = request.getParameter("pc");
            String SegundoApellido = request.getParameter("pt");
            String Fechadenacimiento = request.getParameter("pa");
            String CorreoElectronico = request.getParameter("AAl");
            String convencional = request.getParameter("AP");
            String Celular = request.getParameter("AF");
            String Provincia = request.getParameter("Aq");
            String canton = request.getParameter("fecha");
            String Direccion = request.getParameter("mc");
            String parroquia = request.getParameter("Ep");
            String estadoCivil = request.getParameter("diagnostico");
            String Ayuda1 = request.getParameter("CargarArchivo");
            if (!TipoIden.equalsIgnoreCase("")&&!Identificacion.equalsIgnoreCase("") && !PrimerNombre.equalsIgnoreCase("") && !SegundoNombre.equalsIgnoreCase("") && !PrimerApellido.equalsIgnoreCase("") && !SegundoApellido.equalsIgnoreCase("")
                    && !Fechadenacimiento.equalsIgnoreCase("") && !CorreoElectronico.equalsIgnoreCase("") && !convencional.equalsIgnoreCase("") && !Celular.equalsIgnoreCase("")
                    && !Provincia.equalsIgnoreCase("") && !canton.equalsIgnoreCase("") && !Direccion.equalsIgnoreCase("")
                    && !parroquia.equalsIgnoreCase("") && !estadoCivil.equalsIgnoreCase("") && !Ayuda1.equalsIgnoreCase("")) {
                medcinaGeneralGuardar medicina = new medcinaGeneralGuardar(TipoIden, Identificacion, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Fechadenacimiento, CorreoElectronico, convencional, Celular, Provincia, canton, Direccion, parroquia, estadoCivil, Ayuda1);
                boolean sw = AgregarMedicinaGeneral.agregarUsuario(medicina);
                if (sw) {
                    response.sendRedirect("Principal.jsp");
//                    request.getRequestDispatcher("Principal.jsp").forward(request, response);
                } else {
//                    out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud.");
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
