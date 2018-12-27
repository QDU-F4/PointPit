package entity;
// Generated 08/07/2017 8:14:19 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private Integer userId;
     private UserRole userRole;
     private String username;
     private String pass;
     private Date regDate;
     private String contactNum;
     private Integer roleId;
     private Set orders = new HashSet(0);
     
    
    public Users() {
    }

    public Users(String username,String password,String contactNum){
        this.username = username;
        this.pass = password;
        this.contactNum = contactNum;
        this.userRole.setRoleId(2);
    }
    
   public Users(UserRole userRole,String username,String password,String contactNum){
        this.username = username;
        this.pass = password;
        this.contactNum = contactNum;
    }
    public Users(UserRole userRole, String username, String pass, Date regDate, String contactNum) {
        this.userRole = userRole;
        this.username = username;
        this.pass = pass;
        this.regDate = regDate;
        this.contactNum = contactNum;
    }
    public Users(UserRole userRole, String username, String pass, String userFname, String userLname, Date regDate, String contactNum, Set orders) {
       this.userRole = userRole;
       this.username = username;
       this.pass = pass;
       this.regDate = regDate;
       this.contactNum = contactNum;
       this.orders = orders;
    }
   
    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public UserRole getUserRole() {
        return this.userRole;
    }
    
    public void setUserRole(UserRole userRole) {
        this.userRole = userRole;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPass() {
        return this.pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }
    public Date getRegDate() {
        return this.regDate;
    }
    
    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }
    public String getContactNum() {
        return this.contactNum;
    }
    
    public void setContactNum(String contactNum) {
        this.contactNum = contactNum;
    }
    public Set getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set orders) {
        this.orders = orders;
    }




}


