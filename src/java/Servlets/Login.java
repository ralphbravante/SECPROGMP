package Servlets;

import DB.DBAccess;
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

        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String Username = request.getParameter("Username");
            String Password = request.getParameter("Password");
            DBAccess DB;
            DB = new DBAccess();
            PreparedStatement pst = null, pst2 = null;
            ResultSet rs = null, rs2 = null, rs3 = null;
            //int count = 1;
            //int userType = 0;
            //int userAttemptCount = 0;
            boolean valid = false;
            boolean exists = false;
            java.util.Date dt = new java.util.Date();
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String currentTime = sdf.format(dt);

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
            pst = connection.prepareStatement("select userUsername, userID, userTypeID, userStatus, userPassword from user where userUsername = ?;");
            pst.setString(1, Username);
            rs = pst.executeQuery();
            pst2 = connection.prepareStatement("select userUsername, userID, userTypeID, userStatus, userPassword from user where userPassword = ?;");
            pst2.setString(1, generatedPassword);
            rs2 = pst2.executeQuery();
            System.out.println("PASOK NAMAN22");

            if (rs.next() && rs2.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("name", Username);
                System.out.println("SESSION NAME1: " + (String) session.getAttribute("name"));
                //setting session to expiry in 30 mins
                session.setMaxInactiveInterval(60 * 60);
                System.out.println("SESSION NAME2: " + (String) session.getAttribute("name"));
                Cookie userName = new Cookie("Username", Username);
                System.out.println("SESSION NAME3: " + (String) session.getAttribute("name"));
                userName.setMaxAge(60 * 60);
                response.addCookie(userName);
                System.out.println("SESSION NAME4: " + (String) session.getAttribute("name"));
                //*************IMPORTANT**********response.sendRedirect("LoginSuccess.jsp");
                System.out.println("SESSION ID:" + session.getId());
                System.out.println("SESSION NAME5: " + (String) session.getAttribute("name"));
                System.out.println("SESSION CREATED TIME: " + session.getCreationTime());

                int userID = rs.getInt(2);
                int userTypeID = rs.getInt(3);
                int userStatus = rs.getInt(4);
                int aCount = 0;
                exists = true;
                valid = true;

                System.out.println(userID + "USERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERID");

                if (userStatus == 0) {
                    pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
                    pst.setInt(1, userID);
                    pst.setString(2, "Success");
                    pst.setString(3, currentTime);
                    pst.setInt(4, 0);
                    pst.executeUpdate();

                    aCount = rs.getInt(4);

                    RequestDispatcher rd;
                    System.out.print("PASOK1");
                    if (userTypeID == 1) {
                        System.out.print("PASOK2");
                        response.sendRedirect("Customer.jsp");
                    } else if (userTypeID == 2) {
                        response.sendRedirect("Admin.jsp");
                    } else if (userTypeID == 3) {
                        response.sendRedirect("FinancialManager.jsp");
                    } else if (userTypeID >= 4) {
                        response.sendRedirect("ProductManager.jsp");
                    }
                } else if (userStatus == 1) {
                    //Request to UNLOCK page
                    pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
                    pst.setInt(1, userID);
                    pst.setString(2, "Failed/Locked");
                    pst.setString(3, currentTime);
                    pst.setInt(4, aCount);
                    pst.executeUpdate();

                    out.println("<script type=\"text/javascript\">");
                            out.println("alert('Your account is locked, change password via email.');");
                            out.println("location='Login.jsp';");
                            out.println("</script>");

                }
            } else if (!(rs2.next()) && rs.isFirst()) {
                System.out.println("PASOK NAMAN KASI TALGA");
                
                    System.out.println("PASOK NAMAN");

                    int userID = rs.getInt(2);
                    System.out.println(userID + "USERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERIDUSERID");
                    pst = connection.prepareStatement("select userAttemptCount, loginTimeStamp from userlogins where userid=? AND Status like '%Failed%' order by loginTimeStamp desc;");
                    pst.setInt(1, userID);
                    rs3 = pst.executeQuery();
                    int latestAttemptCount = 0;
                    if (rs3.next()) {
                        latestAttemptCount = rs3.getInt(1);

                        if (latestAttemptCount < 5) {
                            latestAttemptCount = latestAttemptCount + 1;

                            pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
                            pst.setInt(1, userID);
                            pst.setString(2, "Failed");
                            pst.setString(3, currentTime);
                            pst.setInt(4, latestAttemptCount);
                            pst.executeUpdate();

                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Username or password incorrect');");
                            out.println("location='Login.jsp';");
                            out.println("</script>");

                        } else if (latestAttemptCount >= 5) {
                            //Insert Captcha here
                            pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
                            pst.setInt(1, userID);
                            pst.setString(2, "Failed/Locked");
                            pst.setString(3, currentTime);
                            pst.setInt(4, latestAttemptCount);
                            pst.executeUpdate();
                            
                            pst2 = connection.prepareStatement("update  user SET `userStatus` = ? WHERE userID = ?; ");
                            pst2.setInt(1, 1);
                            pst2.setInt(2, userID);
                            pst2.executeUpdate();
                           

                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Your account is locked, change password via email.');");
                            out.println("location='Login.jsp';");
                            out.println("</script>");

                        }
                    } else if (!(rs3.next())) {
                        pst = connection.prepareStatement("insert into userlogins (userID, Status, loginTimeStamp, userAttemptCount)values (?,?,?,?)");
                        pst.setInt(1, userID);
                        pst.setString(2, "Failed");
                        pst.setString(3, currentTime);
                        pst.setInt(4, 1);
                        pst.executeUpdate();

                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Username or password incorrect');");
                        out.println("location='Login.jsp';");
                        out.println("</script>");

                    }
                
            } else {
                System.out.println("asldkjashfqwerqiewjgaklsdg;jhasepofaisdjfhliue;krqjwemofiahsfgap'sodfuasdfkj");
                //ACCOUNT DOES NOT EXIST
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Account does not exist!');");
                out.println("location='Login.jsp';");
                out.println("</script>");

            }
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
