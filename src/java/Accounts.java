/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Beep xD
 */
public class Accounts {
    private int ID;
    private String LastName;
    private String FirstName;
    private String MI;
    private String Username;
    private String Password;
    private String EmailAddress;
    private String BillingAddress;
    private String DeliveryAddress;
    private String MobileNumber;
    private String CreatedDate;
    private String ModifiedDate;

    /**
     * @return the ID
     */
    
    
    public void setMobileNumber(String MobileNumber) {
        this.MobileNumber = MobileNumber;
    }

    public String getMobileNumber() {
        return MobileNumber;
    }
    
    
    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public void setMI(String MI) {
        this.MI = MI;
    }

    public String getLastName() {
        return LastName;
    }

    public String getFirstName() {
        return FirstName;
    }

    public String getMI() {
        return MI;
    }
    
    
    public int getID() {
        return ID;
    }

    /**
     * @return the Name
     */
  

    /**
     * @return the Username
     */
    public String getUsername() {
        return Username;
    }

    /**
     * @return the Password
     */
    public String getPassword() {
        return Password;
    }

    /**
     * @return the EmailAddress
     */
    public String getEmailAddress() {
        return EmailAddress;
    }

    /**
     * @return the BillingAddress
     */
    public String getBillingAddress() {
        return BillingAddress;
    }

    /**
     * @return the DeliveryAddress
     */
    public String getDeliveryAddress() {
        return DeliveryAddress;
    }

    /**
     * @return the CreatedDate
     */
    public String getCreatedDate() {
        return CreatedDate;
    }

    /**
     * @return the ModifiedDate
     */
    public String getModifiedDate() {
        return ModifiedDate;
    }

    /**
     * @param ID the ID to set
     */
    public void setID(int ID) {
        this.ID = ID;
    }

    /**
     * @param Name the Name to set
     */

    /**
     * @param Username the Username to set
     */
    public void setUsername(String Username) {
        this.Username = Username;
    }

    /**
     * @param Password the Password to set
     */
    public void setPassword(String Password) {
        this.Password = Password;
    }

    /**
     * @param EmailAddress the EmailAddress to set
     */
    public void setEmailAddress(String EmailAddress) {
        this.EmailAddress = EmailAddress;
    }

    /**
     * @param BillingAddress the BillingAddress to set
     */
    public void setBillingAddress(String BillingAddress) {
        this.BillingAddress = BillingAddress;
    }

    /**
     * @param DeliveryAddress the DeliveryAddress to set
     */
    public void setDeliveryAddress(String DeliveryAddress) {
        this.DeliveryAddress = DeliveryAddress;
    }

    /**
     * @param CreatedDate the CreatedDate to set
     */
    public void setCreatedDate(String CreatedDate) {
        this.CreatedDate = CreatedDate;
    }

    /**
     * @param ModifiedDate the ModifiedDate to set
     */
    public void setModifiedDate(String ModifiedDate) {
        this.ModifiedDate = ModifiedDate;
    }
}
