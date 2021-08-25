package Controller; 
import DAO.Buscador;
import Model.BuscadorPaciente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Buscarpacientee extends HttpServlet {

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
        String cedula = request.getParameter("cedula");
        Buscador buscar = new Buscador();
        buscar.Listbuscarpaciente(cedula);

        int paciente_dni = Integer.valueOf(request.getParameter("paciente_dni"));
        String paciente_primer_segundo_nombre = String.valueOf(request.getParameter("nombre"));
        String paciente_primer_segundo_apellido = String.valueOf(request.getParameter("apellido"));
        String paciente_fnacimiento = String.valueOf(request.getParameter("paciente_fnacimiento"));
        int paciente_convencional = Integer.valueOf(request.getParameter("paciente_convencional"));
        int paciente_telefono = Integer.valueOf(request.getParameter("paciente_telefono"));
        String paciente_provincia = String.valueOf(request.getParameter("paciente_provincia"));
        String paciente_direccion = String.valueOf(request.getParameter("paciente_direccion"));
        String paciente_genero = String.valueOf(request.getParameter("paciente_genero"));
        String paciente_ayudasocial = String.valueOf(request.getParameter("paciente_ayudasocial"));
        String paciente_nacionalidad = String.valueOf(request.getParameter("paciente_nacionalidad"));
        String paciente_tipo_sangre = String.valueOf(request.getParameter("paciente_tipo_sangre"));

        BuscadorPaciente newbuscar = new BuscadorPaciente();
        newbuscar.setPaciente_dni(paciente_dni);
        newbuscar.setPaciente_primer_segundo_nombre(paciente_primer_segundo_nombre);
        newbuscar.setPaciente_primer_segundo_apellido(paciente_primer_segundo_apellido);
        newbuscar.setPaciente_fnacimiento(paciente_fnacimiento);
        newbuscar.setPaciente_convencional(paciente_convencional);
        newbuscar.setPaciente_telefono(paciente_telefono);
        newbuscar.setPaciente_provincia(paciente_provincia);
        newbuscar.setPaciente_direccion(paciente_direccion);
        newbuscar.setPaciente_genero(paciente_genero);
        newbuscar.setPaciente_ayudasocial(paciente_ayudasocial);
        newbuscar.setPaciente_nacionalidad(paciente_nacionalidad);
        newbuscar.setPaciente_tipo_sangre(paciente_tipo_sangre);
 
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
