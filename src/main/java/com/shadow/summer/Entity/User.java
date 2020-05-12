package com.shadow.summer.Entity;

public class User {

    private String id;
    private String user;
    private String password;
    private char role;
    private String token;

    private String name;
    private String gender;
    private String job;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public char getRole() {
        return role;
    }

    public void setRole(char role) {
        this.role = role;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String toString() {

        return "user=" + user + " "
                + "password=" + password
                + " "
                + "role=" + role
                + " "
                + "token=" + token
                + " "
                + "name=" + name
                + " "
                + "gender=" + gender;
    }
}
