
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author ralph
 */
public class AccountServices {
    
    public int getUserID(String x){
		
		int id = 0;
		
		// SELECT * FROM song
		String sql = "SELECT userID FROM user " + " WHERE username = ?";
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			DBAccess DB = new DBAccess();
                        DB.AddData(sql);
			pstmt.setString(1, x);
			rs = pstmt.executeQuery();
			rs.next();
			id = rs.getInt(1);
			
			
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			
			
			try {
			rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
		
		return id;
	}
    
    public static Accounts getAccount (String username){
        
        ArrayList<Accounts> accountResult = new ArrayList<>();
        Accounts a = new Accounts();
      
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");
            
             pstmt = connection.prepareStatement("SELECT userLast, userFirst, userMI, userUsername, userPassword, userEmail, userContactNum, userDeliveryAdd, userBillingAdd, userStatus FROM secprog.user WHERE userUsername = ?;");
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();
            
            while(rs.next()){
                //Accounts a = new Accounts();
                a.setLastName(rs.getString("userLast"));
                a.setFirstName(rs.getString("userFirst"));
                a.setMI(rs.getString("userMI"));
                a.setUsername(rs.getString("userUsername"));
                a.setEmailAddress(rs.getString("userEmail"));
                a.setMobileNumber(rs.getString("userContactNum"));
                a.setBillingAddress(rs.getString("userBillingAdd"));
                a.setDeliveryAddress(rs.getString("userDeliveryAdd"));
                a.setStatus(rs.getInt("userStatus"));
                a.setPassword(rs.getString("userPassword"));
                
                //accountResult.add(a);
            }
            
        } catch (ClassNotFoundException ex) { 
            Logger.getLogger(AccountServices.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AccountServices.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        
       
        return a;
        
    }
    
   // public void EditPatient(Accounts a){
		
		//if(a.getLastName().equals("")){
			
			//System.out.println("IT WORKS!!!");
			
		//}
		//else
			//updateFirstName(a);
		
		/*if(a.getFirstName().equals("")){
			
			System.out.println("IT WORKS!!!");
			
		}
		else
			updateLastName(a);
		
		if(a.getMI().equals("")){
			
			System.out.println("IT WORKS!!!");
			
		}
		else
			updateMiddleInitial(a);
		
		
		
		
		if(a.getEmailAddress().equals(null)){
			
			System.out.println("IT WORKS!!!");
			
		}
		else
				updateEmail(a);
		
		
		
		
		if(a.getPassword().equals("")){
			
			System.out.println("IT WORKS!!!");
			
		}
		else
					updatePassword(a);
		
		
		if(a.getMobileNumber().equals("")){
			System.out.println("IT WORKS!!!");
		}
		else
					updateMobileNumber(a);
		
		if(a.getDeliveryAddress().equals("")){
			System.out.println("IT WORKS!!!");
		}
		else
					updateCity(a);
                
                if(a.getBillingAddress().equals("")){
			System.out.println("IT WORKS!!!");
		}
		else
					updateCity(a);
		
		*/
		
	//}
    

    
}
