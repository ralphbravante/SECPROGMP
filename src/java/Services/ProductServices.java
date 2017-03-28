package Services;

import Beans.Product;
import DB.DBAccess;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ralph
 */
public class ProductServices {

    public static ArrayList<Product> retrieveFeaturedProducts() {
        ArrayList<Product> prodResult = new ArrayList<>();

        PreparedStatement pst = null;
        ResultSet rs = null;
        String Temp;
        DBAccess DB = new DBAccess();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

            pst = connection.prepareStatement("SELECT * FROM product where prodCount > 0 ORDER BY prodRestockDateTime desc limit 4;");
            rs = pst.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setProdID(rs.getInt(1));
                p.setProdName(rs.getString(2));
                p.setProdType(rs.getString(3));
                Temp = rs.getString(4);

                StringBuilder Description = new StringBuilder();
                if (Temp.length() > 25) {
                    for (int i = 0; i <= 25; i++) {
                        if (i >= 23) {
                            Description.append('.');
                        } else {
                            Description.append(Temp.toCharArray()[i]);
                        }

                    }
                    p.setProdDesc(Description.toString());
                } else {
                    p.setProdDesc(rs.getString(4));
                }
                p.setProdAuthor(rs.getString(5));
                p.setProdCount(rs.getInt(6));
                p.setProdPrice(rs.getDouble(7));
                p.setProdRestockDateTime(rs.getString(8));

                prodResult.add(p);
            }

        } catch (Exception ex) {
            ex.printStackTrace();

        }

        return prodResult;

    }

    public static ArrayList<Product> retrieveAllProducts() {
        ArrayList<Product> prodResult = new ArrayList<>();

        PreparedStatement pst = null;
        ResultSet rs = null;
        String Temp;

        DBAccess DB = new DBAccess();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

            pst = connection.prepareStatement("SELECT * FROM product where prodCount > 0 ORDER BY prodRestockDateTime desc ;");
            rs = pst.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setProdID(rs.getInt(1));
                p.setProdName(rs.getString(2));
                p.setProdType(rs.getString(3));
                Temp = rs.getString(4);

                StringBuilder Description = new StringBuilder();
                if (Temp.length() > 25) {
                    for (int i = 0; i <= 25; i++) {
                        if (i >= 23) {
                            Description.append('.');
                        } else {
                            Description.append(Temp.toCharArray()[i]);
                        }

                    }
                    p.setProdDesc(Description.toString());
                } else {
                    p.setProdDesc(rs.getString(4));
                }

                p.setProdAuthor(rs.getString(5));
                p.setProdCount(rs.getInt(6));
                p.setProdPrice(rs.getDouble(7));
                p.setProdRestockDateTime(rs.getString(8));

                prodResult.add(p);
            }

        } catch (Exception ex) {
            ex.printStackTrace();

        }

        return prodResult;

    }
}
