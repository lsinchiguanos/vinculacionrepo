package Controller;

import DAO.Insertarecetamedica;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class NewServle extends HttpServlet {

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
        String op = request.getParameter("op");
        HttpSession sesion = request.getSession();
        PrintWriter out = response.getWriter();
        switch (op) {
            case "1":
                String cedula = request.getParameter("cedula");
                //Integer galenoid = resquest.getParameter("");
                Insertarecetamedica buscar1 = new Insertarecetamedica();
                String jsons = new Gson().toJson(buscar1.Listbuscarpaciente1(cedula));
                System.out.print(jsons);
                //  sesion.setAttribute("DatePaciente", json);
                // Establece el tipo de respuesta en formato json
                response.setContentType("text/javascript");
                response.getWriter().print(jsons);
                break;

            case "2":
                String users = request.getParameter("user");
                Insertarecetamedica buscau = new Insertarecetamedica();
                String jsonnn = new Gson().toJson(buscau.Listbuscarm(users));
                System.out.print(jsonnn);
                response.setContentType("text/javascript");
                response.getWriter().print(jsonnn);
                break;
            case "3":
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                String x = dtf.format(LocalDateTime.now());            ////datos de encabezado          

                String idDoctor = request.getParameter("galenoid");
                String pacienteid = request.getParameter("pacienteid"); 
                Insertarecetamedica insertarreceta = new Insertarecetamedica();
                int id_encabezado = insertarreceta.agregarrecetamedicaencabezado(idDoctor, pacienteid, x);

                String medicamento = "";
                String indicaciones = "";

                insertarreceta.agregarrecetamedicadetalle(id_encabezado, medicamento, indicaciones);
              
                //JsonParser jsondetalle = new JsonParse();
                ////VALIDAR LOS TEXT
                break;

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
