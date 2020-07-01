
package Servlets;

import Modelo.Eventos;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alvaro
 */
public class EventosReco extends HttpServlet {

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
            case "AGREGAR":
                agregar(request, response);
                break;
            case "Guardar":
                guardar(request, response); 
                break;    
            default:
                break;
        }
    }
    
     private void agregar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       
        RequestDispatcher rd = request.getRequestDispatcher("./Eventos.jsp");
        rd.forward(request, response);
    }
     
      private void guardar(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Eventos evento = gson.fromJson(objectJson, Eventos.class);
                Controlador.Eventos_Reco eventos = new Controlador.Eventos_Reco();
                eventos.insertar(evento);  
                
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
