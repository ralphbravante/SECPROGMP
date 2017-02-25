
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jason_000
 */
@WebServlet(urlPatterns = {"/Settings"})
public class Settings extends HttpServlet {

    DBAccess DB = new DBAccess();

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
            out.println("<title>Servlet Settings</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Settings at " + request.getContextPath() + "</h1>");
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
        
        ResultSet rs;
        String Lastname;
        String Firstname;
        String MI;
        String Username;
        String Password;
        String Email;
        String Contact;
        String BillingAddress;
        String DeliveryAddress;
        
            processRequest(request, response);
            
            
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");
            
            PreparedStatement pstmt = connection.prepareStatement("SELECT userLast, userFirst, userMI, userUsername, userPassword, userEmail, userContactNumber, userBillingAdd, userDeliveryAdd FROM secprog.user where userID=1;");
            
            rs = pstmt.executeQuery();
            pstmt.close();
            connection.close();
            
            Lastname = rs.getNString(1);
            Firstname = rs.getNString(2);
            MI = rs.getNString(3);
            Username = rs.getNString(4);
            Password = rs.getNString(5);
            Email = rs.getNString(6);
            Contact = rs.getNString(7);
            BillingAddress = rs.getNString(8);
            DeliveryAddress = rs.getNString(9);
            RequestDispatcher view = request.getRequestDispatcher("actor.jsp");
            view.forward(request,response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Settings.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Settings.class.getName()).log(Level.SEVERE, null, ex);
        }
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
