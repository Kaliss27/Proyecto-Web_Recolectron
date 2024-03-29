
package Servlets;

import Modelo.Permisos_Usuario;
import Modelo.Usuario_Login;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alvaro
 */
public class Acceso_Users extends HttpServlet {
    int r=0;
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
        String accion = request.getParameter("ACCION");
        switch (accion) {
           case "Validar Usuario":
                valida_usuario(request, response);
                break;

            default:
                break;
        }
        
    }
    
   private void valida_usuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String objectJson = request.getParameter("DATOS");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Usuario_Login usuario = gson.fromJson(objectJson, Usuario_Login.class);
                Controlador.Login_Usuario validacion = new Controlador.Login_Usuario();
                r = validacion.valida_usuario(usuario); 
                if (r == 1) {
                    int tipo = usuario.getTipo_usuario();
                    String nombre = usuario.getNombre();
                    if (tipo == 1) {
                        request.getSession().setAttribute("nom", nombre);
                        request.getRequestDispatcher("./vistaRapida.jsp").forward(request, response);
                    }
                    if (tipo == 2) {
                        request.getSession().setAttribute("nom", nombre);
                        request.getRequestDispatcher("./vistaRapida_1.jsp").forward(request, response);
                    }
                    if (tipo == 3) {
                        request.getSession().setAttribute("nom", nombre);
                        request.getRequestDispatcher("./vistaRapida_2.jsp").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("./EQReco.jsp").forward(request, response);
                }
            }
            
        } catch (JsonSyntaxException e) {
            System.out.print(e);

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
