package Servlets;

import DB.DBAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ralph
 */
@WebServlet(urlPatterns = {"/ProductServlet"})
public class AddProductServlet extends HttpServlet {

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
            out.println("<title>Servlet ProductServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductServlet at " + request.getContextPath() + "</h1>");
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
        
        String prodName = request.getParameter("ProdName");
        String prodType = null;
        String prodDesc = request.getParameter("ProdDesc");
        int prodCount = Integer.parseInt(request.getParameter("ProdCount"));
        float prodPrice = Float.parseFloat(request.getParameter("ProdPrice"));
        
        
        
        DBAccess DB = new DBAccess();
        PreparedStatement pst = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");
            
            pst = connection.prepareStatement("select userID from user order by userID desc");
            rs = pst.executeQuery();
            rs.next();
            userID = rs.getInt(1);
            
            pst = connection.prepareStatement("INSERT INTO `secprog`.`product` (`prodName`, `prodType`, `prodDesc`, `prodCount`, `prodPrice`, `prodRestockDateTime`) VALUES (?, ?, ?, ?, ?, ?);");
            pst.setString(1, prodName);
            pst.setString(2, prodType);
            pst.setString(3, prodDesc);
            pst.setInt(4, prodCount);
            pst.setFloat(5, prodPrice);
           
            
            java.util.Date dt = new java.util.Date();
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String currentTime = sdf.format(dt);
            
            pst.setString(6, currentTime);
            
            pst.executeUpdate();
            
        } catch (Exception ex) {            
            ex.printStackTrace();
            
        }
        
        request.getRequestDispatcher("ProductManager.jsp").forward(request, response);
        
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
