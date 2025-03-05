package com.smartrecruit.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    // User attributes
    private int id;
    private String username;
    private String password; // Store hashed password
    private String email;
    private String role; // CANDIDAT, RECRUTEUR
    private Date dateCreation;
    private boolean active;

    // Constructors
    public User() {
        // Default constructor
        this.dateCreation = new Date();
        this.active = true;
    }

    public User(String username, String email, String role) {
        this();
        this.username = username;
        this.email = email;
        this.role = role;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Date getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(Date dateCreation) {
        this.dateCreation = dateCreation;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    // Validation methods
    public boolean isValidEmail() {
        if (email == null) return false;
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return email.matches(emailRegex);
    }

    public boolean isValidUsername() {
        if (username == null) return false;
        return username.length() >= 3 && username.length() <= 50;
    }

    public boolean isValidRole() {
        return "CANDIDAT".equals(role) || "RECRUTEUR".equals(role);
    }

    // Object overrides
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id &&
                Objects.equals(username, user.username) &&
                Objects.equals(email, user.email);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, username, email);
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", role='" + role + '\'' +
                ", dateCreation=" + dateCreation +
                ", active=" + active +
                '}';
    }

    // Builder pattern for flexible object creation
    public static class UserBuilder {
        private User user;

        public UserBuilder() {
            user = new User();
        }

        public UserBuilder id(int id) {
            user.setId(id);
            return this;
        }

        public UserBuilder username(String username) {
            user.setUsername(username);
            return this;
        }

        public UserBuilder password(String password) {
            user.setPassword(password);
            return this;
        }

        public UserBuilder email(String email) {
            user.setEmail(email);
            return this;
        }

        public UserBuilder role(String role) {
            user.setRole(role);
            return this;
        }

        public UserBuilder active(boolean active) {
            user.setActive(active);
            return this;
        }

        public User build() {
            // Add validation before building
            if (!user.isValidEmail()) {
                throw new IllegalArgumentException("Invalid email");
            }
            if (!user.isValidUsername()) {
                throw new IllegalArgumentException("Invalid username");
            }
            if (!user.isValidRole()) {
                throw new IllegalArgumentException("Invalid role");
            }
            return user;
        }
    }

    // Static builder method
    public static UserBuilder builder() {
        return new UserBuilder();
    }
}