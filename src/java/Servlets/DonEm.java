
package Servlets;

import Modelo.Catalogo_Articulos;
import Modelo.Catalogo_PE_Deps;
import Modelo.RegistroDe_Componentes;
import Modelo.RegistroDe_PublicoGral;
import Modelo.Registro_Emision_Donaciones_Estudiantes;
import Modelo.Registro_Emision_Donaciones_PG;
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
public class DonEm extends HttpServlet {

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
            case "Guardar Datos Estudiante":
                guardar_estudiante(request, response);
                break;
            case "Guardar Datos Publico":
                guardar_publico(request, response);
                break;    
            case "Registrar_Donacion_Estudiante":
                registrar_donacion_estudiante(request, response);
                break;
            case "Registrar_Donacion_PublicoGral":
                registrar_donacion_publicogral(request, response);
                break;
            default:
                break;
        }
    }
    
    private void agregar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Controlador.Visitas vis = new Controlador.Visitas();
        ArrayList<Catalogo_PE_Deps> catalogo_pe = vis.obtenerPE();
        request.setAttribute("listaPE", catalogo_pe);
        Controlador.DonacionesEm art = new Controlador.DonacionesEm();
        ArrayList<Catalogo_Articulos> catalogo_articulo = art.obtenerArticulo();
        request.setAttribute("listaArticulo", catalogo_articulo);
        RequestDispatcher rd = request.getRequestDispatcher("./RegistroDE.jsp");
        rd.forward(request, response);
    }
    
     private void guardar_estudiante(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS_ESTUDIANTE");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Registro_Emision_Donaciones_Estudiantes datos_estudiante = gson.fromJson(objectJson, Registro_Emision_Donaciones_Estudiantes.class);
                Controlador.DonacionesEm donacion_estudiante = new Controlador.DonacionesEm();
                 donacion_estudiante.insertar_estudiante(datos_estudiante);
            }
            
        } catch (JsonSyntaxException e) {
            System.out.print(e);

        }
        
        
    }
     
     private void guardar_publico(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS_PUBLICOG");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                Registro_Emision_Donaciones_PG datos_publico = gson.fromJson(objectJson, Registro_Emision_Donaciones_PG.class);
                Controlador.DonacionesEm donacion_publico = new Controlador.DonacionesEm();
                 donacion_publico.insertar_publico(datos_publico);
            }
            
        } catch (JsonSyntaxException e) {
            System.out.print(e);

        }
        
        
    }
     
    private void registrar_donacion_estudiante(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS_ESTUDIANTE");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                RegistroDe_Componentes donacion_estudiante = gson.fromJson(objectJson, RegistroDe_Componentes.class);
                Controlador.DonacionesEm donacion = new Controlador.DonacionesEm();
                donacion.registar_donacion_Estudiante(donacion_estudiante);  
                
            }
            
        } catch (JsonSyntaxException e) {
            System.out.print(e);

        }
        
        
    }
    
   private void registrar_donacion_publicogral(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String objectJson = request.getParameter("DATOS_PUBLICOG");
            System.out.println(objectJson);
            if(objectJson==null){
                
            }else{
                Gson gson = new Gson();
                RegistroDe_PublicoGral donacion_publico = gson.fromJson(objectJson, RegistroDe_PublicoGral.class);
                Controlador.DonacionesEm donacion = new Controlador.DonacionesEm();
                donacion.registar_donacion_PublicoG(donacion_publico);  
                
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
