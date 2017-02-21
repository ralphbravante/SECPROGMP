
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
 * @author jason_000
 */
public class DBAccess{

    
    
    
    
   public void AddData(String Query) throws SQLException{
       
      
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");
            
            PreparedStatement pstmt = connection.prepareStatement(Query);
            
            
            pstmt.executeUpdate();
            pstmt.close();
            connection.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();

        }
       
    
    }
   
   
   public Object GetData(String Query) throws SQLException{
       
       ResultSet rs = null;
       
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");
           
           PreparedStatement pstmt = connection.prepareStatement(Query);
           
           rs = pstmt.executeQuery();
           pstmt.close();
           connection.close();
       } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return rs;
   }
   
   
}
