/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Aqui se reciven las variables de el index por medio del name
        //request.getParameter dice que se recivira un parametro
       String DNI = request.getParameter("dni");
       String Nombre = request.getParameter("nombre");
       String Apellido = request.getParameter("apellido");
       String Telefono = request.getParameter("telefono");
       System.out.println("Nombre: "+Nombre);
       System.out.println("DNI: "+DNI);
       System.out.println("Apellido: "+Apellido);
       System.out.println("Telefono: "+Telefono);
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
