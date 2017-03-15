package Servlets;


import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = {"/AddGenre"})
public class AddGenre extends HttpServlet {

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
            out.println("<title>Servlet AddGenre</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddGenre at " + request.getContextPath() + "</h1>");
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
        
        
        String ProdType = request.getParameter("ProdType");
        String ProdDesc = request.getParameter("ProdDesc");
        String ProdManager = request.getParameter("ProdManager");
        PreparedStatement pst = null;
        ResultSet rs = null;
        int userID = -1;
        System.out.println("This is the username of prod manager " + ProdManager);
        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");
        System.out.println(ProdManager);
        pst = connection.prepareStatement("select userID from user where userUsername = ?");
        pst.setString(1, ProdManager);
        rs = pst.executeQuery();
        if(rs.next()){
             userID = rs.getInt(1);
        }
        
        
        
        pst = connection.prepareStatement("insert into producttype (userID, prodType, prodDesc) values (?,?,?)");
        pst.setInt(1, userID);
        pst.setString(2, ProdType);
        pst.setString(3, ProdDesc);
        pst.executeUpdate();
        
        
        
        
        } catch (Exception ex) {
            ex.printStackTrace();

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
