
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


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
