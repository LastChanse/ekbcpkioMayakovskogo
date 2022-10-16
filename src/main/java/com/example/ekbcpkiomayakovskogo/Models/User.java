package com.example.ekbcpkiomayakovskogo.Models;

public class User {
    private String login;
    private String password;
    private String status;
    private String fio;

    public User() {}

    public User(String login,String password) {
        this.login = login;
        this.password = password;
    }

    public User(String login,String password,String status,String fio, String email) {
        this.login = login;
        this.password = password;
        this.status = status;
        this.fio = fio;
    }

    public String getLogin() {
        return login;
    }
    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }

    public String getFio() {
        return fio;
    }
    public void setFio(String fio) { this.fio = fio; }
}