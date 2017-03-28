package Beans;


/**
 *
 * @author ralph
 */
public class Product {
    
    private int prodID;
    private String prodName;
    private String prodType;
    private String prodDesc;
    private String prodAuthor;
    private int prodCount;
    private double prodPrice;
    private String prodRestockDateTime;

    
    public void setProdAuthor(String prodAuthor) {
        this.prodAuthor = prodAuthor;
    }

    public String getProdAuthor() {
        return prodAuthor;
    }
    
    public void setProdID(int prodID) {
        this.prodID = prodID;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public void setProdType(String prodType) {
        this.prodType = prodType;
    }

    public void setProdDesc(String prodDesc) {
        this.prodDesc = prodDesc;
    }

    public void setProdCount(int prodCount) {
        this.prodCount = prodCount;
    }

    public void setProdPrice(double prodPrice) {
        this.prodPrice = prodPrice;
    }

    public void setProdRestockDateTime(String prodRestockDateTime) {
        this.prodRestockDateTime = prodRestockDateTime;
    }

    public int getProdID() {
        return prodID;
    }

    public String getProdName() {
        return prodName;
    }

    public String getProdType() {
        return prodType;
    }

    public String getProdDesc() {
        return prodDesc;
    }

    public int getProdCount() {
        return prodCount;
    }

    public double getProdPrice() {
        return prodPrice;
    }

    public String getProdRestockDateTime() {
        return prodRestockDateTime;
    }
    
    
    
    
}
