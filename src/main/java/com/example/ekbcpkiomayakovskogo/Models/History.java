package com.example.ekbcpkiomayakovskogo.Models;

import java.time.LocalDateTime;

public class History {
    private int id;
    private String time;
    private String login;
    private String type;

    public History(int id, String time, String login, String type) {
        this.id = id;
        this.time = time;
        this.login = login;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
