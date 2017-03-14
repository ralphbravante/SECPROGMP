package Servlets;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Beep xD
 */
@WebServlet(urlPatterns = {"/Logout"})
public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookieList = request.getCookies();

        for (int i = 0; i < cookieList.length; i++) {

            Cookie c = cookieList[i];

            if ("Username".equals(c.getName())) {

                c.setMaxAge(0);

                response.addCookie(c);

            }

        }
        //eat the cookie

        //kill the session
        request.getSession().invalidate();

        //redirect the user to login.jsp
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
}
