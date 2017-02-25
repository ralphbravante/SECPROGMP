
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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 *
 * @author Beep xD
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        out.println("<h1>Error 404: Webpage not found.</h1>");
        request.getRequestDispatcher("Error.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("Username");
        String password = request.getParameter("Password");

        DBAccess DB = new DBAccess();

        PreparedStatement pst = null;
        ResultSet rs = null;
        int count = 1;
        int userType = 0;
        int userAttemptCount = 0;
        boolean valid = false;

        java.util.Date dt = new java.util.Date();
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentTime = sdf.format(dt);

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

            pst = connection.prepareStatement("select userUsername, userID, userTypeID, userStatus from user where userUsername = ?");
            pst.setString(1, username);
            rs = pst.executeQuery();

            if (rs.next()) {
                int userID = rs.getInt(2);
                int userTypeID = rs.getInt(3);
                int userStatus = rs.getInt(4);
                boolean exists = true;
                MessageDigest md = MessageDigest.getInstance("SHA-1");
                byte[] bytes = md.digest(password.getBytes());
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < bytes.length; i++) {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                String generatedPassword = sb.toString();

                pst = connection.prepareStatement("select userID from user where userUsername = ? and userPassword = ?");
                pst.setString(1, username);
                pst.setString(2, generatedPassword);
                rs = pst.executeQuery();
                if (rs.next()) {
                    exists = true;
                    userID = rs.getInt(1);
                    valid = true;
                }

                System.out.println(userID + "USERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERID");

                if (exists && userStatus == 0 && valid) {
                    //System.out.println(rs.getInt(1) + " AND " + rs.getInt(2));
                    //System.out.println(currentTime);
                    //userType = rs.getInt(2);
                    pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
                    pst.setInt(1, userID);
                    pst.setString(2, "Success");
                    pst.setString(3, currentTime);
                    pst.setInt(4, 0);
                    pst.executeUpdate();

                    RequestDispatcher rd;
                    switch (userTypeID) {
                        case 1:
                            rd = request.getRequestDispatcher("Customer.jsp");
                            rd.forward(request, response);
                            break;
                        case 2:
                            rd = request.getRequestDispatcher("Manager.jsp");
                            rd.forward(request, response);
                            break;
                        case 3:
                            rd = request.getRequestDispatcher("Manager.jsp");
                            rd.forward(request, response);
                            break;
                        case 4:
                            rd = request.getRequestDispatcher("Manager.jsp");
                            rd.forward(request, response);
                            break;
                        case 5:
                            rd = request.getRequestDispatcher("Manager.jsp");
                            rd.forward(request, response);
                            break;
                        case 6:
                            rd = request.getRequestDispatcher("Admin.jsp");
                            rd.forward(request, response);
                            break;
                    }
                } else if (exists && userStatus == 1 && valid) {
                    //Request to UNLOCK page
                    pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
                    pst.setInt(1, userID);
                    pst.setString(2, "Locked");
                    pst.setString(3, currentTime);
                    pst.setInt(4, 0);
                    pst.executeUpdate();
                    
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                    
                } else {
                    System.out.println(userID + "USERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERID");
                    pst = connection.prepareStatement("select userAttemptCount, loginTimeStamp from userlogins where userID = ? order by loginTimeStamp desc");
                    pst.setInt(1, userID);
                    rs = pst.executeQuery();
                    rs.next();
                    int latestAttemptCount = rs.getInt(1);
                    
                    latestAttemptCount = latestAttemptCount + 1;
                    
                    pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
                    pst.setInt(1, userID);
                    pst.setString(2, "Failed");
                    pst.setString(3, currentTime);
                    pst.setInt(4, latestAttemptCount);
                    pst.executeUpdate();
                    
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                }
            } else {
                //ACCOUNT DOES NOT EXIST
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }

        } catch (ClassNotFoundException | SQLException | NoSuchAlgorithmException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
