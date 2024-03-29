
package Servlets;

import Modelo.Categorias_RE;
import Modelo.Estados;
import Modelo.Inventario_RE;
import Modelo.Residuos_Electronicos;
import Modelo.Vista_Inventario;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.IOException;
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
public class Inventario_Admin extends HttpServlet {

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
            case "Editar Inventario":
                editar_inventario(request, response);
                break;
            case "Eliminar":
                eliminar(request, response);
                break;
            case "Registrar Residuo":
                registrar_re(request, response);
                break;
            case "Registrar Articulo":
                 registrar_art(request, response);
                break;   
            default:
                break;
        }
        
        
    }
    
     private void agregar(HttpServletRequest request, HttpServletResponse response) {

        try {
            Controlador.Inventario_Principal inventario = new Controlador.Inventario_Principal();
            ArrayList<Vista_Inventario> articulos = inventario.obtenerArticulos();
            request.setAttribute("listaInventario", articulos);
            ArrayList<Estados> estados = inventario.obtenerEstados();
            request.setAttribute("listaEstados", estados);
            Controlador.DonacionesRe donr = new Controlador.DonacionesRe();
            ArrayList<Categorias_RE> catalogo_cat = donr.obtenerCategoria();
            request.setAttribute("listaCategorias", catalogo_cat);
            ArrayList<Residuos_Electronicos> catalogo_re = donr.obtenerRE();
            request.setAttribute("listaRE", catalogo_re);
            
            

            RequestDispatcher rd = request.getRequestDispatcher("./inventarioReco.jsp");
            rd.forward(request, response);
        } catch (IOException | ServletException e) {
            System.out.print(e);
        }
    }
     
   private void editar_inventario(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Inventario_RE inventario = gson.fromJson(objectJson, Inventario_RE.class);
                Controlador.Inventario_Principal donacion = new Controlador.Inventario_Principal();
                donacion.editar_inv(inventario);  
                
            }
            
        } catch (JsonSyntaxException e) {
            System.out.print(e);

        }
        
        
    }
   
  private void eliminar(HttpServletRequest request, HttpServletResponse response){    
        try{
            String id = request.getParameter("id_eliminar");
            Controlador.Inventario_Principal inventario = new Controlador.Inventario_Principal();
            inventario.eliminar(Integer.valueOf(id));
        }catch(NumberFormatException e){
            System.out.print(e);
        }     
    }
  
  private void registrar_re(HttpServletRequest request, HttpServletResponse response) {
        try {
            String objectJson = request.getParameter("DATOS");
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Residuos_Electronicos residuo = gson.fromJson(objectJson, Residuos_Electronicos.class);
                Controlador.Inventario_Principal inventario = new Controlador.Inventario_Principal();
                inventario.registrar_residuo(residuo);  
                
            }
            
        } catch (JsonSyntaxException e) {
            System.out.print(e);

        }
        
        
    }
  
  private void registrar_art(HttpServletRequest request, HttpServletResponse response) {
        try {
            String objectJson = request.getParameter("DATOS");
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Inventario_RE articulo = gson.fromJson(objectJson, Inventario_RE.class);
                Controlador.Inventario_Principal inventario = new Controlador.Inventario_Principal();
                inventario.registrar_articulo(articulo);  
                
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
