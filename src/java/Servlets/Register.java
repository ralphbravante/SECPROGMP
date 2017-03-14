package Servlets;


import DB.DBAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Beep xD
 */
@WebServlet(urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String LastName = request.getParameter("LastName");
        String FirstName = request.getParameter("FirstName");
        String MI = request.getParameter("MI");
        String Username = request.getParameter("Username");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");
        String RePassword = request.getParameter("RePassword");
        String MobileNum = request.getParameter("MobileNum");
        String BillAdd = request.getParameter("BillAdd");
        String DelAdd = request.getParameter("DelAdd");
        int UserStatus = 0;
        int UserAttemptCount = 0;
        int userID;
        String UserAttemptDate = "0000-00-00 00:00:00";
        String UserEditDateTime = "0000-00-00 00:00:00";

        PreparedStatement pst = null;
        ResultSet rs = null;

        DBAccess DB = new DBAccess();

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

            pst = connection.prepareStatement("insert into user (userLast, userFirst, userMI, userUsername, userPassword, userEmail, userBillingAdd, userDeliveryAdd, userStatus, userTypeID,userEditDateTime, userContactNum) \n"
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?)");
            java.util.Date dt = new java.util.Date();
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String currentTime = sdf.format(dt);

            pst.setString(1, LastName);
            pst.setString(2, FirstName);
            pst.setString(3, MI);
            pst.setString(4, Username);
            pst.setString(5, generatedPassword);
            pst.setString(6, Email);
            pst.setString(7, BillAdd);
            pst.setString(8, DelAdd);
            pst.setInt(9, UserStatus);
            pst.setInt(10, 1);
            pst.setString(11, currentTime);
            pst.setString(12, MobileNum);
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

        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
}
