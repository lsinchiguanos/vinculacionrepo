<%-- 
    Document   : file-list
    Created on : 18 Oct, 2018, 8:11:09 PM
    Author     : Dharmesh Mourya
--%>

<%@page import="BD.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <br><br><br>
    <center>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
        <table border="2">
            <tr>
                <th>ID</th><th>First Name</th><th>Last Name</th><th>File Name</th><th>File Path</th><th>Download</th>
            </tr>
            <%
                conexion c = new conexion();
            String sql = "select * from medicinageneral";
            ps = c.getConecction().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(19)%></td>
                <td><%=rs.getString(20)%></td>
                <td><a href="DownloadServlet?fileName=<%=rs.getString("cargararchivo")%>">Download</a></td>
            </tr>
            <%
                }
            %>
            
        </table><br>
        <a href="index.jsp">Home</a>
    </center>
    </body>
</html>
