package Servlets;

import Modelo.Usuario_Login;
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
public class User_Login extends HttpServlet {
    int r = 0;
    Usuario_Login usuario = new Usuario_Login();
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
            case "Entrar":
                valida_usuario(request, response);
                break;
//            case "Eliminar Material":
//                eliminar_material(request, response);
//                break;
//            case "Registrar Actividad":
//                registrar_actividad(request, response);
//                break;
//            case "Registrar Articulo":
//                 registrar_art(request, response);
//                break;   
            default:
                break;
        }
        
        
//        if(accion.equals("Entrar")){
//           String nom=request.getParameter("uname");
//           String pwd=request.getParameter("psw");
//           usuario.setUsuario(nom);
//           usuario.setPassword(pwd);
//           Controlador.Login_Usuario validacion = new Controlador.Login_Usuario();
//           r = validacion.valida_usuario(usuario);
//
//            if(r==1){
//                int tipo = usuario.getTipo_usuario();
//                String nombre = usuario.getNombre();
//                if(tipo == 1){
//                    request.getSession().setAttribute("nom", nombre);
//                    request.getRequestDispatcher("./vistaRapida.jsp").forward(request, response);
//                }
//                if(tipo == 2){
//                    request.getSession().setAttribute("nom", nombre);
//                    request.getRequestDispatcher("./vistaRapida_1.jsp").forward(request, response);
//                }
//                if(tipo == 3){
//                    request.getSession().setAttribute("nom", nombre);
//                    request.getRequestDispatcher("./vistaRapida_2.jsp").forward(request, response);
//                }
//            }else{
//                request.getRequestDispatcher("./EQReco.jsp").forward(request, response);
//            }
//       }else{
//           request.getRequestDispatcher("./EQReco.jsp").forward(request, response);
//       }

    }
    
    private void agregar(HttpServletRequest request, HttpServletResponse response) {

        try {
            
            RequestDispatcher rd = request.getRequestDispatcher("./EQReco.jsp");
            rd.forward(request, response);
        } catch (IOException | ServletException e) {
            System.out.print(e);
        }
    }
    
    private void valida_usuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           String nom=request.getParameter("uname");
           String pwd=request.getParameter("psw");
           usuario.setUsuario(nom);
           usuario.setPassword(pwd);
           Controlador.Login_Usuario validacion = new Controlador.Login_Usuario();
           r = validacion.valida_usuario(usuario);

            if(r==1){
                int tipo = usuario.getTipo_usuario();
                String nombre = usuario.getNombre();
                if(tipo == 1){
                    request.getSession().setAttribute("nom", nombre);
                    request.getRequestDispatcher("./vistaRapida.jsp").forward(request, response);
                }
                if(tipo == 2){
                    request.getSession().setAttribute("nom", nombre);
                    request.getRequestDispatcher("./vistaRapida_1.jsp").forward(request, response);
                }
                if(tipo == 3){
                    request.getSession().setAttribute("nom", nombre);
                    request.getRequestDispatcher("./vistaRapida_2.jsp").forward(request, response);
                }
            }else{
                request.getRequestDispatcher("./EQReco.jsp").forward(request, response);
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
