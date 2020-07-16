
package Servlets;

import Modelo.Categorias_RE;
import Modelo.Estados;
import Modelo.Residuos_Electronicos;
import Modelo.Vista_Inventario;
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
