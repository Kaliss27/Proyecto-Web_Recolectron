
package Servlets;

import Modelo.Registro_Actividades;
import Modelo.Vista_Actividades;
import Modelo.Vista_Material;
import Modelo.Vista_Material_Revision;
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
public class Actividades_Admin extends HttpServlet {

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
//            case "Editar Inventario":
//                editar_inventario(request, response);
//                break;
//            case "Eliminar":
//                eliminar(request, response);
//                break;
//            case "Registrar Residuo":
//                registrar_re(request, response);
//                break;
//            case "Registrar Articulo":
//                 registrar_art(request, response);
//                break;   
            default:
                break;
        }
        
        
        
        
    }
    
    private void agregar(HttpServletRequest request, HttpServletResponse response) {

        try {
            Controlador.Actividades_Principal acti = new Controlador.Actividades_Principal();
            ArrayList<Vista_Actividades> actividades = acti.obtenerActividad();
            request.setAttribute("listaActividades", actividades);
            ArrayList<Vista_Material> materiales = acti.obtenerMaterial();
            request.setAttribute("listaMateriales", materiales);
            ArrayList<Vista_Material_Revision> materiales_rev = acti.obtenerMaterial_Revision();
            request.setAttribute("listaMaterialesRev", materiales_rev);
            
            
            RequestDispatcher rd = request.getRequestDispatcher("./actividades.jsp");
            rd.forward(request, response);
        } catch (IOException | ServletException e) {
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
