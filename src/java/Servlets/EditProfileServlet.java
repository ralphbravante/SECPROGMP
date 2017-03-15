package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ralph
 */
@WebServlet(urlPatterns = {"/EditProfileServlet"})
public class EditProfileServlet extends HttpServlet {

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
            out.println("<title>Servlet EditProfileServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditProfileServlet at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);

        String lastname = request.getParameter("editLastname");
        String firstname = request.getParameter("editFirstname");
        String MI = request.getParameter("editMI");
        String username = request.getParameter("editUsername");
        String email = request.getParameter("editEmail");
        String mobileNum = request.getParameter("editMobileNumber");
        String deliveryAdd = request.getParameter("editDeliveryAdd");
        String billingAdd = request.getParameter("editBillingAdd");
        int status =  Integer.parseInt(request.getParameter("editStatus"));
        String presentUsername = request.getParameter("presentUsername");
        
        PreparedStatement pst = null;
        String userName = null;
        System.out.println("THis is the status of the user  " + status);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

            pst = connection.prepareStatement("UPDATE `secprog`.`user` SET userLast=? , userFirst=?, userMI=?, userUsername=?, userEmail=?, userBillingAdd=?, userDeliveryAdd=?, userContactNum=?, userStatus=?, userEditDateTime=? WHERE userUsername = ?;");
            java.util.Date dt = new java.util.Date();
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String currentTime = sdf.format(dt);

            System.out.println("THIS IS THE ATTRBUTE OF SESSION!!!! " + presentUsername);

            pst.setString(1, lastname);
            pst.setString(2, firstname);
            pst.setString(3, MI);
            pst.setString(4, username);
            pst.setString(5, email);
            pst.setString(6, billingAdd);
            pst.setString(7, deliveryAdd);
            pst.setString(8, mobileNum);
            pst.setInt(9, status);
            pst.setString(10, currentTime);
            pst.setString(11,  presentUsername);
            pst.executeUpdate();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EditProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.getRequestDispatcher("Admin.jsp").forward(request, response);

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
