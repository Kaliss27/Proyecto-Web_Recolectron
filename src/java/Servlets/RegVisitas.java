
package Servlets;

import Modelo.Catalogo_PE_Deps;
import Modelo.Catalogo_Visitas;
import Modelo.Registro_Visitas;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RegVisitas", urlPatterns = {"/RegVisitas"})
public class RegVisitas extends HttpServlet {

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

    private void agregar(HttpServletRequest request, HttpServletResponse response) {

        try {
            Controlador.Visitas vis = new Controlador.Visitas();
            ArrayList<Catalogo_PE_Deps> catalogo_pe = vis.obtenerPE();
            request.setAttribute("listaPE", catalogo_pe);
            ArrayList<Catalogo_Visitas> visitas = vis.obtenerVisitas();
            request.setAttribute("listavisits", visitas);

            RequestDispatcher rd = request.getRequestDispatcher("RegistroVisita.jsp");
            rd.forward(request, response);
        } catch (IOException | ServletException e) {
            System.out.print(e);
        }
    }
    
     private void guardar(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS");
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Registro_Visitas visita = gson.fromJson(objectJson, Registro_Visitas.class);
                Controlador.Visitas visitas = new Controlador.Visitas();
                visitas.insertar(visita);  
                
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
