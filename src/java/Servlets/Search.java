package Servlets;


import Services.AccountServices;
import Beans.Accounts;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ralph
 */
@WebServlet(urlPatterns = {"/Search"})
public class Search extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Search</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Search at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        response.getWriter().append("Served at: ").append(request.getContextPath());
		
        String username = request.getParameter("SearchUsername");
        System.out.println("this is the content of search bar " + username);
        Accounts aResult = AccountServices.getAccount(username);

        if(aResult != null){
            System.out.println("userID is   as;dkfjalsjflaksdjflkasjdjfajsdkf      ###### " + aResult.getID());
            System.out.println("lastname:" + aResult.getLastName());
            System.out.println("firstname:" + aResult.getFirstName());
            System.out.println("mi:" + aResult.getMI());
            System.out.println("username:" + aResult.getUsername());
            System.out.println("password:" + aResult.getPassword());
            System.out.println("mobilenumber:" + aResult.getMobileNumber());
            System.out.println("email:" + aResult.getEmailAddress());
            System.out.println("billadd:" + aResult.getBillingAddress());
            System.out.println("deladd:" + aResult.getDeliveryAddress());
            System.out.println("staus:" + aResult.getStatus());
            
        }
        
        request.setAttribute("aResult", aResult);
        request.getRequestDispatcher("/Admin.jsp").forward(request, response);
        
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
