package Servlets;


import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Miguel Cruz
 */
@WebServlet(urlPatterns = {"/AddManager"})
public class AddManager extends HttpServlet {

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
            out.println("<title>Servlet AddManager</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddManager at " + request.getContextPath() + "</h1>");
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
        
        String LastName = request.getParameter("LastName");
        String FirstName = request.getParameter("FirstName");
        String MI = request.getParameter("MI");
        String Username = request.getParameter("Username");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");
        String MobileNum = request.getParameter("MobileNum");
        int UserStatus = 0;
        int UserAttemptCount = 0;
        int userID;
        String UserAttemptDate = "0000-00-00 00:00:00";
        String UserEditDateTime = "0000-00-00 00:00:00";
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            byte[] bytes = md.digest(Password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bytes.length; i++) {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            String generatedPassword = sb.toString();

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

            pst = connection.prepareStatement("insert into user (userLast, userFirst, userMI, userUsername, userPassword, userEmail, userStatus, userTypeID, userEditDateTime, userContactNum)"
                    + "values (?,?,?,?,?,?,?,?,?,?)");
            java.util.Date dt = new java.util.Date();
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String currentTime = sdf.format(dt);

            pst.setString(1, LastName);
            pst.setString(2, FirstName);
            pst.setString(3, MI);
            pst.setString(4, Username);
            pst.setString(5, generatedPassword);
            pst.setString(6, Email);
            pst.setInt(7, UserStatus);
            pst.setInt(8, 4);
            pst.setString(9, currentTime);
            pst.setString(10, MobileNum);
            pst.executeUpdate();

            pst = connection.prepareStatement("select userID from user order by userID desc");
            rs = pst.executeQuery();
            rs.next();
            userID = rs.getInt(1);  

            pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
            pst.setInt(1, userID);
            pst.setString(2, "Success");
            pst.setString(3, currentTime);
            pst.setInt(4, 0);
            pst.executeUpdate();
            
            
            
            
        } catch (Exception ex) {
            ex.printStackTrace();

        }
        
        
        request.getRequestDispatcher("Admin.jsp").forward(request, response);
        }
        
        
        
        
        
        
        
        
        
    }

   
   


