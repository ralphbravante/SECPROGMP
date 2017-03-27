package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ralph
 */
@WebServlet(name = "recoverServlet", urlPatterns = {"/recoverServlet"})
public class recoverServlet extends HttpServlet {

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
            out.println("<title>Servlet recoverServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet recoverServlet at " + request.getContextPath() + "</h1>");
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

        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            
            String rEmailAdd = request.getParameter("recoverEmail");
            String rUsername = request.getParameter("recoverUsername");
            String newPass = request.getParameter("newPassword");

            PreparedStatement pst = null;
            ResultSet rs = null;
            int userID = 0;
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

            pst = connection.prepareStatement("Select userID from user WHERE userUsername=? AND userEmail=?;");
            pst.setString(1, rUsername);
            pst.setString(2, rEmailAdd);
            rs = pst.executeQuery();

            if (rs.next()) {
                userID = (int) rs.getInt(1);
                System.out.println("THIS IS THE EFFIN USERID OKAY????? " + userID);
                MessageDigest md = MessageDigest.getInstance("SHA-1");
                byte[] bytes = md.digest(newPass.getBytes());
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < bytes.length; i++) {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                String generatedPassword = sb.toString();

                pst = connection.prepareStatement("UPDATE `secprog`.`user` SET `userPassword`=?, userEditDateTime=? WHERE `userID`=?;");
                java.util.Date dt = new java.util.Date();
                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String currentTime = sdf.format(dt);
                pst.setString(1, generatedPassword);
                pst.setString(2, currentTime);
                pst.setInt(3, rs.getInt(1));
                pst.executeUpdate();
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Your password was changed successfully!');");
                out.println("location='Login.jsp';");
                out.println("</script>");

            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Your password was not changed!');");
                out.println("location='Login.jsp';");
                out.println("</script>");
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(recoverServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(recoverServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(recoverServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

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
