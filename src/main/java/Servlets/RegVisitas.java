
package Servlets;

import Modelo.Registro_Visitas;
import Querys.Reg_Visitas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RegVisitas", urlPatterns = {"/RegVisitas"})
public class RegVisitas extends HttpServlet {
    Registro_Visitas rv = new Registro_Visitas();
    Reg_Visitas regv = new Reg_Visitas();
    Date fecha;

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
           String action = request.getParameter("accion");
        if(action.equalsIgnoreCase("Registar visita")){
               try {
                   String matricula = request.getParameter("mat");
                   String nombre = request.getParameter("nombre");
                   try {
                       fecha = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("fecha_env"));
                   } catch (ParseException ex) {
                       Logger.getLogger(RegVisitas.class.getName()).log(Level.SEVERE, null, ex);
                   }
                   rv.setMatricula(matricula);
                   rv.setNombre(nombre);
                   rv.setFecha(fecha);
                   regv.add(rv);
                   
               } catch (SQLException ex) {
                   Logger.getLogger(RegVisitas.class.getName()).log(Level.SEVERE, null, ex);
               }
              
        }
        RequestDispatcher vista = request.getRequestDispatcher("RegistroVisita.jsp");
        vista.forward(request, response);
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
