
package Servlets;

import Modelo.Catalogo_Origen;
import Modelo.Categorias_RE;
import Modelo.Recepcion_RE;
import Modelo.Registro_Recepcion_Donaciones;
import Modelo.Residuos_Electronicos;
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

/**
 *
 * @author Alvaro
 */
@WebServlet(name = "DonRec", urlPatterns = {"/DonRec"})
public class DonRec extends HttpServlet {

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
            case "Registrar":
                registrar(request, response);
                break;  
            default:
                break;
        }
   
    }
    
    
     private void agregar(HttpServletRequest request, HttpServletResponse response) {

        try {
            Controlador.Donaciones donr = new Controlador.Donaciones();
            ArrayList<Catalogo_Origen> catalogo_ori = donr.obtenerOrigen();
            request.setAttribute("listaOrigen", catalogo_ori);
            ArrayList<Categorias_RE> catalogo_cat = donr.obtenerCategoria();
            request.setAttribute("listaCategorias", catalogo_cat);
            ArrayList<Residuos_Electronicos> catalogo_re = donr.obtenerRE();
            request.setAttribute("listaRE", catalogo_re);
            

            RequestDispatcher rd = request.getRequestDispatcher("./RegistroDR.jsp");
            rd.forward(request, response);
        } catch (IOException | ServletException e) {
            System.out.print(e);
        }
    }
     
   private void guardar(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Registro_Recepcion_Donaciones datos = gson.fromJson(objectJson, Registro_Recepcion_Donaciones.class);
                Controlador.Donaciones donacion = new Controlador.Donaciones();
                donacion.insertar(datos);  
                
            }
            
        } catch (JsonSyntaxException e) {
            System.out.print(e);

        }
        
        
    }
   
      private void registrar(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Recepcion_RE datos = gson.fromJson(objectJson, Recepcion_RE.class);
                Controlador.Donaciones donacion = new Controlador.Donaciones();
                donacion.registar_recepcion(datos);  
                
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
