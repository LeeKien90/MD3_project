package ra.model.entity;

import java.util.Date;

public class User {
private int userId;
private String fullName;
private String userName;
private String userPassword;
private String email;
private Boolean permissions;
private Boolean userStatus;

    public User() {
    }

    public User(int userId, String fullName, String userName, String userPassword, String email, Boolean permissions, Boolean userStatus) {
        this.userId = userId;
        this.fullName = fullName;
        this.userName = userName;
        this.userPassword = userPassword;
        this.email = email;
        this.permissions = permissions;
        this.userStatus = userStatus;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getPermissions() {
        return permissions;
    }

    public void setPermissions(Boolean permissions) {
        this.permissions = permissions;
    }

    public Boolean getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Boolean userStatus) {
        this.userStatus = userStatus;
    }
}
