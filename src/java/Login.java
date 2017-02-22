
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

        //String un = request.getParameter("username");
        /*
		Cookie usernameCookie = new Cookie("User", un);
		response.addCookie(usernameCookie);
		usernameCookie.setMaxAge(60*60*24);
		if(request.getSession().getAttribute("User") == null){
                    //SESSION SCOPE
                    request.getSession().setAttribute("User", un);
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("User", username);
         */
        PreparedStatement pst = null;
        ResultSet rs = null;
        int count = 1;
        int userType = 0;
        int userAttemptCount = 0;
        Object u = new Object();
        String User = " ";

        java.util.Date dt = new java.util.Date();

        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        String currentTime = sdf.format(dt);

        try {

            u = DB.GetData("select userUsername from user where userUsername = '" + username + "'");
            User = u.toString();

            if (User != null) {

                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

                MessageDigest md = MessageDigest.getInstance("SHA-1");
                byte[] bytes = md.digest(password.getBytes());
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < bytes.length; i++) {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                String generatedPassword = sb.toString();

                pst = connection.prepareStatement("select userID, userTypeID, userAttemptCount from user where userUsername = ? and userPassword = ?");
                pst.setString(1, username);
                pst.setString(2, generatedPassword);
                rs = pst.executeQuery();

                if (rs.next()) {
                    System.out.println(rs.getInt(1) + " AND " + rs.getInt(2) + " AND " + rs.getInt(3));
                    System.out.println(currentTime);
                    userType = rs.getInt(2);
                    userAttemptCount = rs.getInt(3);

                }

                if (userType == 1 && userAttemptCount < 3) {
                    pst = connection.prepareStatement("update user set userAttemptCount = 0,userAttemptDate = ?  where userUsername = ?");
                    pst.setString(1, currentTime);
                    pst.setString(2, username);
                    pst.executeUpdate();
                    
                    RequestDispatcher rd = request.getRequestDispatcher("Customer.jsp");
                    rd.forward(request, response);

                } else if (userType == 2 && userAttemptCount < 3) {

                    RequestDispatcher rd = request.getRequestDispatcher("Manager.jsp");
                    rd.forward(request, response);

                } else if (userType == 3 && userAttemptCount < 3) {

                    RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
                    rd.forward(request, response);
                } else if (userAttemptCount >= 3) { //WILL ADD CAPTCHA NEXT TIME
                    
                    pst = connection.prepareStatement("update user set userAttemptCount = 0 where userUsername = ?");
                    pst.setString(1, username);
                    pst.executeUpdate();

                    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                    rd.include(request, response);

                } else {
                            
                    pst = connection.prepareStatement("update user set userAttemptCount = userAttemptCount + 1 where userUsername = ?");
                    pst.setString(1, username);
                    pst.executeUpdate();

                    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                    rd.include(request, response);
                }

            } else {

                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.include(request, response);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
