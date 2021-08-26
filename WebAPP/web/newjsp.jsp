<%@page import="java.sql.ResultSet"%>
<%@page import="BD.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
 
    <title>WebApp - Medicina General</title>
</head>
<body>
    <header id="header" style=" background: #007653 !important;">
        <a class="logo" href="Principal.jsp">
            <img style="margin-top:8px"src="img/circled_left_30px.png" title="Ir a la página anterior" alt="logo">
        </a>

        <nav class="nav-tp"></nav>
    </header>     
    <div class="div-head-tittle"><h2></h2></div>


    <form id="form1">
        <input type="number" id="txt-estatura" class="inp-ced" placeholder="Estatura" name="cedula"/>
        <input type="number" id="txt-estatura" class="inp-ced" placeholder="Estatura" name="Estatura"/>
        <input type="text" id="txt-peso" class="inp-name" placeholder="Peso" name="peso"/>
        <input type="text" id="txt-tiposangree" class="inp-lname" placeholder="Tipo de Sangre" name="sangre"/>
        <input type="text" id="txt-pc" class="inp-lname" placeholder="P/C" name="pc"/>
        <input type="text" id="txt-pt" class="inp-lname" placeholder="P/T" name="pt"/>
        <input type="text" id="txt-pa" class="inp-lname" placeholder="P/A" name="pa"/>
        <input type="text" id="txt-aalergic" class="inp-lname" placeholder="Antecedentes alérgicos" name="AAl"/>
        <input type="text" id="txt-apersonales" class="inp-lname" placeholder="Antecedentes personales" name="AP"/>
        <input type="text" id="txt-afamiliares" class="inp-lname" placeholder="Antecedentes familiares" name="AF"/>
        <input type="text" id="txt-aquirurgicos" class="inp-lname" placeholder="Antecedentes quirurgicos" name="Aq"/>
        <input type="date" id="txt-motivocon" class="inp-lname" placeholder="Fecha" name="Fecha"/>
        <input type="text" id="txt-motivocon" class="inp-lname" placeholder="Motivo de consulta" name="mc"/>
        <input type="text" id="txt-enfermedad" class="inp-lname" placeholder="Enfermedad o problema actual" name="Enfer"/> 
        <input type="text" id="txt-enfermedad" class="inp-lname" placeholder="Diagnostico" name="diagnostico"/>
        <select class="sel-dep-to-transf" name="tipo">
            <option>Diagnostico</option>
            <option>Preventivo</option>
            <option>Definitivo</option>
        </select>
        <input type="text" id="txt-datoexamen" class="inp-lname" placeholder="Datos de examen" name="CargarArchivo"/>
        <input type="submit" id="btn-action" class="btn-accept" value="Guardar"/>
        <input type="button" id="btn-action" class="btn-accept" value="Cancelar"/>



        <%
            PreparedStatement pst;
            conexion cn = new conexion();
            ResultSet rs;
            PreparedStatement ps;
            String sql;
            String dni, Pnom, Snom, telefono, direccion, provincia, canton, parroquia, email, ap, af, aq, fecha, mc, ep, diag, tipo, cargar;
            dni = request.getParameter("cedula");
            Pnom = request.getParameter("Estatura");
            Snom = request.getParameter("peso");
            telefono = request.getParameter("sangre");
            direccion = request.getParameter("pc");
            provincia = request.getParameter("pt");
            canton = request.getParameter("pa");
            parroquia = request.getParameter("AAl");
            ap = request.getParameter("AP");
            af = request.getParameter("AF");
            aq = request.getParameter("Aq");
            fecha = request.getParameter("Fecha");
            mc = request.getParameter("mc");
            ep = request.getParameter("Enfer");
            diag = request.getParameter("diagnostico");
            tipo = request.getParameter("tipo");
            cargar = request.getParameter("CargarArchivo");

            if (Pnom != null && Snom != null && telefono != null && direccion != null && provincia != null && canton != null && parroquia != null && ap != null
                    && af != null && aq != null && fecha != null && mc != null && ep != null && diag != null && tipo != null && cargar != null) {
                ps = cn.getConecction().prepareStatement("insert into medicinageneral( paciente_dni, estatura, peso, tipossangre,"
                        + "pc, pt, pa, antecedentesalergicos, antecedentespersonales, antecedentesfamiliares,"
                        + "antecedentesquirurgicos, fechaconsulta, motivoconsulta, enfermedad, "
                        + "diagnositico,tipo, cargararchivo)values('"+dni+"','" + Pnom + "','" + Snom + "','" + telefono + "',"
                                + "'" + direccion + "','" + provincia + "','" + canton + "','" + parroquia + "','" + ap + "','" + af + "',"
                                        + "'" + aq + "','" + fecha + "','" + mc + "','" + ep + "','" + diag + "','" + tipo + "','" + cargar + "');");
                ps.executeUpdate();
                response.sendRedirect("Principal.jsp");
            }


        %>
    </form> 


</body>


</html> 